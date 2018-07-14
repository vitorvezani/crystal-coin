require "openssl"
require "./proof_of_work"

module CrystalCoin
	class Block

		property current_hash : String
		
		getter :index, current_hash

		def initialize(index = 0, data = "data", previous_hash = "hash")
      @data = data # the actual data that needs to be stored on the blockchain.
      @index = index # indicates the index of the block ex: 0,1
      @timestamp = Time.now # timestamp in epoch, number of seconds since 1 Jan 1970
			@previous_hash = previous_hash # the hash of the previous block, this is the chain/link between the blocks
			@nouce = nouce # this is the number that is to be mined/found.
      @current_hash = hash_block # The hash value of the current block, this is generated by combining all the above attributes and passing it to a hashing algorithm
    end

    private def hash_block
      hash = OpenSSL::Digest.new("SHA256")
      hash.update("#{@index}#{@timestamp}#{@data}#{@previous_hash}")
      hash.hexdigest
		end
		
		def self.first(data="Genesis Block")
      Block.new(data: data, previous_hash: "0")
		end
		
		def self.next(previous_node, data = "Transaction Data")
			Block.new(
        data: "Transaction data number (#{previous_node.index + 1})",
        index: previous_node.index + 1,
        previous_hash: previous_node.current_hash
      )
		end
		
		def to_string
			"#{@index} - #{@previous_hash} < #{@current_hash}"
		end

	end
end

blockchain = [ CrystalCoin::Block.first ]
previous_block = blockchain[0]
5.times do
  new_block  = CrystalCoin::Block.next(previous_node: previous_block)
  blockchain << new_block
  previous_block = new_block
end


blockchain.each do |block|
	p block.to_string
end