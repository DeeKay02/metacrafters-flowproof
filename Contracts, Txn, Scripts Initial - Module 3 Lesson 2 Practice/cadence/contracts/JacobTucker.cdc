pub contract JacobTucker {
  pub let is: String
  pub var myNumber: Int

  init() {
    self.is = "the best"
    self.myNumber = 0
  }

  pub fun updateMyNumber(newNum: Int) {
    self.myNumber = newNum
  }
}