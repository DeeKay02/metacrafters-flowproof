import Stuff from 0x01
transaction() {
  prepare(signer: AuthAccount) {
    // Links our resource to the public so other people can now access it
    signer.link<&Stuff.Test>(/public/MyTestResource, target: /storage/MyTestResource)
  }

  execute {

  }
}
