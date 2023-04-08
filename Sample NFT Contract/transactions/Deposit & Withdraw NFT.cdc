import CryptoBombs from 0x01

transaction() {
  prepare(signer: AuthAccount) {
    // Get a reference to our `CryptoBombs.Collection`
    let collection = signer.borrow<&CryptoBombs.Collection>(from: /storage/MyCollection)
                      ?? panic("The recipient does not have a Collection.")
    
    // deposits an `NFT` to our Collection
    collection.deposit(token: <- CryptoBombs.createNFT())

    log(collection.getIDs()) // [41, 39, 40]

    let nft <- collection.withdraw(tokenId: 39)

    log(collection.getIDs()) // [41, 40]
    log(nft.id) // 39

    destroy nft
  }
}
