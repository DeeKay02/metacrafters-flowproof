import JacobTucker from 0x03

transaction(myNewNumber: Int) {

  prepare(acct: AuthAccount) {}

  execute {
    JacobTucker.updateMyNumber(newNum: myNewNumber)
  }
}
