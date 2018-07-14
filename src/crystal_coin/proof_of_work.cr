require "openssl"

module CrystalCoin
  module ProofOfWork

    private def proof_of_work(difficulty = "00")
      nonce = 0
      loop do
        hash = calc_hash_with_nonce(nonce)
        if hash[0..1] == difficulty
          return nonce
        else
          nonce += 1
        end
      end
    end

    private def calc_hash_with_nonce(nonce = 0)
      sha = OpenSSL::Digest.new("SHA256")
      sha.update("#{nonce}#{@index}#{@timestamp}#{@data}#{@previous_hash}")
      sha.hexdigest
    end
  end
end

x = 5
y = 0

while hash((x*y).to_s)[0..1] != "00"
  y += 1
end

puts "The solution is y = #{y}"
puts "Hash(#{x}*#{y}) = #{hash((x*y).to_s)}"