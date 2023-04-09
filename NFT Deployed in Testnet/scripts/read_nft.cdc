import CryptoBombs from "../contracts/CryptoBombs.cdc"
import NonFungibleToken from "../contracts/NonFungibleToken.cdc"

pub fun main(acc: Address, _id: UInt64): &NonFungibleToken.NFT {
    let pubRef = getAccount(acc).getCapability(/public/MyCollection)
                    .borrow<&CryptoBombs.Collection{NonFungibleToken.CollectionPublic}>()
                    ?? panic("Collection doesn't exist here")

    return pubRef.borrowNFT(id: _id)
}