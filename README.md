# crystal_coin

Crystal Coin project to learn crystal programming language and blockchain [original tutorial](https://www.toptal.com/blockchain/crystal-programming-language-tutorial)

## Installation

-Linux Mint 19
- Crystal

## Usage

1. shards
2. crystal run src/server.cr

## Development

localhost:3000
curl -X POST http://0.0.0.0:3000/nodes/register -H "Content-Type: application/json" -d '{"nodes": ["http://0.0.0.0:3001"]}'
curl -X POST http://0.0.0.0:3001/transactions/new -H "Content-Type: application/json" -d '{"from": "eqbal", "to":"spiderman", "amount": 100}'
curl http://0.0.0.0:3001/mine
curl http://0.0.0.0:3000/chain
curl http://0.0.0.0:3000/nodes/resolve
curl http://0.0.0.0:3000/chain

## Contributing

1. Fork it (<https://github.com/your-github-user/crystal_coin/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [vitorvezani](https://github.com/vitorvezani) Vitor Rodrigo Vezani
