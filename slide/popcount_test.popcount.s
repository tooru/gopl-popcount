"".BenchmarkPopCount STEXT nosplit size=25 args=0x8 locals=0x0
        0x0000 00000 (popcount_test.go:48)      TEXT    "".BenchmarkPopCount(SB), NOSPLIT, $0-8
        0x0000 00000 (popcount_test.go:48)      FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
        0x0000 00000 (popcount_test.go:48)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:48)      MOVQ    "".b+8(SP), AX
        0x0005 00005 (popcount_test.go:48)      MOVL    $0, CX      ; i = 0 // HL
        0x0007 00007 (popcount_test.go:49)      JMP     12 // HL
        0x0009 00009 (popcount_test.go:49)      INCQ    CX          ; i++ // HL
        0x000c 00012 (popcount_test.go:49)      MOVQ    240(AX), DX ; b.N // HL
        0x0013 00019 (popcount_test.go:49)      CMPQ    CX, DX      ; i < b.N // HL
        0x0016 00022 (popcount_test.go:49)      JLT     9           ; i < b.N then 9 else 18 // HL
        0x0018 00024 (popcount_test.go:52)      RET
