import Blockchains from 0x02

transaction(name: String, consensus: String, symbol: String, founder:String) {
    prepare(acct: AuthAccount) {}

    execute {
        Blockchains.addBlockchain(name: name, consensus: consensus, symbol: symbol, founder: founder)
        log("Added!")
    }
}