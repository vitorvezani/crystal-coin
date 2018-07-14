# src/server.cr

require "kemal"
require "./crystal_coin/*"
require "uuid"

# Generate a globally unique address for this node
node_identifier = UUID.random.to_s

# Create our Blockchain
blockchain = CrystalCoin::Blockchain.new

get "/chain" do
  "Send the blockchain as json objects"
end

get "/mine" do
  "We'll mine a new Block"
end

get "/pending" do
  { transactions: blockchain.uncommitted_transactions }.to_json
end

post "/transactions/new" do |env|

  transaction = CrystalCoin::Transaction.new(
    from: env.params.json["from"].as(String),
    to:  env.params.json["to"].as(String),
    amount:  env.params.json["amount"].as(Int64)
  )

  blockchain.add_transaction(transaction)

  "Transaction #{transaction} has been added to the node"
end

Kemal.run