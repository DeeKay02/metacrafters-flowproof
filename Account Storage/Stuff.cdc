pub contract Stuff {

  pub resource Test {
    pub var name: String
    init() {
      self.name = "Jacob"
    }
  }

  pub fun createTest(): @Test {
    return <- create Test()
  }

}
