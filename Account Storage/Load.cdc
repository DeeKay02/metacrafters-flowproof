import Stuff from 0x01
transaction() {
  prepare(signer: AuthAccount) {
    let testResource <- signer.load<@Stuff.Test>(from: /storage/MyTestResource)
                          ?? panic("A `@Stuff.Test` resource does not live here.")
    log(testResource.name) // "Jacob"

    destroy testResource
  }

  execute {

  }
}
