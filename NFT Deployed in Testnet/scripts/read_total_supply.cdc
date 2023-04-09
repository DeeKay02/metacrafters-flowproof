import CryptoBombs from "../contracts/CryptoBombs.cdc"

pub fun main(): UInt64 {
    return CryptoBombs.totalSupply
}