import CryptoBombs from 0x01

transaction() {
  prepare(signer: AuthAccount) {
    signer.save(<- CryptoBombs.createCollection(), to: /storage/MyCollection)
    
    signer.link<&CryptoBombs.Collection{CryptoBombs.CollectionPub}>(/public/MyCollection, target: /storage/MyCollection)
  }
}
