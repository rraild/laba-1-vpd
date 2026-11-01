.DEFAULT_GOAL := run-all
.NOTPARALLEL:
.PHONY: all run-all c cpp python js ts java csharp fsharp go rust bash prolog asm clean

all: run-all

run-all: c cpp python js ts java csharp fsharp go rust bash prolog asm

c:
	@echo "===== C ====="
	@gcc -Wall -Wextra -pedantic c/main.c -o c/main
	@./c/main

cpp:
	@echo "===== C++ ====="
	@g++ -Wall -Wextra -pedantic cpp/main.cpp -o cpp/main
	@./cpp/main

python:
	@echo "===== Python ====="
	@python3 python/main.py

js:
	@echo "===== JavaScript ====="
	@node javascript/main.js

ts:
	@echo "===== TypeScript ====="
	@tsc --strict --target ES2017 --outDir typescript/dist typescript/main.ts
	@node typescript/dist/main.js

java:
	@echo "===== Java ====="
	@javac -encoding UTF-8 java/Main.java
	@java -cp java Main

csharp:
	@echo "===== C# ====="
	@dotnet run --project csharp/Lab.csproj --verbosity quiet

fsharp:
	@echo "===== F# ====="
	@dotnet run --project fsharp/Lab.fsproj --verbosity quiet

go:
	@echo "===== Go ====="
	@go run go/main.go

rust:
	@echo "===== Rust ====="
	@rustc rust/main.rs -o rust/main
	@./rust/main

bash:
	@echo "===== Bash ====="
	@bash bash/main.sh

prolog:
	@echo "===== Prolog ====="
	@swipl -q -s prolog/main.pl -g main -t halt

asm:
	@echo "===== Assembler (Linux AArch64) ====="
	@as asm/assembler.s -o asm/assembler.o
	@gcc asm/assembler.o -o asm/assembler
	@./asm/assembler

clean:
	@rm -f -- c/main cpp/main rust/main asm/assembler asm/assembler.o java/*.class
	@rm -rf -- typescript/dist csharp/bin csharp/obj fsharp/bin fsharp/obj python/__pycache__
