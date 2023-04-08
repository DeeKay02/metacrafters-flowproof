import CryptoBombs from 0x01

// `id` is the `id` of the NFT
// `recipient` is the person receiving the NFT
transaction(id: UInt64, recipient: Address) {

  prepare(signer: AuthAccount) {
    // get a reference to the signer's Collection
    let signersCollection = signer.borrow<&CryptoBombs.Collection>(from: /storage/MyCollection)
                            ?? panic("Signer does not have a CryptoBombs Collection")

    // Get a reference to the `recipient`s public Collection
    let recipientsCollection = getAccount(recipient).getCapability(/public/MyCollection)
                                  .borrow<&CryptoBombs.Collection{CryptoBombs.CollectionPub}>
                                  ?? panic("The recipient does not have a CryptoBombs Collection.")
    
    // withdraws the NFT with id == `id` and moves it into the `nft` variable
    let nft <- signersCollection.withdraw(tokenId: id)

    // deposits the NFT into the recipient's Collection
    recipientsCollection.deposit(token: <- nft)
  }

}
