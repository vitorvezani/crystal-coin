# crystal_coin

Crystal Coin project to learn [Crystal Programming Language](https://crystal-lang.org) and [Blockchain](https://pt.wikipedia.org/wiki/Blockchain) - [Original Post](https://www.toptal.com/blockchain/crystal-programming-language-tutorial)

## Installation

- Linux Mint 19
- Crystal 0.25.1 [b782738ff] (2018-06-27)

## Usage

1. shards
2. crystal run src/server.cr

## Development

`crystal run src/server.cr` on port 3000
`crystal run src/server.cr` on port 3001
`curl -X POST http://0.0.0.0:3000/nodes/register -H "Content-Type: application/json" -d '{"nodes": ["http://0.0.0.0:3001"]}'`
`curl -X POST http://0.0.0.0:3001/transactions/new -H "Content-Type: application/json" -d '{"from": "eqbal", "to":"spiderman", "amount": 100}'`
`curl http://0.0.0.0:3001/mine`
`curl http://0.0.0.0:3000/chain`
`curl http://0.0.0.0:3000/nodes/resolve`
`curl http://0.0.0.0:3000/chain`

## Contributing

1. Fork it (<https://github.com/your-github-user/crystal_coin/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [vitorvezani](https://github.com/vitorvezani) Vitor Rodrigo Vezani
