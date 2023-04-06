import Stuff from 0x01
transaction() {
  prepare(signer: AuthAccount) {
    // NOTICE: This gets a `&Stuff.Test`, not a `@Stuff.Test`
    let testResource = signer.borrow<&Stuff.Test>(from: /storage/MyTestResource)
                          ?? panic("A `@Stuff.Test` resource does not live here.")
    log(testResource.name) // "Jacob"
  }

  execute {

  }
}
