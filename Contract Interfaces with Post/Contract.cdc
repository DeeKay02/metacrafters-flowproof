import IHelloWorld from 0x01
pub contract HelloWorld: IHelloWorld {
  pub var greeting: String
  
  pub fun changeGreeting(newGreeting: String) {
    self.greeting = newGreeting
  }

  pub resource Greeting: IHelloWorld.IGreeting {
    pub var favouriteFood: String

    init() {
      self.favouriteFood = "Crisp Dosa with Sambar."
    }
  }

  init() {
    self.greeting = "Hello, Jacob!"
  }
}
