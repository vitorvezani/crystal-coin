require "./block"
require "./transaction"

module CrystalCoin
  class Blockchain
    getter chain
    getter uncommitted_transactions

    def initialize
      @chain = [ Block.first ]
      @uncommitted_transactions = [] of CrystalCoin::Transaction
    end

    def add_transaction(transaction)
      @uncommitted_transactions << transaction
    end
  end
end