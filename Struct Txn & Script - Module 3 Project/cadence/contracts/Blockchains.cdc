pub contract Blockchains {
  pub var blockchain: {String: Features}

  pub struct Features {
    pub var consensus: String
    pub var symbol: String
    pub var founder: String

    init(_consensus: String, _symbol: String, _founder:String) {
      self.consensus = _consensus
      self.symbol = _symbol
      self.founder = _founder
    }
  }

  pub fun addBlockchain(name: String, consensus: String, symbol: String, founder:String) {
    var chain = Features(_consensus: consensus, _symbol: symbol, _founder: founder)
    self.blockchain[name] = chain
  }

  init() {
    self.blockchain = {}
  }
}