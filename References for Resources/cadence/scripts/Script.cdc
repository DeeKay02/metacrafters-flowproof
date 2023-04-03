import RefRes from 0x01

pub fun main(): String?  {
 let ref = RefRes.getRef(key: "Cow")
 return ref?.type
}