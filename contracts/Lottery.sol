pragma solidity ^0.4.17;
contract Lottery {
    address public manager;
    address[] public players;

    function Lottery() public{
        manager = msg.sender;
    }

    function enter() public payable{
        require( msg.value > 0.1 ether );
        players.push(msg.sender);
    }

    function random() private view returns(uint){
        return (uint(keccak256(players,now,block.difficulty))%players.length);
    }

    function getPlayers() public view returns(address[]){
        return players;
    }

    function pickWinner() public payable adminPermisions {
        uint winnerIndex = random();
        address winner = players[winnerIndex];
        winner.transfer(this.balance);
    }

    modifier adminPermisions(){
        require(msg.sender == manager);
        _;
    }
}
