import CryptoBombs from "../contracts/CryptoBombs.cdc"
import NonFungibleToken from "../contracts/NonFungibleToken.cdc"

transaction(acc: Address, _name: String, _favFood: String, _luckyNo: Int) {
  prepare(signer: AuthAccount) {
    let minter = signer.borrow<&CryptoBombs.Minter>(from: /storage/NFTMinter)!

    let pubRef = getAccount(acc).getCapability(/public/MyCollection)
                    .borrow<&CryptoBombs.Collection{NonFungibleToken.CollectionPublic}>()
                    ?? panic("Collection doesn't exist here")

    pubRef.deposit(token: <- minter.createNFT(name: _name, favouriteFood: _favFood, luckyNumber: _luckyNo))
  }

  execute {
    log("NFT Minted")
  }
}
