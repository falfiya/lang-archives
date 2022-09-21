archive_node := https://eth-mainnet.alchemyapi.io/v2/$(ALCHEMY_API_KEY)
id := 12624378
export account := 0x6666666666666666666666666666666666666666
port := 666
rpc_url := http://localhost:$(port)
with_rpc := --rpc-url $(rpc_url)
rpc := cast rpc $(with_rpc)
send := cast send $(with_rpc)
receipt := cast receipt $(with_rpc)

contract_data := 0x$(shell evm compile src/hello.asm)

debug:
	forge debug --debug src/Test.sol --sig "with(bytes)" $(contract_data)

fork:
	anvil --fork-url $(archive_node) --port $(port) --chain-id $(id)

deploy:
	$(rpc) anvil_setBalance $(account) $(account)
	$(rpc) anvil_impersonateAccount $(account)
	$(eval rcpt := $(shell $(rpc) eth_sendTransaction $(contract_data)))
	$(receipt) $(rcpt)
