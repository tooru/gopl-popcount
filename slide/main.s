"".init.0 STEXT nosplit size=94 args=0x0 locals=0x8
        0x0000 00000 (main.go:18)       TEXT    "".init.0(SB), NOSPLIT, $8-0
        0x0000 00000 (main.go:18)       SUBQ    $8, SP
        0x0004 00004 (main.go:18)       MOVQ    BP, (SP)
        0x0008 00008 (main.go:18)       LEAQ    (SP), BP
        0x000c 00012 (main.go:18)       FUNCDATA        $0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x000c 00012 (main.go:18)       FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x000c 00012 (main.go:18)       MOVL    $0, AX
        0x000e 00014 (main.go:19)       JMP     43
        0x0010 00016 (main.go:19)       LEAQ    "".pc(SB), DX
        0x0017 00023 (main.go:20)       MOVBLZX (DX)(AX*1), BX
        0x001b 00027 (main.go:20)       MOVQ    CX, SI
        0x001e 00030 (main.go:20)       ANDQ    $1, CX
        0x0022 00034 (main.go:20)       ADDL    BX, CX
        0x0024 00036 (main.go:20)       MOVB    CL, (DX)(SI*1)
        0x0027 00039 (main.go:19)       LEAQ    1(SI), AX
        0x002b 00043 (main.go:19)       CMPQ    AX, $256
        0x0031 00049 (main.go:19)       JGE     78
        0x0033 00051 (main.go:19)       MOVQ    AX, CX
        0x0036 00054 (main.go:20)       SARQ    $63, AX
        0x003a 00058 (main.go:20)       SHRQ    $63, AX
        0x003e 00062 (main.go:20)       ADDQ    CX, AX
        0x0041 00065 (main.go:20)       SARQ    $1, AX
        0x0044 00068 (main.go:20)       CMPQ    AX, $256
        0x004a 00074 (main.go:20)       JCS     16
        0x004c 00076 (main.go:20)       JMP     87
        0x004e 00078 (main.go:22)       MOVQ    (SP), BP
        0x0052 00082 (main.go:22)       ADDQ    $8, SP
        0x0056 00086 (main.go:22)       RET
        0x0057 00087 (main.go:20)       PCDATA  $0, $0
        0x0057 00087 (main.go:20)       CALL    runtime.panicindex(SB)
        0x005c 00092 (main.go:20)       UNDEF
        0x0000 48 83 ec 08 48 89 2c 24 48 8d 2c 24 31 c0 eb 1b  H...H.,$H.,$1...
        0x0010 48 8d 15 00 00 00 00 0f b6 1c 02 48 89 ce 48 83  H..........H..H.
        0x0020 e1 01 01 d9 88 0c 32 48 8d 46 01 48 3d 00 01 00  ......2H.F.H=...
        0x0030 00 7d 1b 48 89 c1 48 c1 f8 3f 48 c1 e8 3f 48 01  .}.H..H..?H..?H.
        0x0040 c8 48 d1 f8 48 3d 00 01 00 00 72 c4 eb 09 48 8b  .H..H=....r...H.
        0x0050 2c 24 48 83 c4 08 c3 e8 00 00 00 00 0f 0b        ,$H...........
        rel 19+4 t=15 "".pc+0
        rel 88+4 t=8 runtime.panicindex+0
