import CryptoBombs from 0x01

pub fun main(account: Address): [UInt64] {
    let collection = getAccount(account).getCapability(/public/MyCollection)
                        .borrow<&CryptoBombs.Collection{CryptoBombs.CollectionPub}>() 
                        ?? panic("Collection doesn't exist here")
    
    return collection.getIDs()
}
