import Stuff from 0x01
transaction(address: Address) {

  prepare(signer: AuthAccount) {

  }

  execute {
    let publicCapability: Capability<&Stuff.Test{Stuff.ITest}> =
      getAccount(address).getCapability<&Stuff.Test{Stuff.ITest}>(/public/MyTestResource)

    // This works...
    let testResource: &Stuff.Test{Stuff.ITest} = publicCapability.borrow() ?? panic("The capability doesn't exist or you did not specify the right type when you got the capability.")

    // ERROR: "Member of restricted type is not accessible: changeName"
    testResource.changeName(newName: "Sarah")

    // This works because `name` is in `&Stuff.Test{Stuff.ITest}`
    return testResource.name
  }
}