"".popCount STEXT nosplit size=143 args=0x10 locals=0x0
        0x0000 00000 (main.go:25)       TEXT    "".popCount(SB), NOSPLIT, $0-16
        0x0000 00000 (main.go:25)       FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (main.go:25)       FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0X0000 00000 (main.go:25)       MOVQ    "".x+8(SP), AX ; AX <- x
        0x0005 00005 (main.go:26)       MOVBLZX AL, CX         ; CX <- byte(x)
        0x0008 00008 (main.go:26)       LEAQ    "".pc(SB), DX  ; DX <- load address of pc
        0x000f 00015 (main.go:26)       MOVBLZX (CX)(DX*1), CX ; CX <- DX[CX] //pc[x>>(0*8)]
        0x0013 00019 (main.go:26)       MOVQ    AX, BX         ; BX <- AX
        0x0016 00022 (main.go:27)       SHRQ    $8, AX         ; AX <- AX >> 8
        0x001a 00026 (main.go:27)       MOVBLZX AL, AX         ; AX <- byte(AX)
        0x001d 00029 (main.go:27)       MOVBLZX (AX)(DX*1), AX ; AX <- DX[AX] //pc[x>>(1*8)]
        0x0021 00033 (main.go:27)       MOVQ    BX, SI
        0x0024 00036 (main.go:28)       SHRQ    $16, BX
        0x0028 00040 (main.go:28)       MOVBLZX BL, BX
        0x002b 00043 (main.go:28)       MOVBLZX (BX)(DX*1), BX
        0x002f 00047 (main.go:28)       MOVQ    SI, DI
        0x0032 00050 (main.go:29)       SHRQ    $24, SI
        0x0036 00054 (main.go:29)       MOVBLZX SIB, SI
        0x003a 00058 (main.go:29)       MOVBLZX (SI)(DX*1), SI
        0x003e 00062 (main.go:29)       MOVQ    DI, R8
        0x0041 00065 (main.go:30)       SHRQ    $32, DI
        0x0045 00069 (main.go:30)       MOVBLZX DIB, DI
        0x0049 00073 (main.go:30)       MOVBLZX (DI)(DX*1), DI
        0x004d 00077 (main.go:30)       MOVQ    R8, R9
        0x0050 00080 (main.go:31)       SHRQ    $40, R8
        0x0054 00084 (main.go:31)       MOVBLZX R8B, R8
        0x0058 00088 (main.go:31)       MOVBLZX (R8)(DX*1), R8
        0x005d 00093 (main.go:31)       MOVQ    R9, R10
        0x0060 00096 (main.go:32)       SHRQ    $48, R9
        0x0064 00100 (main.go:32)       MOVBLZX R9B, R9
        0x0068 00104 (main.go:32)       MOVBLZX (R9)(DX*1), R9
        0x006d 00109 (main.go:33)       SHRQ    $56, R10
        0x0071 00113 (main.go:33)       MOVBLZX (R10)(DX*1), DX
        0x0076 00118 (main.go:26)       ADDL    CX, AX          ; AX += CX
        0x0078 00120 (main.go:27)       ADDL    BX, AX          ; AX += BX
        0x007a 00122 (main.go:28)       ADDL    SI, AX          ; ...
        0x007c 00124 (main.go:29)       ADDL    DI, AX
        0x007e 00126 (main.go:30)       ADDL    R8, AX
        0x0081 00129 (main.go:31)       ADDL    R9, AX
        0x0084 00132 (main.go:32)       ADDL    DX, AX          ; 全部足す
        0x0086 00134 (main.go:26)       MOVBLZX AL, AX
        0x0089 00137 (main.go:26)       MOVQ    AX, "".~r1+16(SP)
        0x008e 00142 (main.go:26)       RET
        0x0000 48 8b 44 24 08 0f b6 c8 48 8d 15 00 00 00 00 0f  H.D$....H.......
        0x0010 b6 0c 11 48 89 c3 48 c1 e8 08 0f b6 c0 0f b6 04  ...H..H.........
        0x0020 10 48 89 de 48 c1 eb 10 0f b6 db 0f b6 1c 13 48  .H..H..........H
        0x0030 89 f7 48 c1 ee 18 40 0f b6 f6 0f b6 34 16 49 89  ..H...@.....4.I.
        0x0040 f8 48 c1 ef 20 40 0f b6 ff 0f b6 3c 17 4d 89 c1  .H.. @.....<.M..
        0x0050 49 c1 e8 28 45 0f b6 c0 45 0f b6 04 10 4d 89 ca  I..(E...E....M..
        0x0060 49 c1 e9 30 45 0f b6 c9 45 0f b6 0c 11 49 c1 ea  I..0E...E....I..
        0x0070 38 41 0f b6 14 12 01 c8 01 d8 01 f0 01 f8 44 01  8A............D.
        0x0080 c0 44 01 c8 01 d0 0f b6 c0 48 89 44 24 10 c3     .D.......H.D$..
        rel 11+4 t=15 "".pc+0
"".bitCount STEXT nosplit size=123 args=0x10 locals=0x0
        0x0000 00000 (main.go:36)       TEXT    "".bitCount(SB), NOSPLIT, $0-16
        0x0000 00000 (main.go:36)       FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (main.go:36)       FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (main.go:36)       MOVQ    "".x+8(SP), AX
        0x0005 00005 (main.go:36)       MOVQ    AX, CX
        0x0008 00008 (main.go:38)       SHRQ    $1, AX
        0x000b 00011 (main.go:38)       MOVQ    $6148914691236517205, DX
        0x0015 00021 (main.go:38)       ANDQ    DX, AX
        0x0018 00024 (main.go:38)       SUBQ    AX, CX
        0x001b 00027 (main.go:38)       MOVQ    $3689348814741910323, AX
        0x0025 00037 (main.go:39)       ANDQ    CX, AX
        0x0028 00040 (main.go:39)       SHRQ    $2, CX
        0x002c 00044 (main.go:39)       MOVQ    $3689348814741910323, DX
        0x0036 00054 (main.go:39)       ANDQ    CX, DX
        0x0039 00057 (main.go:39)       ADDQ    DX, AX
        0x003c 00060 (main.go:39)       MOVQ    AX, CX
        0x003f 00063 (main.go:40)       SHRQ    $4, AX
        0x0043 00067 (main.go:40)       ADDQ    CX, AX
        0x0046 00070 (main.go:40)       MOVQ    $1085102592571150095, CX
        0x0050 00080 (main.go:40)       ANDQ    AX, CX
        0x0053 00083 (main.go:40)       MOVQ    CX, AX
        0x0056 00086 (main.go:41)       SHRQ    $8, CX
        0x005a 00090 (main.go:41)       ADDQ    CX, AX
        0x005d 00093 (main.go:41)       MOVQ    AX, CX
        0x0060 00096 (main.go:42)       SHRQ    $16, AX
        0x0064 00100 (main.go:42)       ADDQ    CX, AX
        0x0067 00103 (main.go:42)       MOVQ    AX, CX
        0x006a 00106 (main.go:43)       SHRQ    $32, AX
        0x006e 00110 (main.go:43)       ADDQ    CX, AX
        0x0071 00113 (main.go:44)       ANDQ    $127, AX
        0x0075 00117 (main.go:44)       MOVQ    AX, "".~r1+16(SP)
        0x007a 00122 (main.go:44)       RET
        0x0000 48 8b 44 24 08 48 89 c1 48 d1 e8 48 ba 55 55 55  H.D$.H..H..H.UUU
        0x0010 55 55 55 55 55 48 21 d0 48 29 c1 48 b8 33 33 33  UUUUUH!.H).H.333
        0x0020 33 33 33 33 33 48 21 c8 48 c1 e9 02 48 ba 33 33  33333H!.H...H.33
        0x0030 33 33 33 33 33 33 48 21 ca 48 01 d0 48 89 c1 48  333333H!.H..H..H
        0x0040 c1 e8 04 48 01 c8 48 b9 0f 0f 0f 0f 0f 0f 0f 0f  ...H..H.........
        0x0050 48 21 c1 48 89 c8 48 c1 e9 08 48 01 c8 48 89 c1  H!.H..H...H..H..
        0x0060 48 c1 e8 10 48 01 c8 48 89 c1 48 c1 e8 20 48 01  H...H..H..H.. H.
        0x0070 c8 48 83 e0 7f 48 89 44 24 10 c3                 .H...H.D$..
