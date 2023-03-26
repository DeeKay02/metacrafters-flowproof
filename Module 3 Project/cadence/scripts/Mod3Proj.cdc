import Blockchains from 0x02

pub fun main(chain: String): Blockchains.Features {
    return Blockchains.blockchain[chain]!
}