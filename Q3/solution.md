Idea is to ensure every time we call flip(bool _guess), we pass in a _guess argument whose value is always equal to that of the side variable. The way to achieve this is to create another contract that first calculates the value of _guess the same way CoinFlip.flip() does it, then calls CoinFlip.flip(bool _guess) with the pre-determined value.

We’ve created CoinFlipper contract and we’ll call its flipCoin function 10 times on Remix.

To verify we've obtained 10 consecutive wins:
(await contract.consecutiveWins()).toString()
"10"

