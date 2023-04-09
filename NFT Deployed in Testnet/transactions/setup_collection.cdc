import CryptoBombs from "../contracts/CryptoBombs.cdc"
import NonFungibleToken from "../contracts/NonFungibleToken.cdc"

transaction() {
  prepare(signer: AuthAccount) {
    signer.save(<- CryptoBombs.createEmptyCollection(), to: /storage/MyCollection)
    
    signer.link<&CryptoBombs.Collection{NonFungibleToken.CollectionPublic}>(/public/MyCollection, target: /storage/MyCollection)
  }

  execute {
    log("Collection Created!")
  }
}