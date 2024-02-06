
# Mood NFT

Mood NFT 📄 :
✅ Exploring the fascinating world of NFTs (Non-Fungible Tokens)! 🌐✨ Join me on a journey into the digital realm where unique, one-of-a-kind assets are tokenized, providing artists and creators with new opportunities for ownership and monetization.



✅ Diving into the world of NFTs with OpenZeppelin contracts! 🔗🚀 Excited to leverage the power and security of OpenZeppelin's NFT smart contracts for creating and managing unique digital assets on the blockchain.


✅ Here's the Mood NFT contract(utilizes OpenZeppelin Contracts )in which user can create NFTs and can customize some of its properties .


✅ In this contract, the image of the NFT can be changed by the owner by customizing the mood of the NFT by the function called "flipMood()"


✅ Another thing special about this contract is that the data of the NFT is stored on-chain , Like the images(SVGs) are encoded by "Base64" encoding scheme and stored on-chain.Mood NFT 📄 :


✅ Exploring the fascinating world of NFTs (Non-Fungible Tokens)! 🌐✨ Join me on a journey into the digital realm where unique, one-of-a-kind assets are tokenized, providing artists and creators with new opportunities for ownership and monetization.


✅ Diving into the world of NFTs with OpenZeppelin contracts! 🔗🚀 Excited to leverage the power and security of OpenZeppelin's NFT smart contracts for creating and managing unique digital assets on the blockchain.


✅ Here's the Mood NFT contract(utilizes OpenZeppelin Contracts )in which user can create NFTs and can customize some of its properties .


✅ In this contract, the image of the NFT can be changed by the owner by customizing the mood of the NFT by the function called "flipMood()"


✅ Another thing special about this contract is that the data of the NFT is stored on-chain , Like the images(SVGs) are encoded by "Base64" encoding scheme and stored on-chain.


## Deployment

Spin a local Node 

```
  make anvil
```

Deploy 
```
  make deploy
```
Test 
```foundry
  forge test 
```

Coverage of tests 
```foundry
  forge coverage
```

## Scripts

After deploy to a testnet or local net, you can run the scripts.

```
  cast send <RAFFLE_CONTRACT_ADDRESS> "enterRaffle()" --value 0.1ether --private-key <PRIVATE_KEY> --rpc-url $SEPOLIA_RPC_URL
```


## BASE64 

Images are Encoded using base64 by the following commands :

```
  echo "data:image/svg+xml;base64,$(base64 -i ./images/dynamicNft/happy.svg)"
```
Json Object Encoding :

```
echo "data:application/json;base64,$(base64 -i ./images/dynamicNft/happy_image_uri.json)"
```







## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`ETHERSCAN_API_KEY`

`PRIVATE_KEY`

`SEPOLIA_RPC_URL`


## Thank U 

