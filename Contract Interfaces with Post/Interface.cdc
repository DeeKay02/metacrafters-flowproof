pub contract interface IHelloWorld {
  pub var greeting: String
  
  pub fun changeGreeting(newGreeting: String) {
    post {
      self.greeting == newGreeting: "We didn't update the greeting appropiately."
    }
  }

  pub resource interface IGreeting {
    pub var favouriteFood: String
  }

  pub resource Greeting: IGreeting {
    pub var favouriteFood: String
  }
}
