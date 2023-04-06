import Stuff from 0x01
pub fun main(address: Address): String {
  // gets the public capability that is pointing to a `&Stuff.Test` type
  let publicCapability: Capability<&Stuff.Test> =
    getAccount(address).getCapability<&Stuff.Test>(/public/MyTestResource)

  // Borrow the `&Stuff.Test` from the public capability
  let testResource: &Stuff.Test = publicCapability.borrow() 
    ?? panic("The capability doesn't exist or you did not specify the right type when you got the capability.")

  return testResource.name // "Jacob"
}
