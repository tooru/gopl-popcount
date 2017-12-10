"".BenchmarkPopCount2 t=1 size=200 args=0x8 locals=0x0
    0x0000 00000 (popcount_test.go:56)      TEXT    "".BenchmarkPopCount2(SB), $0-8
    0x0000 00000 (popcount_test.go:56)      NOP
    0x0000 00000 (popcount_test.go:56)      NOP
    0x0000 00000 (popcount_test.go:56)      FUNCDATA        $0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
    0x0000 00000 (popcount_test.go:56)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
    0x0000 00000 (popcount_test.go:58)      MOVQ    "".b+8(FP), AX
    0x0005 00005 (popcount_test.go:59)      LEAQ    popcount.pc(SB), CX ; (1) // HL
    0x000c 00012 (popcount_test.go:57)      MOVQ    $0, DX
    0x000e 00014 (popcount_test.go:57)      MOVQ    DX, BX
    0x0011 00017 (popcount_test.go:58)      MOVQ    184(AX), SI
    0x0018 00024 (popcount_test.go:58)      CMPQ    DX, SI
    0x001b 00027 (popcount_test.go:58)      JGE     $0, 192          ; loop抜ける
    0x0021 00033 (popcount_test.go:58)      INCQ    DX
    0x0024 00036 (popcount_test.go:59)      MOVL    $-17, SI         ; (2) -17 = byte(0xEF) // HL
    0x0029 00041 (popcount_test.go:59)      MOVBQZX SIB, SI
    0x002d 00045 (popcount_test.go:59)      MOVBLZX (CX)(SI*1), SI   ; (1) // HL
    0x0031 00049 (popcount_test.go:59)      MOVL    $-51, DI         ; (2) -51 = byte(0xCD) // HL
    0x0036 00054 (popcount_test.go:59)      MOVBQZX DIB, DI
    0x003a 00058 (popcount_test.go:59)      MOVBLZX (CX)(DI*1), DI   ; (1) // HL
    0x003e 00062 (popcount_test.go:59)      MOVL    $-85, R8         ; (2) -85 = byte(0xAB) // HL
    0x0044 00068 (popcount_test.go:59)      MOVBQZX R8B, R8
    0x0048 00072 (popcount_test.go:59)      MOVBLZX (CX)(R8*1), R8
    0x004d 00077 (popcount_test.go:59)      MOVL    $-112, R9
    0x0053 00083 (popcount_test.go:59)      MOVBQZX R9B, R9
    0x0057 00087 (popcount_test.go:59)      MOVBLZX (CX)(R9*1), R9
    0x005c 00092 (popcount_test.go:59)      MOVL    $120, R10
    0x0062 00098 (popcount_test.go:59)      MOVBQZX R10B, R10
    0x0066 00102 (popcount_test.go:59)      MOVBLZX (CX)(R10*1), R10
    0x006b 00107 (popcount_test.go:59)      MOVL    $86, R11
    0x0071 00113 (popcount_test.go:59)      MOVBQZX R11B, R11
    0x0075 00117 (popcount_test.go:59)      MOVBLZX (CX)(R11*1), R11
    0x007a 00122 (popcount_test.go:59)      MOVL    $52, R12
    0x0080 00128 (popcount_test.go:59)      MOVBQZX R12B, R12
    0x0084 00132 (popcount_test.go:59)      MOVBLZX (CX)(R12*1), R12
    0x0089 00137 (popcount_test.go:59)      MOVL    $18, R13
    0x008f 00143 (popcount_test.go:59)      MOVBQZX R13B, R13
    0x0093 00147 (popcount_test.go:59)      MOVBLZX (CX)(R13*1), R13
    0x0098 00152 (popcount_test.go:59)      ADDL    DI, SI
    0x009a 00154 (popcount_test.go:59)      ADDL    R8, SI
    0x009d 00157 (popcount_test.go:59)      ADDL    R9, SI
    0x00a0 00160 (popcount_test.go:59)      ADDL    R10, SI
    0x00a3 00163 (popcount_test.go:59)      ADDL    R11, SI
    0x00a6 00166 (popcount_test.go:59)      ADDL    R12, SI
    0x00a9 00169 (popcount_test.go:59)      ADDL    R13, SI
    0x00ac 00172 (popcount_test.go:59)      MOVBQZX SIB, BX
    0x00b0 00176 (popcount_test.go:58)      MOVQ    184(AX), SI
    0x00b7 00183 (popcount_test.go:58)      CMPQ    DX, SI
    0x00ba 00186 (popcount_test.go:58)      JLT     $0, 33
    0x00c0 00192 (popcount_test.go:61)      MOVQ    BX, "".benchResult(SB)
    0x00c7 00199 (popcount_test.go:62)      RET
    0x0000 48 8b 44 24 08 48 8d 0d 00 00 00 00 31 d2 48 89  H.D$.H......1.H.
    0x0010 d3 48 8b b0 b8 00 00 00 48 39 f2 0f 8d 9f 00 00  .H......H9......
    0x0020 00 48 ff c2 be ef ff ff ff 40 0f b6 f6 0f b6 34  .H.......@.....4
    0x0030 31 bf cd ff ff ff 40 0f b6 ff 0f b6 3c 39 41 b8  1.....@.....<9A.
    0x0040 ab ff ff ff 45 0f b6 c0 46 0f b6 04 01 41 b9 90  ....E...F....A..
    0x0050 ff ff ff 45 0f b6 c9 46 0f b6 0c 09 41 ba 78 00  ...E...F....A.x.
    0x0060 00 00 45 0f b6 d2 46 0f b6 14 11 41 bb 56 00 00  ..E...F....A.V..
    0x0070 00 45 0f b6 db 46 0f b6 1c 19 41 bc 34 00 00 00  .E...F....A.4...
    0x0080 45 0f b6 e4 46 0f b6 24 21 41 bd 12 00 00 00 45  E...F..$!A.....E
    0x0090 0f b6 ed 46 0f b6 2c 29 01 fe 44 01 c6 44 01 ce  ...F..,)..D..D..
    0x00a0 44 01 d6 44 01 de 44 01 e6 44 01 ee 40 0f b6 de  D..D..D..D..@...
    0x00b0 48 8b b0 b8 00 00 00 48 39 f2 0f 8c 61 ff ff ff  H......H9...a...
    0x00c0 48 89 1d 00 00 00 00 c3                          H.......
    rel 8+4 t=14 github.com/tooru/gopl/ch11/p06popcount.pc+0
    rel 195+4 t=14 "".benchResult+0