"".popCountByClearing STEXT nosplit size=30 args=0x10 locals=0x0
        0x0000 00000 (main.go:47)       TEXT    "".popCountByClearing(SB), NOSPLIT, $0-16
        0x0000 00000 (main.go:47)       FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (main.go:47)       FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (main.go:47)       MOVQ    "".x+8(SP), AX
        0x0005 00005 (main.go:47)       MOVL    $0, CX
        0x0007 00007 (main.go:49)       JMP     19
        0x0009 00009 (main.go:50)       LEAQ    -1(AX), DX
        0x000d 00013 (main.go:50)       ANDQ    DX, AX
        0x0010 00016 (main.go:53)       INCQ    CX
        0x0013 00019 (main.go:49)       TESTQ   AX, AX
        0x0016 00022 (main.go:49)       JNE     9
        0x0018 00024 (main.go:55)       MOVQ    CX, "".~r1+16(SP)
        0x001d 00029 (main.go:55)       RET
        0x0000 48 8b 44 24 08 31 c9 eb 0a 48 8d 50 ff 48 21 d0  H.D$.1...H.P.H!.
        0x0010 48 ff c1 48 85 c0 75 f1 48 89 4c 24 10 c3        H..H..u.H.L$..
"".popCountByShifting STEXT nosplit size=54 args=0x10 locals=0x0
        0x0000 00000 (main.go:58)       TEXT    "".popCountByShifting(SB), NOSPLIT, $0-16
        0x0000 00000 (main.go:58)       FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (main.go:58)       FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (main.go:58)       MOVQ    "".x+8(SP), AX
        0x0005 00005 (main.go:58)       MOVL    $0, CX
        0x0007 00007 (main.go:58)       MOVL    $0, DX
        0x0009 00009 (main.go:60)       JMP     14
        0x000b 00011 (main.go:60)       INCQ    CX
        0x000e 00014 (main.go:60)       CMPQ    CX, $64
        0x0012 00018 (main.go:60)       JCC     48
        0x0014 00020 (main.go:60)       MOVL    $1, BX
        0x0019 00025 (main.go:61)       SHLQ    CX, BX
        0x001c 00028 (main.go:60)       CMPQ    CX, $64
        0x0020 00032 (main.go:61)       SBBQ    SI, SI
        0x0023 00035 (main.go:61)       ANDQ    BX, SI
        0x0026 00038 (main.go:61)       TESTQ   AX, SI
        0x0029 00041 (main.go:61)       JEQ     11
        0x002b 00043 (main.go:62)       INCQ    DX
        0x002e 00046 (main.go:61)       JMP     11
        0x0030 00048 (main.go:65)       MOVQ    DX, "".~r1+16(SP)
        0x0035 00053 (main.go:65)       RET
        0x0000 48 8b 44 24 08 31 c9 31 d2 eb 03 48 ff c1 48 83  H.D$.1.1...H..H.
        0x0010 f9 40 73 1c bb 01 00 00 00 48 d3 e3 48 83 f9 40  .@s......H..H..@
        0x0020 48 19 f6 48 21 de 48 85 c6 74 e0 48 ff c2 eb db  H..H!.H..t.H....
        0x0030 48 89 54 24 10 c3                                H.T$..
