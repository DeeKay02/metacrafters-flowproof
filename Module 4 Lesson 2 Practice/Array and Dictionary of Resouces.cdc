pub contract ResDictArr {
  pub var ArrOfAnimals: @[Animals]
  pub var DictOfAnimals: @{String: Animals}

  pub resource Animals {
    pub let name: String
    pub let hello: String
    init(name: String) {
      self.hello = "I am a " ; name
      self.name = name
    }
  }

  pub fun addArr(hi: @Animals) {
    self.ArrOfAnimals.append(<- hi)
  }

  pub fun remArr(ind: Int): @Animals {
    return <- self.ArrOfAnimals.remove(at: ind)
  }

  pub fun addDict(animal: @Animals) {
    let key = animal.name
    self.DictOfAnimals[key] <-! animal
  }

  pub fun remDict(key: String): @Animals {
    let animal <- self.DictOfAnimals.remove(key: key)!
    return <- animal
  }

  init(){
    self.ArrOfAnimals <- []
    self.DictOfAnimals <- {}
  }
}