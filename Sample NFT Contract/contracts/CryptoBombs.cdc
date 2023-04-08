pub contract CryptoBombs {
    pub var totSupply: UInt64

    pub resource NFT {
        pub let id: UInt64

        init() {
            self.id = self.uuid
        }
    }

    pub resource interface CollectionPub {
        pub var ownedNFTs: @{UInt64 : NFT}
        pub fun deposit(token: @NFT)
        pub fun getIDs(): [UInt64]
    }

    pub resource Collection: CollectionPub {
        pub var ownedNFTs: @{UInt64 : NFT}

        pub fun deposit(token: @NFT) {
            self.ownedNFTs[token.id] <-! token
        }

        pub fun withdraw(tokenId: UInt64): @NFT {
            let nft <- self.ownedNFTs.remove(key: tokenId) ?? panic("This NFT doesn't exist")
            return <- nft
        }

        pub fun getIDs(): [UInt64] {
            return self.ownedNFTs.keys
        }

        destroy() {
            destroy self.ownedNFTs
        }

        init() {
            self.ownedNFTs <- {}
        }
    }

    pub fun createCollection(): @Collection {
        return <- create Collection()
    }

    pub resource Minter {
        pub fun createNFT(): @NFT {
            return <- create NFT()
        }
    }
    
    init() {
        self.totSupply = 0
    }

}
