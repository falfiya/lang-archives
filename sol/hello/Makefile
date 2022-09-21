bin/hello.easm: bin/hello.bin
	evm disasm $< > $@

bin/hello.bin: hello.sol
	solc $< --optimize --bin -o bin --overwrite
