# -tla-playground

Nothing interesting here, this is just me playing around with some trivial model to familiarise a bit more with the tooling to run TLC on a TLA+ spec. 

Todo
1. github actions? 

## How to run the examples?

The repo provides a simple `shell.nix` file.
Assuming [nix](https://nixos.org/) is available on the machine, in a shell type 
```
nix-shell
```
and then for example
```
java -cp $TLA_CLASSPATH tlc2.TLC  ConcurrentCounter.tla
```
which should intentionally fail.
