pub fun main(): UInt64 {
    let people = ["Dad", "Mom", "Uncle"]
    log(people)

    let social: {String: UInt64} = {"Facebook": 5, "Instagram": 2, "Twitter": 3, "YouTube": 1, "Reddit": 0, "LinkedIn": 4}
    return social["YouTube"]!
}
