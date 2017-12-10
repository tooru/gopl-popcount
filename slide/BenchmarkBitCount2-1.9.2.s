"".BenchmarkBitCount2 STEXT nosplit size=40 args=0x8 locals=0x0
    0x0000 00000 (popcount_test.go:70)      TEXT    "".BenchmarkBitCount2(SB), NOSPLIT, $0-8
    0x0000 00000 (popcount_test.go:70)      FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
    0x0000 00000 (popcount_test.go:70)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
    0x0000 00000 (popcount_test.go:70)      MOVQ    "".b+8(SP), AX
    0x0005 00005 (popcount_test.go:70)      MOVL    $0, CX
    0x0007 00007 (popcount_test.go:70)      MOVQ    CX, DX
    0x000a 00010 (popcount_test.go:72)      JMP     20
    0x000c 00012 (popcount_test.go:72)      INCQ    CX
    0x000f 00015 (popcount_test.go:72)      MOVL    $32, DX ; 32は0x1234567890ABCDEFのビット1の数 // HL
    0x0014 00020 (popcount_test.go:72)      MOVQ    240(AX), BX
    0x001b 00027 (popcount_test.go:72)      CMPQ    CX, BX
    0x001e 00030 (popcount_test.go:72)      JLT     12
    0x0020 00032 (popcount_test.go:75)      MOVQ    DX, "".benchResult(SB)
    0x0027 00039 (popcount_test.go:76)      RET
    0x0000 48 8b 44 24 08 31 c9 48 89 ca eb 08 48 ff c1 ba  H.D$.1.H....H...
    0x0010 20 00 00 00 48 8b 98 f0 00 00 00 48 39 d9 7c ec   ...H......H9.|.
    0x0020 48 89 15 00 00 00 00 c3                          H.......
    rel 35+4 t=15 "".benchResult+0
