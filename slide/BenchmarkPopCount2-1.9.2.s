"".BenchmarkPopCount2 STEXT nosplit size=108 args=0x8 locals=0x0
    0x0000 00000 (popcount_test.go:56)  TEXT    "".BenchmarkPopCount2(SB), NOSPLIT, $0-8
    0x0000 00000 (popcount_test.go:56)  FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
    0x0000 00000 (popcount_test.go:56)  FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
    0x0000 00000 (popcount_test.go:56)  MOVQ    "".b+8(SP), AX
    0x0005 00005 (popcount_test.go:56)  MOVL    $0, CX
    0x0007 00007 (popcount_test.go:56)  MOVQ    CX, DX
    0x000a 00010 (popcount_test.go:58)  JMP     88
    0x000c 00012 (popcount_test.go:58)  INCQ    CX
    0x000f 00015 (popcount_test.go:59)  MOVBLZX .../popcount.pc+239(SB), BX ; pc[0xEF] // HL
    0x0016 00022 (popcount_test.go:59)  MOVBLZX .../popcount.pc+205(SB), SI ; pc[0xCD] // HL
    0x001d 00029 (popcount_test.go:59)  ADDL    SI, BX
    0x001f 00031 (popcount_test.go:59)  MOVBLZX .../popcount.pc+171(SB), SI ; pc[0xAB] // HL
    0x0026 00038 (popcount_test.go:59)  ADDL    SI, BX
    0x0028 00040 (popcount_test.go:59)  MOVBLZX .../popcount.pc+144(SB), SI ; pc[0x90] // HL
    0x002f 00047 (popcount_test.go:59)  ADDL    SI, BX
    0x0031 00049 (popcount_test.go:59)  MOVBLZX .../popcount.pc+120(SB), SI ; pc[0x78] // HL
    0x0038 00056 (popcount_test.go:59)  ADDL    SI, BX
    0x003a 00058 (popcount_test.go:59)  MOVBLZX .../popcount.pc+86(SB), SI ; pc[0x56] // HL
    0x0041 00065 (popcount_test.go:59)  ADDL    SI, BX
    0x0043 00067 (popcount_test.go:59)  MOVBLZX .../popcount.pc+52(SB), SI ; pc[0x34] // HL
    0x004a 00074 (popcount_test.go:59)  ADDL    SI, BX
    0x004c 00076 (popcount_test.go:59)  MOVBLZX .../popcount.pc+18(SB), SI ; pc[0x12] // HL
    0x0053 00083 (popcount_test.go:59)  ADDL    SI, BX
    0x0055 00085 (popcount_test.go:59)  MOVBLZX BL, DX
    0x0058 00088 (popcount_test.go:58)  MOVQ    240(AX), BX
    0x005f 00095 (popcount_test.go:58)  CMPQ    CX, BX
    0x0062 00098 (popcount_test.go:58)  JLT     12
    0x0064 00100 (popcount_test.go:61)  MOVQ    DX, "".benchResult(SB)
    0x006b 00107 (popcount_test.go:62)  RET
    0x0000 48 8b 44 24 08 31 c9 48 89 ca eb 4c 48 ff c1 0f  H.D$.1.H...LH...
    0x0010 b6 1d 00 00 00 00 0f b6 35 00 00 00 00 01 f3 0f  ........5.......
    0x0020 b6 35 00 00 00 00 01 f3 0f b6 35 00 00 00 00 01  .5........5.....
    0x0030 f3 0f b6 35 00 00 00 00 01 f3 0f b6 35 00 00 00  ...5........5...
    0x0040 00 01 f3 0f b6 35 00 00 00 00 01 f3 0f b6 35 00  .....5........5.
    0x0050 00 00 00 01 f3 0f b6 d3 48 8b 98 f0 00 00 00 48  ........H......H
    0x0060 39 d9 7c a8 48 89 15 00 00 00 00 c3              9.|.H.......
    rel 18+4 t=15 github.com/tooru/gopl/ch11/p06popcount.pc+239
    rel 25+4 t=15 github.com/tooru/gopl/ch11/p06popcount.pc+205
    rel 34+4 t=15 github.com/tooru/gopl/ch11/p06popcount.pc+171
    rel 43+4 t=15 github.com/tooru/gopl/ch11/p06popcount.pc+144
    rel 52+4 t=15 github.com/tooru/gopl/ch11/p06popcount.pc+120
    rel 61+4 t=15 github.com/tooru/gopl/ch11/p06popcount.pc+86
    rel 70+4 t=15 github.com/tooru/gopl/ch11/p06popcount.pc+52
    rel 79+4 t=15 github.com/tooru/gopl/ch11/p06popcount.pc+18
    rel 103+4 t=15 "".benchResult+0
