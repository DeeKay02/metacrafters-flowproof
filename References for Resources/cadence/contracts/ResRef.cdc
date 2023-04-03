pub contract RefRes {
  pub var DictOfAnimals: @{String: Animals}

  pub resource Animals {
    pub let type: String
    init(_type: String) {
      self.type = _type
    }
  }

  pub fun getRef(key: String): &Animals? {
    return &self.DictOfAnimals[key] as &Animals?
  }

  init(){
    self.DictOfAnimals <- {
    "Lion": <- create Animals(_type: "Wild Animal"),
    "Cow": <- create Animals(_type: "Domestic Animal")
    }
  }
}