"".emtpy STEXT nosplit size=10 args=0x10 locals=0x0
        0x0000 00000 (main.go:68)       TEXT    "".emtpy(SB), NOSPLIT, $0-16
        0x0000 00000 (main.go:68)       FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (main.go:68)       FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (main.go:69)       MOVQ    $0, "".~r1+16(SP)
        0x0009 00009 (main.go:69)       RET
        0x0000 48 c7 44 24 10 00 00 00 00 c3                    H.D$......
"".main STEXT size=291 args=0x0 locals=0x78
        0x0000 00000 (main.go:74)       TEXT    "".main(SB), $120-0
        0x0000 00000 (main.go:74)       MOVQ    (TLS), CX
        0x0009 00009 (main.go:74)       CMPQ    SP, 16(CX)
        0x000d 00013 (main.go:74)       JLS     281
        0x0013 00019 (main.go:74)       SUBQ    $120, SP
        0x0017 00023 (main.go:74)       MOVQ    BP, 112(SP)
        0x001c 00028 (main.go:74)       LEAQ    112(SP), BP
        0x0021 00033 (main.go:74)       FUNCDATA        $0, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
        0x0021 00033 (main.go:74)       FUNCDATA        $1, gclocals·3a5f6b21d2b25517271e2f12e2835dc4(SB)
        0x0021 00033 (main.go:75)       PCDATA  $0, $0
        0x0021 00033 (main.go:75)       CALL    time.Now(SB)    ; start := time.Now()
        0x0026 00038 (main.go:75)       MOVQ    16(SP), AX
        0x002b 00043 (main.go:75)       MOVQ    8(SP), CX
        0x0030 00048 (main.go:75)       MOVQ    (SP), DX
        0x0034 00052 (main.go:75)       MOVL    $0, BX          ; i = 0 // HL
        0x0036 00054 (main.go:76)       JMP     59 // HL
        0x0038 00056 (main.go:76)       INCQ    BX              ; i++ // HL
        0x003b 00059 (main.go:76)       CMPQ    BX, $2000000000 ; i < 200000000 // HL
        0x0042 00066 (main.go:76)       JLT     56         ; 200000000未満なら56へ、ループこれだけ // HL
        0x0044 00068 (main.go:76)       MOVQ    AX, "".start.loc+88(SP)
        0x0049 00073 (main.go:76)       MOVQ    CX, "".start.ext+72(SP)
        0x004e 00078 (main.go:76)       MOVQ    DX, "".start.wall+64(SP)
        0x0053 00083 (main.go:79)       PCDATA  $0, $1
        0x0053 00083 (main.go:79)       CALL    time.Now(SB)    ; end := time.Now()
        0x0058 00088 (main.go:79)       MOVQ    "".start.wall+64(SP), AX
        0x005d 00093 (main.go:80)       MOVQ    AX, 24(SP)
        0x0062 00098 (main.go:80)       MOVQ    "".start.ext+72(SP), AX
        0x0067 00103 (main.go:80)       MOVQ    AX, 32(SP)
        0x006c 00108 (main.go:80)       MOVQ    "".start.loc+88(SP), AX
        0x0071 00113 (main.go:80)       MOVQ    AX, 40(SP)
        0x0076 00118 (main.go:80)       PCDATA  $0, $0
        0x0076 00118 (main.go:80)       CALL    time.Time.Sub(SB)
        0x007b 00123 (main.go:80)       MOVQ    48(SP), AX
        0x0080 00128 (main.go:80)       XORPS   X0, X0
        0x0083 00131 (main.go:80)       CVTSQ2SD        AX, X0
        0x0088 00136 (main.go:80)       MOVSD   $f64.41ddcd6500000000(SB), X1
        0x0090 00144 (main.go:80)       DIVSD   X1, X0
        0x0094 00148 (main.go:80)       MOVSD   X0, ""..autotmp_9+80(SP)
        0x009a 00154 (main.go:80)       MOVQ    $0, ""..autotmp_8+96(SP)
        0x00a3 00163 (main.go:80)       MOVQ    $0, ""..autotmp_8+104(SP)
        0x00ac 00172 (main.go:80)       LEAQ    type.float64(SB), AX
        0x00b3 00179 (main.go:80)       MOVQ    AX, (SP)
        0x00b7 00183 (main.go:80)       LEAQ    ""..autotmp_9+80(SP), AX
        0x00bc 00188 (main.go:80)       MOVQ    AX, 8(SP)
        0x00c1 00193 (main.go:80)       PCDATA  $0, $2
        0x00c1 00193 (main.go:80)       CALL    runtime.convT2E64(SB)
        0x00c6 00198 (main.go:80)       MOVQ    16(SP), AX
        0x00cb 00203 (main.go:80)       MOVQ    24(SP), CX
        0x00d0 00208 (main.go:80)       MOVQ    AX, ""..autotmp_8+96(SP)
        0x00d5 00213 (main.go:80)       MOVQ    CX, ""..autotmp_8+104(SP)
        0x00da 00218 (main.go:80)       LEAQ    go.string."%0.2fns\n"(SB), AX
        0x00e1 00225 (main.go:80)       MOVQ    AX, (SP)
        0x00e5 00229 (main.go:80)       MOVQ    $8, 8(SP)
        0x00ee 00238 (main.go:80)       LEAQ    ""..autotmp_8+96(SP), AX
        0x00f3 00243 (main.go:80)       MOVQ    AX, 16(SP)
        0x00f8 00248 (main.go:80)       MOVQ    $1, 24(SP)
        0x0101 00257 (main.go:80)       MOVQ    $1, 32(SP)
        0x010a 00266 (main.go:80)       PCDATA  $0, $2
        0x010a 00266 (main.go:80)       CALL    fmt.Printf(SB)
        0x010f 00271 (main.go:81)       MOVQ    112(SP), BP
        0x0114 00276 (main.go:81)       ADDQ    $120, SP
        0x0118 00280 (main.go:81)       RET
        0x0119 00281 (main.go:81)       NOP
        0x0119 00281 (main.go:74)       PCDATA  $0, $-1
        0x0119 00281 (main.go:74)       CALL    runtime.morestack_noctxt(SB)
        0x011e 00286 (main.go:74)       JMP     0
        0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 06  eH..%....H;a....
        0x0010 01 00 00 48 83 ec 78 48 89 6c 24 70 48 8d 6c 24  ...H..xH.l$pH.l$
        0x0020 70 e8 00 00 00 00 48 8b 44 24 10 48 8b 4c 24 08  p.....H.D$.H.L$.
        0x0030 48 8b 14 24 31 db eb 03 48 ff c3 48 81 fb 00 94  H..$1...H..H....
        0x0040 35 77 7c f4 48 89 44 24 58 48 89 4c 24 48 48 89  5w|.H.D$XH.L$HH.
        0x0050 54 24 40 e8 00 00 00 00 48 8b 44 24 40 48 89 44  T$@.....H.D$@H.D
        0x0060 24 18 48 8b 44 24 48 48 89 44 24 20 48 8b 44 24  $.H.D$HH.D$ H.D$
        0x0070 58 48 89 44 24 28 e8 00 00 00 00 48 8b 44 24 30  XH.D$(.....H.D$0
        0x0080 0f 57 c0 f2 48 0f 2a c0 f2 0f 10 0d 00 00 00 00  .W..H.*.........
        0x0090 f2 0f 5e c1 f2 0f 11 44 24 50 48 c7 44 24 60 00  ..^....D$PH.D$`.
        0x00a0 00 00 00 48 c7 44 24 68 00 00 00 00 48 8d 05 00  ...H.D$h....H...
        0x00b0 00 00 00 48 89 04 24 48 8d 44 24 50 48 89 44 24  ...H..$H.D$PH.D$
        0x00c0 08 e8 00 00 00 00 48 8b 44 24 10 48 8b 4c 24 18  ......H.D$.H.L$.
        0x00d0 48 89 44 24 60 48 89 4c 24 68 48 8d 05 00 00 00  H.D$`H.L$hH.....
        0x00e0 00 48 89 04 24 48 c7 44 24 08 08 00 00 00 48 8d  .H..$H.D$.....H.
        0x00f0 44 24 60 48 89 44 24 10 48 c7 44 24 18 01 00 00  D$`H.D$.H.D$....
        0x0100 00 48 c7 44 24 20 01 00 00 00 e8 00 00 00 00 48  .H.D$ .........H
        0x0110 8b 6c 24 70 48 83 c4 78 c3 e8 00 00 00 00 e9 dd  .l$pH..x........
        0x0120 fe ff ff                                         ...
        rel 5+4 t=16 TLS+0
        rel 34+4 t=8 time.Now+0
        rel 84+4 t=8 time.Now+0
        rel 119+4 t=8 time.Time.Sub+0
        rel 140+4 t=15 $f64.41ddcd6500000000+0
        rel 175+4 t=15 type.float64+0
        rel 194+4 t=8 runtime.convT2E64+0
        rel 221+4 t=15 go.string."%0.2fns\n"+0
        rel 267+4 t=8 fmt.Printf+0
        rel 282+4 t=8 runtime.morestack_noctxt+0
"".init STEXT size=101 args=0x0 locals=0x8
        0x0000 00000 (<autogenerated>:1)        TEXT    "".init(SB), $8-0
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     94
        0x000f 00015 (<autogenerated>:1)        SUBQ    $8, SP
        0x0013 00019 (<autogenerated>:1)        MOVQ    BP, (SP)
        0x0017 00023 (<autogenerated>:1)        LEAQ    (SP), BP
        0x001b 00027 (<autogenerated>:1)        FUNCDATA        $0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x001b 00027 (<autogenerated>:1)        FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x001b 00027 (<autogenerated>:1)        MOVBLZX "".initdone·(SB), AX
        0x0022 00034 (<autogenerated>:1)        CMPB    AL, $1
        0x0024 00036 (<autogenerated>:1)        JLS     47
        0x0026 00038 (<autogenerated>:1)        MOVQ    (SP), BP
        0x002a 00042 (<autogenerated>:1)        ADDQ    $8, SP
        0x002e 00046 (<autogenerated>:1)        RET
        0x002f 00047 (<autogenerated>:1)        JNE     56
        0x0031 00049 (<autogenerated>:1)        PCDATA  $0, $0
        0x0031 00049 (<autogenerated>:1)        CALL    runtime.throwinit(SB)
        0x0036 00054 (<autogenerated>:1)        UNDEF
        0x0038 00056 (<autogenerated>:1)        MOVB    $1, "".initdone·(SB)
        0x003f 00063 (<autogenerated>:1)        PCDATA  $0, $0
        0x003f 00063 (<autogenerated>:1)        CALL    fmt.init(SB)
        0x0044 00068 (<autogenerated>:1)        PCDATA  $0, $0
        0x0044 00068 (<autogenerated>:1)        CALL    time.init(SB)
        0x0049 00073 (<autogenerated>:1)        PCDATA  $0, $0
        0x0049 00073 (<autogenerated>:1)        CALL    "".init.0(SB)
        0x004e 00078 (<autogenerated>:1)        MOVB    $2, "".initdone·(SB)
        0x0055 00085 (<autogenerated>:1)        MOVQ    (SP), BP
        0x0059 00089 (<autogenerated>:1)        ADDQ    $8, SP
        0x005d 00093 (<autogenerated>:1)        RET
        0x005e 00094 (<autogenerated>:1)        NOP
        0x005e 00094 (<autogenerated>:1)        PCDATA  $0, $-1
        0x005e 00094 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x0063 00099 (<autogenerated>:1)        JMP     0
        0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 4f 48  eH..%....H;a.vOH
        0x0010 83 ec 08 48 89 2c 24 48 8d 2c 24 0f b6 05 00 00  ...H.,$H.,$.....
        0x0020 00 00 3c 01 76 09 48 8b 2c 24 48 83 c4 08 c3 75  ..<.v.H.,$H....u
        0x0030 07 e8 00 00 00 00 0f 0b c6 05 00 00 00 00 01 e8  ................
        0x0040 00 00 00 00 e8 00 00 00 00 e8 00 00 00 00 c6 05  ................
        0x0050 00 00 00 00 02 48 8b 2c 24 48 83 c4 08 c3 e8 00  .....H.,$H......
        0x0060 00 00 00 eb 9b                                   .....
        rel 5+4 t=16 TLS+0
        rel 30+4 t=15 "".initdone·+0
        rel 50+4 t=8 runtime.throwinit+0
        rel 58+4 t=15 "".initdone·+-1
        rel 64+4 t=8 fmt.init+0
        rel 69+4 t=8 time.init+0
        rel 74+4 t=8 "".init.0+0
        rel 80+4 t=15 "".initdone·+-1
        rel 95+4 t=8 runtime.morestack_noctxt+0
go.info."".init.0 SDWARFINFO size=31
        0x0000 02 22 22 2e 69 6e 69 74 2e 30 00 00 00 00 00 00  ."".init.0......
        0x0010 00 00 00 00 00 00 00 00 00 00 00 01 9c 01 00     ...............
        rel 11+8 t=1 "".init.0+0
        rel 19+8 t=1 "".init.0+94
go.range."".init.0 SDWARFRANGE size=0
go.info."".popCount SDWARFINFO size=56
        0x0000 02 22 22 2e 70 6f 70 43 6f 75 6e 74 00 00 00 00  ."".popCount....
        0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 01 9c 01  ................
        0x0020 05 78 00 01 9c 00 00 00 00 05 7e 72 31 00 04 9c  .x........~r1...
        0x0030 11 08 22 00 00 00 00 00                          ..".....
        rel 13+8 t=1 "".popCount+0
        rel 21+8 t=1 "".popCount+143
        rel 37+4 t=28 go.info.uint64+0
        rel 51+4 t=28 go.info.int+0
go.range."".popCount SDWARFRANGE size=0
go.info."".bitCount SDWARFINFO size=56
        0x0000 02 22 22 2e 62 69 74 43 6f 75 6e 74 00 00 00 00  ."".bitCount....
        0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 01 9c 01  ................
        0x0020 05 78 00 01 9c 00 00 00 00 05 7e 72 31 00 04 9c  .x........~r1...
        0x0030 11 08 22 00 00 00 00 00                          ..".....
        rel 13+8 t=1 "".bitCount+0
        rel 21+8 t=1 "".bitCount+123
        rel 37+4 t=28 go.info.uint64+0
        rel 51+4 t=28 go.info.int+0
go.range."".bitCount SDWARFRANGE size=0
go.info."".popCountByClearing SDWARFINFO size=66
        0x0000 02 22 22 2e 70 6f 70 43 6f 75 6e 74 42 79 43 6c  ."".popCountByCl
        0x0010 65 61 72 69 6e 67 00 00 00 00 00 00 00 00 00 00  earing..........
        0x0020 00 00 00 00 00 00 00 01 9c 01 05 78 00 01 9c 00  ...........x....
        0x0030 00 00 00 05 7e 72 31 00 04 9c 11 08 22 00 00 00  ....~r1....."...
        0x0040 00 00                                            ..
        rel 23+8 t=1 "".popCountByClearing+0
        rel 31+8 t=1 "".popCountByClearing+30
        rel 47+4 t=28 go.info.uint64+0
        rel 61+4 t=28 go.info.int+0
go.range."".popCountByClearing SDWARFRANGE size=0
go.info."".popCountByShifting SDWARFINFO size=66
        0x0000 02 22 22 2e 70 6f 70 43 6f 75 6e 74 42 79 53 68  ."".popCountBySh
        0x0010 69 66 74 69 6e 67 00 00 00 00 00 00 00 00 00 00  ifting..........
        0x0020 00 00 00 00 00 00 00 01 9c 01 05 78 00 01 9c 00  ...........x....
        0x0030 00 00 00 05 7e 72 31 00 04 9c 11 08 22 00 00 00  ....~r1....."...
        0x0040 00 00                                            ..
        rel 23+8 t=1 "".popCountByShifting+0
        rel 31+8 t=1 "".popCountByShifting+54
        rel 47+4 t=28 go.info.uint64+0
        rel 61+4 t=28 go.info.int+0
go.range."".popCountByShifting SDWARFRANGE size=0
go.info."".emtpy SDWARFINFO size=53
        0x0000 02 22 22 2e 65 6d 74 70 79 00 00 00 00 00 00 00  ."".emtpy.......
        0x0010 00 00 00 00 00 00 00 00 00 00 01 9c 01 05 78 00  ..............x.
        0x0020 01 9c 00 00 00 00 05 7e 72 31 00 04 9c 11 08 22  .......~r1....."
        0x0030 00 00 00 00 00                                   .....
        rel 10+8 t=1 "".emtpy+0
        rel 18+8 t=1 "".emtpy+10
        rel 34+4 t=28 go.info.uint64+0
        rel 48+4 t=28 go.info.int+0
go.range."".emtpy SDWARFRANGE size=0
go.string."%0.2fns\n" SRODATA dupok size=8
        0x0000 25 30 2e 32 66 6e 73 0a                          %0.2fns.
go.info."".main SDWARFINFO size=90
        0x0000 02 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
        0x0010 00 00 00 00 00 00 00 00 00 01 9c 01 04 73 74 61  .............sta
        0x0020 72 74 2e 77 61 6c 6c 00 04 9c 11 40 22 00 00 00  rt.wall....@"...
        0x0030 00 04 73 74 61 72 74 2e 65 78 74 00 04 9c 11 48  ..start.ext....H
        0x0040 22 00 00 00 00 04 73 74 61 72 74 2e 6c 6f 63 00  ".....start.loc.
        0x0050 04 9c 11 58 22 00 00 00 00 00                    ...X".....
        rel 9+8 t=1 "".main+0
        rel 17+8 t=1 "".main+291
        rel 45+4 t=28 go.info.uint64+0
        rel 65+4 t=28 go.info.int64+0
        rel 85+4 t=28 go.info.*time.Location+0
go.range."".main SDWARFRANGE size=0
go.info."".init SDWARFINFO size=29
        0x0000 02 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
        0x0010 00 00 00 00 00 00 00 00 00 01 9c 01 00           .............
        rel 9+8 t=1 "".init+0
        rel 17+8 t=1 "".init+101
go.range."".init SDWARFRANGE size=0
"".pc SNOPTRBSS size=256
"".initdone· SNOPTRBSS size=1
runtime.gcbits.01 SRODATA dupok size=1
        0x0000 01                                               .
type..namedata.*interface {}- SRODATA dupok size=16
        0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 4f 0f 96 9d 00 08 08 36 00 00 00 00 00 00 00 00  O......6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*interface {}-+0
        rel 48+8 t=1 type.interface {}+0
runtime.gcbits.03 SRODATA dupok size=1
        0x0000 03                                               .
type.interface {} SRODATA dupok size=80
        0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
        0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        rel 24+8 t=1 runtime.algarray+144
        rel 32+8 t=1 runtime.gcbits.03+0
        rel 40+4 t=5 type..namedata.*interface {}-+0
        rel 44+4 t=6 type.*interface {}+0
        rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=18
        0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface 
        0x0010 7b 7d                                            {}
type.*[]interface {} SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 f3 04 9a e7 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[]interface {}-+0
        rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
        0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+0
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[]interface {}-+0
        rel 44+4 t=6 type.*[]interface {}+0
        rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=19
        0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
        0x0010 20 7b 7d                                          {}
type.*[1]interface {} SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 bf 03 a8 35 00 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[1]interface {}-+0
        rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
        0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
        0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0040 01 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+144
        rel 32+8 t=1 runtime.gcbits.03+0
        rel 40+4 t=5 type..namedata.*[1]interface {}-+0
        rel 44+4 t=6 type.*[1]interface {}+0
        rel 48+8 t=1 type.interface {}+0
        rel 56+8 t=1 type.[]interface {}+0
type..namedata.*[]uint8- SRODATA dupok size=11
        0x0000 00 00 08 2a 5b 5d 75 69 6e 74 38                 ...*[]uint8
type.*[]uint8 SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 a5 8e d0 69 00 08 08 36 00 00 00 00 00 00 00 00  ...i...6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[]uint8-+0
        rel 48+8 t=1 type.[]uint8+0
type.[]uint8 SRODATA dupok size=56
        0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 df 7e 2e 38 02 08 08 17 00 00 00 00 00 00 00 00  .~.8............
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+0
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[]uint8-+0
        rel 44+4 t=6 type.*[]uint8+0
        rel 48+8 t=1 type.uint8+0
type..hashfunc256 SRODATA dupok size=16
        0x0000 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00  ................
        rel 0+8 t=1 runtime.memhash_varlen+0
type..eqfunc256 SRODATA dupok size=16
        0x0000 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00  ................
        rel 0+8 t=1 runtime.memequal_varlen+0
type..alg256 SRODATA dupok size=16
        0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        rel 0+8 t=1 type..hashfunc256+0
        rel 8+8 t=1 type..eqfunc256+0
type..namedata.*[256]uint8- SRODATA dupok size=14
        0x0000 00 00 0b 2a 5b 32 35 36 5d 75 69 6e 74 38        ...*[256]uint8
type.*[256]uint8 SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 9f 33 f5 ec 00 08 08 36 00 00 00 00 00 00 00 00  .3.....6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[256]uint8-+0
        rel 48+8 t=1 type.[256]uint8+0
runtime.gcbits. SRODATA dupok size=0
type.[256]uint8 SRODATA dupok size=72
        0x0000 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0010 9e 9d b0 ff 02 01 01 91 00 00 00 00 00 00 00 00  ................
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0040 00 01 00 00 00 00 00 00                          ........
        rel 24+8 t=1 type..alg256+0
        rel 32+8 t=1 runtime.gcbits.+0
        rel 40+4 t=5 type..namedata.*[256]uint8-+0
        rel 44+4 t=6 type.*[256]uint8+0
        rel 48+8 t=1 type.uint8+0
        rel 56+8 t=1 type.[]uint8+0
type..importpath.fmt. SRODATA dupok size=6
        0x0000 00 00 03 66 6d 74                                ...fmt
type..importpath.time. SRODATA dupok size=7
        0x0000 00 00 04 74 69 6d 65                             ...time
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
        0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·f207267fbf96a0178e8758c6e3e0ce28 SRODATA dupok size=9
        0x0000 01 00 00 00 02 00 00 00 00                       .........
gclocals·7d2d5fca80364273fb07d5820a76fef4 SRODATA dupok size=8
        0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·3a5f6b21d2b25517271e2f12e2835dc4 SRODATA dupok size=11
        0x0000 03 00 00 00 03 00 00 00 00 01 06                 ...........
