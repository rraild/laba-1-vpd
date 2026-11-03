# Лабораторная работа № 1

Дмитриев Владимир Викторович, М3О-104БВ-26, № 8.
Окружение: Raspberry, Ubuntu 26.04, ARM64. Исходники в UTF-8.
ID: `М3О-104БВ-26/08`, контроль: `304 × 8 = 2432`.

Подключение: `ssh raspberry`. Затем в терминале Raspberry:

```bash
cd ~/projects/vuz/vpd/laba-1
```

Все языки по очереди: `make run-all` или `make`.
Отдельно: `make c`, `make cpp`, `make python`, `make js`, `make ts`, `make java`,
`make csharp`, `make fsharp`, `make go`, `make rust`, `make bash`, `make prolog`, `make asm`.
Удалить результаты сборки: `make clean`. Ниже — команды ручного запуска.

```bash
# C — c/main.c
gcc c/main.c -o c/main
./c/main

# C++ — cpp/main.cpp
g++ cpp/main.cpp -o cpp/main
./cpp/main

# Python — python/main.py
python3 python/main.py

# JavaScript — javascript/main.js
node javascript/main.js

# TypeScript — typescript/main.ts
tsc --target ES2017 --outDir typescript/dist typescript/main.ts
node typescript/dist/main.js

# Java — java/Main.java
javac -encoding UTF-8 java/Main.java
java -cp java Main
ls java/Main.class
javap -c -classpath java Main

# C# — csharp/Program.cs
dotnet run --project csharp/Lab.csproj

# F# — fsharp/Program.fs
dotnet run --project fsharp/Lab.fsproj

# Go — go/main.go
go run go/main.go

# Rust — rust/main.rs
rustc rust/main.rs -o rust/main
./rust/main

# Bash — bash/main.sh
bash bash/main.sh

# Prolog — prolog/main.pl
swipl -s prolog/main.pl -g main -t halt

# Assembler — asm/assembler.s (Linux AArch64, GNU as + GCC)
as asm/assembler.s -o asm/assembler.o
gcc asm/assembler.o -o asm/assembler
./asm/assembler
```
