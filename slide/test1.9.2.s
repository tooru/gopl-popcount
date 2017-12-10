# github.com/tooru/gopl/ch11/p06popcount
"".init.0 STEXT nosplit size=94 args=0x0 locals=0x8
        0x0000 00000 (popcount.go:6)    TEXT    "".init.0(SB), NOSPLIT, $8-0
        0x0000 00000 (popcount.go:6)    SUBQ    $8, SP
        0x0004 00004 (popcount.go:6)    MOVQ    BP, (SP)
        0x0008 00008 (popcount.go:6)    LEAQ    (SP), BP
        0x000c 00012 (popcount.go:6)    FUNCDATA        $0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x000c 00012 (popcount.go:6)    FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x000c 00012 (popcount.go:6)    MOVL    $0, AX
        0x000e 00014 (popcount.go:7)    JMP     43
        0x0010 00016 (popcount.go:7)    LEAQ    "".pc(SB), DX
        0x0017 00023 (popcount.go:8)    MOVBLZX (DX)(AX*1), BX
        0x001b 00027 (popcount.go:8)    MOVQ    CX, SI
        0x001e 00030 (popcount.go:8)    ANDQ    $1, CX
        0x0022 00034 (popcount.go:8)    ADDL    BX, CX
        0x0024 00036 (popcount.go:8)    MOVB    CL, (DX)(SI*1)
        0x0027 00039 (popcount.go:7)    LEAQ    1(SI), AX
        0x002b 00043 (popcount.go:7)    CMPQ    AX, $256
        0x0031 00049 (popcount.go:7)    JGE     78
        0x0033 00051 (popcount.go:7)    MOVQ    AX, CX
        0x0036 00054 (popcount.go:8)    SARQ    $63, AX
        0x003a 00058 (popcount.go:8)    SHRQ    $63, AX
        0x003e 00062 (popcount.go:8)    ADDQ    CX, AX
        0x0041 00065 (popcount.go:8)    SARQ    $1, AX
        0x0044 00068 (popcount.go:8)    CMPQ    AX, $256
        0x004a 00074 (popcount.go:8)    JCS     16
        0x004c 00076 (popcount.go:8)    JMP     87
        0x004e 00078 (popcount.go:10)   MOVQ    (SP), BP
        0x0052 00082 (popcount.go:10)   ADDQ    $8, SP
        0x0056 00086 (popcount.go:10)   RET
        0x0057 00087 (popcount.go:8)    PCDATA  $0, $0
        0x0057 00087 (popcount.go:8)    CALL    runtime.panicindex(SB)
        0x005c 00092 (popcount.go:8)    UNDEF
        0x0000 48 83 ec 08 48 89 2c 24 48 8d 2c 24 31 c0 eb 1b  H...H.,$H.,$1...
        0x0010 48 8d 15 00 00 00 00 0f b6 1c 02 48 89 ce 48 83  H..........H..H.
        0x0020 e1 01 01 d9 88 0c 32 48 8d 46 01 48 3d 00 01 00  ......2H.F.H=...
        0x0030 00 7d 1b 48 89 c1 48 c1 f8 3f 48 c1 e8 3f 48 01  .}.H..H..?H..?H.
        0x0040 c8 48 d1 f8 48 3d 00 01 00 00 72 c4 eb 09 48 8b  .H..H=....r...H.
        0x0050 2c 24 48 83 c4 08 c3 e8 00 00 00 00 0f 0b        ,$H...........
        rel 19+4 t=15 "".pc+0
        rel 88+4 t=8 runtime.panicindex+0
"".PopCount STEXT nosplit size=143 args=0x10 locals=0x0
        0x0000 00000 (popcount.go:13)   TEXT    "".PopCount(SB), NOSPLIT, $0-16
        0x0000 00000 (popcount.go:13)   FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (popcount.go:13)   FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount.go:13)   MOVQ    "".x+8(SP), AX
        0x0005 00005 (popcount.go:14)   MOVBLZX AL, CX
        0x0008 00008 (popcount.go:14)   LEAQ    "".pc(SB), DX
        0x000f 00015 (popcount.go:14)   MOVBLZX (CX)(DX*1), CX
        0x0013 00019 (popcount.go:14)   MOVQ    AX, BX
        0x0016 00022 (popcount.go:15)   SHRQ    $8, AX
        0x001a 00026 (popcount.go:15)   MOVBLZX AL, AX
        0x001d 00029 (popcount.go:15)   MOVBLZX (AX)(DX*1), AX
        0x0021 00033 (popcount.go:15)   MOVQ    BX, SI
        0x0024 00036 (popcount.go:16)   SHRQ    $16, BX
        0x0028 00040 (popcount.go:16)   MOVBLZX BL, BX
        0x002b 00043 (popcount.go:16)   MOVBLZX (BX)(DX*1), BX
        0x002f 00047 (popcount.go:16)   MOVQ    SI, DI
        0x0032 00050 (popcount.go:17)   SHRQ    $24, SI
        0x0036 00054 (popcount.go:17)   MOVBLZX SIB, SI
        0x003a 00058 (popcount.go:17)   MOVBLZX (SI)(DX*1), SI
        0x003e 00062 (popcount.go:17)   MOVQ    DI, R8
        0x0041 00065 (popcount.go:18)   SHRQ    $32, DI
        0x0045 00069 (popcount.go:18)   MOVBLZX DIB, DI
        0x0049 00073 (popcount.go:18)   MOVBLZX (DI)(DX*1), DI
        0x004d 00077 (popcount.go:18)   MOVQ    R8, R9
        0x0050 00080 (popcount.go:19)   SHRQ    $40, R8
        0x0054 00084 (popcount.go:19)   MOVBLZX R8B, R8
        0x0058 00088 (popcount.go:19)   MOVBLZX (R8)(DX*1), R8
        0x005d 00093 (popcount.go:19)   MOVQ    R9, R10
        0x0060 00096 (popcount.go:20)   SHRQ    $48, R9
        0x0064 00100 (popcount.go:20)   MOVBLZX R9B, R9
        0x0068 00104 (popcount.go:20)   MOVBLZX (R9)(DX*1), R9
        0x006d 00109 (popcount.go:21)   SHRQ    $56, R10
        0x0071 00113 (popcount.go:21)   MOVBLZX (R10)(DX*1), DX
        0x0076 00118 (popcount.go:14)   ADDL    CX, AX
        0x0078 00120 (popcount.go:15)   ADDL    BX, AX
        0x007a 00122 (popcount.go:16)   ADDL    SI, AX
        0x007c 00124 (popcount.go:17)   ADDL    DI, AX
        0x007e 00126 (popcount.go:18)   ADDL    R8, AX
        0x0081 00129 (popcount.go:19)   ADDL    R9, AX
        0x0084 00132 (popcount.go:20)   ADDL    DX, AX
        0x0086 00134 (popcount.go:14)   MOVBLZX AL, AX
        0x0089 00137 (popcount.go:14)   MOVQ    AX, "".~r1+16(SP)
        0x008e 00142 (popcount.go:14)   RET
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
        0x0000 00000 (popcount.go:24)   TEXT    "".bitCount(SB), NOSPLIT, $0-16
        0x0000 00000 (popcount.go:24)   FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (popcount.go:24)   FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount.go:24)   MOVQ    "".x+8(SP), AX
        0x0005 00005 (popcount.go:24)   MOVQ    AX, CX
        0x0008 00008 (popcount.go:26)   SHRQ    $1, AX
        0x000b 00011 (popcount.go:26)   MOVQ    $6148914691236517205, DX
        0x0015 00021 (popcount.go:26)   ANDQ    DX, AX
        0x0018 00024 (popcount.go:26)   SUBQ    AX, CX
        0x001b 00027 (popcount.go:26)   MOVQ    $3689348814741910323, AX
        0x0025 00037 (popcount.go:27)   ANDQ    CX, AX
        0x0028 00040 (popcount.go:27)   SHRQ    $2, CX
        0x002c 00044 (popcount.go:27)   MOVQ    $3689348814741910323, DX
        0x0036 00054 (popcount.go:27)   ANDQ    CX, DX
        0x0039 00057 (popcount.go:27)   ADDQ    DX, AX
        0x003c 00060 (popcount.go:27)   MOVQ    AX, CX
        0x003f 00063 (popcount.go:28)   SHRQ    $4, AX
        0x0043 00067 (popcount.go:28)   ADDQ    CX, AX
        0x0046 00070 (popcount.go:28)   MOVQ    $1085102592571150095, CX
        0x0050 00080 (popcount.go:28)   ANDQ    AX, CX
        0x0053 00083 (popcount.go:28)   MOVQ    CX, AX
        0x0056 00086 (popcount.go:29)   SHRQ    $8, CX
        0x005a 00090 (popcount.go:29)   ADDQ    CX, AX
        0x005d 00093 (popcount.go:29)   MOVQ    AX, CX
        0x0060 00096 (popcount.go:30)   SHRQ    $16, AX
        0x0064 00100 (popcount.go:30)   ADDQ    CX, AX
        0x0067 00103 (popcount.go:30)   MOVQ    AX, CX
        0x006a 00106 (popcount.go:31)   SHRQ    $32, AX
        0x006e 00110 (popcount.go:31)   ADDQ    CX, AX
        0x0071 00113 (popcount.go:32)   ANDQ    $127, AX
        0x0075 00117 (popcount.go:32)   MOVQ    AX, "".~r1+16(SP)
        0x007a 00122 (popcount.go:32)   RET
        0x0000 48 8b 44 24 08 48 89 c1 48 d1 e8 48 ba 55 55 55  H.D$.H..H..H.UUU
        0x0010 55 55 55 55 55 48 21 d0 48 29 c1 48 b8 33 33 33  UUUUUH!.H).H.333
        0x0020 33 33 33 33 33 48 21 c8 48 c1 e9 02 48 ba 33 33  33333H!.H...H.33
        0x0030 33 33 33 33 33 33 48 21 ca 48 01 d0 48 89 c1 48  333333H!.H..H..H
        0x0040 c1 e8 04 48 01 c8 48 b9 0f 0f 0f 0f 0f 0f 0f 0f  ...H..H.........
        0x0050 48 21 c1 48 89 c8 48 c1 e9 08 48 01 c8 48 89 c1  H!.H..H...H..H..
        0x0060 48 c1 e8 10 48 01 c8 48 89 c1 48 c1 e8 20 48 01  H...H..H..H.. H.
        0x0070 c8 48 83 e0 7f 48 89 44 24 10 c3                 .H...H.D$..
"".popCountByClearing STEXT nosplit size=30 args=0x10 locals=0x0
        0x0000 00000 (popcount.go:35)   TEXT    "".popCountByClearing(SB), NOSPLIT, $0-16
        0x0000 00000 (popcount.go:35)   FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (popcount.go:35)   FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount.go:35)   MOVQ    "".x+8(SP), AX
        0x0005 00005 (popcount.go:35)   MOVL    $0, CX
        0x0007 00007 (popcount.go:37)   JMP     19
        0x0009 00009 (popcount.go:38)   LEAQ    -1(AX), DX
        0x000d 00013 (popcount.go:38)   ANDQ    DX, AX
        0x0010 00016 (popcount.go:41)   INCQ    CX
        0x0013 00019 (popcount.go:37)   TESTQ   AX, AX
        0x0016 00022 (popcount.go:37)   JNE     9
        0x0018 00024 (popcount.go:43)   MOVQ    CX, "".~r1+16(SP)
        0x001d 00029 (popcount.go:43)   RET
        0x0000 48 8b 44 24 08 31 c9 eb 0a 48 8d 50 ff 48 21 d0  H.D$.1...H.P.H!.
        0x0010 48 ff c1 48 85 c0 75 f1 48 89 4c 24 10 c3        H..H..u.H.L$..
"".popCountByShifting STEXT nosplit size=54 args=0x10 locals=0x0
        0x0000 00000 (popcount.go:46)   TEXT    "".popCountByShifting(SB), NOSPLIT, $0-16
        0x0000 00000 (popcount.go:46)   FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (popcount.go:46)   FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount.go:46)   MOVQ    "".x+8(SP), AX
        0x0005 00005 (popcount.go:46)   MOVL    $0, CX
        0x0007 00007 (popcount.go:46)   MOVL    $0, DX
        0x0009 00009 (popcount.go:48)   JMP     14
        0x000b 00011 (popcount.go:48)   INCQ    CX
        0x000e 00014 (popcount.go:48)   CMPQ    CX, $64
        0x0012 00018 (popcount.go:48)   JCC     48
        0x0014 00020 (popcount.go:48)   MOVL    $1, BX
        0x0019 00025 (popcount.go:49)   SHLQ    CX, BX
        0x001c 00028 (popcount.go:48)   CMPQ    CX, $64
        0x0020 00032 (popcount.go:49)   SBBQ    SI, SI
        0x0023 00035 (popcount.go:49)   ANDQ    BX, SI
        0x0026 00038 (popcount.go:49)   TESTQ   AX, SI
        0x0029 00041 (popcount.go:49)   JEQ     11
        0x002b 00043 (popcount.go:50)   INCQ    DX
        0x002e 00046 (popcount.go:49)   JMP     11
        0x0030 00048 (popcount.go:53)   MOVQ    DX, "".~r1+16(SP)
        0x0035 00053 (popcount.go:53)   RET
        0x0000 48 8b 44 24 08 31 c9 31 d2 eb 03 48 ff c1 48 83  H.D$.1.1...H..H.
        0x0010 f9 40 73 1c bb 01 00 00 00 48 d3 e3 48 83 f9 40  .@s......H..H..@
        0x0020 48 19 f6 48 21 de 48 85 c6 74 e0 48 ff c2 eb db  H..H!.H..t.H....
        0x0030 48 89 54 24 10 c3                                H.T$..
"".emtpy STEXT nosplit size=10 args=0x10 locals=0x0
        0x0000 00000 (popcount.go:56)   TEXT    "".emtpy(SB), NOSPLIT, $0-16
        0x0000 00000 (popcount.go:56)   FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (popcount.go:56)   FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount.go:57)   MOVQ    $0, "".~r1+16(SP)
        0x0009 00009 (popcount.go:57)   RET
        0x0000 48 c7 44 24 10 00 00 00 00 c3                    H.D$......
"".init STEXT size=91 args=0x0 locals=0x8
        0x0000 00000 (<autogenerated>:1)        TEXT    "".init(SB), $8-0
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     84
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
        0x003f 00063 (<autogenerated>:1)        CALL    "".init.0(SB)
        0x0044 00068 (<autogenerated>:1)        MOVB    $2, "".initdone·(SB)
        0x004b 00075 (<autogenerated>:1)        MOVQ    (SP), BP
        0x004f 00079 (<autogenerated>:1)        ADDQ    $8, SP
        0x0053 00083 (<autogenerated>:1)        RET
        0x0054 00084 (<autogenerated>:1)        NOP
        0x0054 00084 (<autogenerated>:1)        PCDATA  $0, $-1
        0x0054 00084 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x0059 00089 (<autogenerated>:1)        JMP     0
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 45 48  dH..%....H;a.vEH
        0x0010 83 ec 08 48 89 2c 24 48 8d 2c 24 0f b6 05 00 00  ...H.,$H.,$.....
        0x0020 00 00 3c 01 76 09 48 8b 2c 24 48 83 c4 08 c3 75  ..<.v.H.,$H....u
        0x0030 07 e8 00 00 00 00 0f 0b c6 05 00 00 00 00 01 e8  ................
        0x0040 00 00 00 00 c6 05 00 00 00 00 02 48 8b 2c 24 48  ...........H.,$H
        0x0050 83 c4 08 c3 e8 00 00 00 00 eb a5                 ...........
        rel 5+4 t=16 TLS+0
        rel 30+4 t=15 "".initdone·+0
        rel 50+4 t=8 runtime.throwinit+0
        rel 58+4 t=15 "".initdone·+-1
        rel 64+4 t=8 "".init.0+0
        rel 70+4 t=15 "".initdone·+-1
        rel 85+4 t=8 runtime.morestack_noctxt+0
go.info."".init.0 SDWARFINFO size=31
        0x0000 02 22 22 2e 69 6e 69 74 2e 30 00 00 00 00 00 00  ."".init.0......
        0x0010 00 00 00 00 00 00 00 00 00 00 00 01 9c 01 00     ...............
        rel 11+8 t=1 "".init.0+0
        rel 19+8 t=1 "".init.0+94
go.range."".init.0 SDWARFRANGE size=0
go.info."".PopCount SDWARFINFO size=56
        0x0000 02 22 22 2e 50 6f 70 43 6f 75 6e 74 00 00 00 00  ."".PopCount....
        0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 01 9c 01  ................
        0x0020 05 78 00 01 9c 00 00 00 00 05 7e 72 31 00 04 9c  .x........~r1...
        0x0030 11 08 22 00 00 00 00 00                          ..".....
        rel 13+8 t=1 "".PopCount+0
        rel 21+8 t=1 "".PopCount+143
        rel 37+4 t=28 go.info.uint64+0
        rel 51+4 t=28 go.info.int+0
go.range."".PopCount SDWARFRANGE size=0
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
go.info."".init SDWARFINFO size=29
        0x0000 02 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
        0x0010 00 00 00 00 00 00 00 00 00 01 9c 01 00           .............
        rel 9+8 t=1 "".init+0
        rel 17+8 t=1 "".init+91
go.range."".init SDWARFRANGE size=0
"".pc SNOPTRBSS size=256
"".initdone· SNOPTRBSS size=1
runtime.gcbits.01 SRODATA dupok size=1
        0x0000 01                                               .
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
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
        0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·f207267fbf96a0178e8758c6e3e0ce28 SRODATA dupok size=9
        0x0000 01 00 00 00 02 00 00 00 00                       .........
# github.com/tooru/gopl/ch11/p06popcount_test
generating SSA for BenchmarkPopCount2
buildssa-enter
buildssa-body
.   DCL l(57) tc(1)
.   .   NAME-p06popcount_test.c a(true) g(2) l(57) x(0) class(PAUTO) f(1) tc(1) assigned used int

.   AS l(57) tc(1)
.   .   NAME-p06popcount_test.c a(true) g(2) l(57) x(0) class(PAUTO) f(1) tc(1) assigned used int

.   DCL l(58)
.   .   NAME-p06popcount_test.i a(true) g(3) l(58) x(0) class(PAUTO) f(1) tc(1) assigned used int

.   AS l(58) colas(true) tc(1)
.   .   NAME-p06popcount_test.i a(true) g(3) l(58) x(0) class(PAUTO) f(1) tc(1) assigned used int
.   .   LITERAL-0 l(58) tc(1) int

.   FOR l(58) tc(1)
.   .   LT l(58) tc(1) hascall bool
.   .   .   NAME-p06popcount_test.i a(true) g(3) l(58) x(0) class(PAUTO) f(1) tc(1) assigned used int
.   .   .   DOTPTR l(58) x(240) tc(1) hascall p06popcount_test.N int
.   .   .   .   NAME-p06popcount_test.b a(true) g(1) l(56) x(0) class(PPARAM) f(1) esc(no) tc(1) used PTR64-*testing.B
.   .   BLOCK l(58)
.   .   BLOCK-list
.   .   .   AS l(58) tc(1)
.   .   .   .   NAME-p06popcount_test..autotmp_5 a(true) l(58) x(0) class(PAUTO) esc(N) tc(1) assigned used int
.   .   .   .   NAME-p06popcount_test.i a(true) g(3) l(58) x(0) class(PAUTO) f(1) tc(1) assigned used int

.   .   .   AS l(58) tc(1) implicit(true) int
.   .   .   .   NAME-p06popcount_test.i a(true) g(3) l(58) x(0) class(PAUTO) f(1) tc(1) assigned used int
.   .   .   .   ADD l(58) tc(1) int
.   .   .   .   .   NAME-p06popcount_test..autotmp_5 a(true) l(58) x(0) class(PAUTO) esc(N) tc(1) assigned used int
.   .   .   .   .   LITERAL-1 l(58) tc(1) int

.   .   .   VARKILL l(58) tc(1)
.   .   .   .   NAME-p06popcount_test..autotmp_5 a(true) l(58) x(0) class(PAUTO) esc(N) tc(1) assigned used int
.   FOR-body
.   .   DCL l(59)
.   .   .   NAME-p06popcount.x·2 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used uint64

.   .   DCL l(59)
.   .   .   NAME-p06popcount_test.~r0 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used int

.   .   BLOCK l(59)
.   .   BLOCK-list
.   .   .   AS l(59) tc(1)
.   .   .   .   NAME-p06popcount.x·2 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used uint64
.   .   .   .   LITERAL-1311768467294899695 l(59) tc(1) uint64

.   .   AS l(59) tc(1)
.   .   .   NAME-p06popcount_test.~r0 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used int

.   .   BLOCK-init
.   .   .   AS l(59) tc(1) hascall
.   .   .   .   NAME-p06popcount_test..autotmp_6 a(true) l(59) x(0) class(PAUTO) esc(N) tc(1) assigned used int
.   .   .   .   CONV l(14) tc(1) hascall int
.   .   .   .   .   ADD l(20) tc(1) hascall byte
.   .   .   .   .   .   ADD l(19) tc(1) hascall byte
.   .   .   .   .   .   .   ADD l(18) tc(1) hascall byte
.   .   .   .   .   .   .   .   ADD l(17) tc(1) hascall byte
.   .   .   .   .   .   .   .   .   ADD l(16) tc(1) hascall byte
.   .   .   .   .   .   .   .   .   .   ADD l(15) tc(1) hascall byte
.   .   .   .   .   .   .   .   .   .   .   ADD l(14) tc(1) hascall byte
.   .   .   .   .   .   .   .   .   .   .   .   INDEX l(14) tc(1) bounded hascall byte
.   .   .   .   .   .   .   .   .   .   .   .   .   NAME-p06popcount.pc a(true) l(4) x(0) class(PEXTERN) tc(1) used ARRAY-[256]byte
.   .   .   .   .   .   .   .   .   .   .   .   .   CONV l(14) tc(1) byte
.   .   .   .   .   .   .   .   .   .   .   .   .   .   RSH l(14) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   .   .   .   .   .   .   NAME-p06popcount.x·2 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used uint64
.   .   .   .   .   .   .   .   .   .   .   .   .   .   .   LITERAL-0 l(9) tc(1) uint
.   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   LITERAL-0 l(14) tc(1) uint
.   .   .   .   .   .   .   .   .   .   .   .   INDEX l(15) tc(1) bounded hascall byte
.   .   .   .   .   .   .   .   .   .   .   .   .   NAME-p06popcount.pc a(true) l(4) x(0) class(PEXTERN) tc(1) used ARRAY-[256]byte
.   .   .   .   .   .   .   .   .   .   .   .   .   CONV l(15) tc(1) byte
.   .   .   .   .   .   .   .   .   .   .   .   .   .   RSH l(15) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   .   .   .   .   .   .   NAME-p06popcount.x·2 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used uint64
.   .   .   .   .   .   .   .   .   .   .   .   .   .   .   LITERAL-8 l(9) tc(1) uint
.   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   LITERAL-8 l(15) tc(1) uint
.   .   .   .   .   .   .   .   .   .   .   INDEX l(16) tc(1) bounded hascall byte
.   .   .   .   .   .   .   .   .   .   .   .   NAME-p06popcount.pc a(true) l(4) x(0) class(PEXTERN) tc(1) used ARRAY-[256]byte
.   .   .   .   .   .   .   .   .   .   .   .   CONV l(16) tc(1) byte
.   .   .   .   .   .   .   .   .   .   .   .   .   RSH l(16) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   .   .   .   .   .   NAME-p06popcount.x·2 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used uint64
.   .   .   .   .   .   .   .   .   .   .   .   .   .   LITERAL-16 l(9) tc(1) uint
.   .   .   .   .   .   .   .   .   .   .   .   .   .   .   LITERAL-16 l(16) tc(1) uint
.   .   .   .   .   .   .   .   .   .   INDEX l(17) tc(1) bounded hascall byte
.   .   .   .   .   .   .   .   .   .   .   NAME-p06popcount.pc a(true) l(4) x(0) class(PEXTERN) tc(1) used ARRAY-[256]byte
.   .   .   .   .   .   .   .   .   .   .   CONV l(17) tc(1) byte
.   .   .   .   .   .   .   .   .   .   .   .   RSH l(17) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   .   .   .   .   NAME-p06popcount.x·2 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used uint64
.   .   .   .   .   .   .   .   .   .   .   .   .   LITERAL-24 l(9) tc(1) uint
.   .   .   .   .   .   .   .   .   .   .   .   .   .   LITERAL-24 l(17) tc(1) uint
.   .   .   .   .   .   .   .   .   INDEX l(18) tc(1) bounded hascall byte
.   .   .   .   .   .   .   .   .   .   NAME-p06popcount.pc a(true) l(4) x(0) class(PEXTERN) tc(1) used ARRAY-[256]byte
.   .   .   .   .   .   .   .   .   .   CONV l(18) tc(1) byte
.   .   .   .   .   .   .   .   .   .   .   RSH l(18) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   .   .   .   NAME-p06popcount.x·2 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used uint64
.   .   .   .   .   .   .   .   .   .   .   .   LITERAL-32 l(9) tc(1) uint
.   .   .   .   .   .   .   .   .   .   .   .   .   LITERAL-32 l(18) tc(1) uint
.   .   .   .   .   .   .   .   INDEX l(19) tc(1) bounded hascall byte
.   .   .   .   .   .   .   .   .   NAME-p06popcount.pc a(true) l(4) x(0) class(PEXTERN) tc(1) used ARRAY-[256]byte
.   .   .   .   .   .   .   .   .   CONV l(19) tc(1) byte
.   .   .   .   .   .   .   .   .   .   RSH l(19) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   .   .   NAME-p06popcount.x·2 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used uint64
.   .   .   .   .   .   .   .   .   .   .   LITERAL-40 l(9) tc(1) uint
.   .   .   .   .   .   .   .   .   .   .   .   LITERAL-40 l(19) tc(1) uint
.   .   .   .   .   .   .   INDEX l(20) tc(1) bounded hascall byte
.   .   .   .   .   .   .   .   NAME-p06popcount.pc a(true) l(4) x(0) class(PEXTERN) tc(1) used ARRAY-[256]byte
.   .   .   .   .   .   .   .   CONV l(20) tc(1) byte
.   .   .   .   .   .   .   .   .   RSH l(20) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   .   NAME-p06popcount.x·2 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used uint64
.   .   .   .   .   .   .   .   .   .   LITERAL-48 l(9) tc(1) uint
.   .   .   .   .   .   .   .   .   .   .   LITERAL-48 l(20) tc(1) uint
.   .   .   .   .   .   INDEX l(21) tc(1) bounded hascall byte
.   .   .   .   .   .   .   NAME-p06popcount.pc a(true) l(4) x(0) class(PEXTERN) tc(1) used ARRAY-[256]byte
.   .   .   .   .   .   .   CONV l(21) tc(1) byte
.   .   .   .   .   .   .   .   RSH l(21) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   NAME-p06popcount.x·2 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used uint64
.   .   .   .   .   .   .   .   .   LITERAL-56 l(9) tc(1) uint
.   .   .   .   .   .   .   .   .   .   LITERAL-56 l(21) tc(1) uint
.   .   BLOCK l(59) hascall
.   .   BLOCK-list
.   .   .   AS l(59) tc(1)
.   .   .   .   NAME-p06popcount_test.~r0 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used int
.   .   .   .   NAME-p06popcount_test..autotmp_6 a(true) l(59) x(0) class(PAUTO) esc(N) tc(1) assigned used int

.   .   GOTO l(59) tc(1)
.   .   .   NAME-p06popcount_test..i0 a(true) l(59) x(0)

.   .   LABEL l(59) tc(1)
.   .   .   NAME-p06popcount_test..i0 a(true) l(59) x(0)

.   .   AS l(59) tc(1)
.   .   .   NAME-p06popcount_test.c a(true) g(2) l(57) x(0) class(PAUTO) f(1) tc(1) assigned used int
.   .   .   CONVNOP l(59) tc(1) int
.   .   .   .   NAME-p06popcount_test.~r0 a(true) l(59) x(0) class(PAUTO) tc(1) assigned used int

.   AS l(61) tc(1)
.   .   NAME-p06popcount_test.benchResult a(true) l(54) x(0) class(PEXTERN) tc(1) assigned int
.   .   NAME-p06popcount_test.c a(true) g(2) l(57) x(0) class(PAUTO) f(1) tc(1) assigned used int
buildssa-exit
compiling BenchmarkPopCount2
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v2 = SP <uintptr> DEAD
    v3 = SB <uintptr>
    v4 = Addr <**testing.B> {b} v2 DEAD
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v20 = Const64 <int> [256] DEAD
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v9 = Phi <mem> v1 v22
    v91 = Phi <int> v6 v82
    v8 = Copy <*testing.B> v5
    v10 = NilCheck <void> v8 v9
    v11 = OffPtr <*int> [240] v8
    v12 = Load <int> v11 v9
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v22 = Copy <mem> v9
    v23 = Load <byte> v21 v22
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v22
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v22
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v22
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v22
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v22
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v22
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v22
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v83 = Copy <int> v7
    v85 = Add64 <int> v83 v84
    Plain -> b2
  b5: <- b2
    v86 = Copy <int> v91
    v88 = Copy <mem> v9
    v89 = VarDef <mem> {benchResult} v88
    v90 = Store <mem> {int} v87 v86 v89
    Ret v90
  b6: <- b3
    v81 = Copy <int> v80
    v82 = Copy <int> v81
    Plain -> b4
name c[int]: [v6 v82 v86 v91]
name i[int]: [v6 v7 v83 v85]
name b[*testing.B]: [v8]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v6 v80 v81]
  pass early phielim begin
  pass early phielim end [7882 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v2 = SP <uintptr> DEAD
    v3 = SB <uintptr>
    v4 = Addr <**testing.B> {b} v2 DEAD
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v20 = Const64 <int> [256] DEAD
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v8 = Copy <*testing.B> v5 DEAD
    v9 = Copy <mem> v1 DEAD
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v22 = Copy <mem> v1 DEAD
    v23 = Load <byte> v21 v1
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v83 = Copy <int> v7 DEAD
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v86 = Copy <int> v91 DEAD
    v88 = Copy <mem> v1 DEAD
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    v81 = Copy <int> v80 DEAD
    v82 = Copy <int> v80 DEAD
    Plain -> b4
name c[int]: [v6 v82 v86 v91]
name i[int]: [v6 v7 v83 v85]
name b[*testing.B]: [v8]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v6 v80 v81]
  pass early copyelim begin
  pass early copyelim end [3084 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v2 = SP <uintptr> DEAD
    v3 = SB <uintptr>
    v4 = Addr <**testing.B> {b} v2 DEAD
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v20 = Const64 <int> [256] DEAD
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v8 = Copy <*testing.B> v5 DEAD
    v9 = Copy <mem> v1 DEAD
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v22 = Copy <mem> v1 DEAD
    v23 = Load <byte> v21 v1
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v83 = Copy <int> v7 DEAD
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v86 = Copy <int> v91 DEAD
    v88 = Copy <mem> v1 DEAD
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    v81 = Copy <int> v80 DEAD
    v82 = Copy <int> v80 DEAD
    Plain -> b4
name c[int]: [v6 v80 v91 v91]
name i[int]: [v6 v7 v7 v85]
name b[*testing.B]: [v5]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v6 v80 v80]
  pass early deadcode begin
  pass early deadcode end [13503 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v23 = Load <byte> v21 v1
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v6 v80]
  pass short circuit begin
  pass short circuit end [2496 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v23 = Load <byte> v21 v1
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v6 v80]
  pass decompose user begin
  pass decompose user end [1442 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v23 = Load <byte> v21 v1
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v6 v80]
  pass opt begin
  pass opt end [28703 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695] DEAD
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v16 = Const64 <uint> [0] DEAD
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v25 = Const64 <uint> [8] DEAD
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v33 = Const64 <uint> [16] DEAD
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v41 = Const64 <uint> [24] DEAD
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v49 = Const64 <uint> [32] DEAD
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v57 = Const64 <uint> [40] DEAD
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v65 = Const64 <uint> [48] DEAD
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v73 = Const64 <uint> [56] DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v17 = Const64 <uint64> [1311768467294899695] DEAD
    v18 = Const8 <byte> [-17] DEAD
    v19 = Const64 <int> [239] DEAD
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v26 = Const64 <uint64> [5124095575370701] DEAD
    v27 = Const8 <byte> [-51] DEAD
    v28 = Const64 <int> [205] DEAD
    v29 = OffPtr <*byte> [205] v24
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v34 = Const64 <uint64> [20015998341291] DEAD
    v35 = Const8 <byte> [-85] DEAD
    v36 = Const64 <int> [171] DEAD
    v37 = OffPtr <*byte> [171] v32
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v42 = Const64 <uint64> [78187493520] DEAD
    v43 = Const8 <byte> [-112] DEAD
    v44 = Const64 <int> [144] DEAD
    v45 = OffPtr <*byte> [144] v40
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v50 = Const64 <uint64> [305419896] DEAD
    v51 = Const8 <byte> [120] DEAD
    v52 = Const64 <int> [120] DEAD
    v53 = OffPtr <*byte> [120] v48
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v58 = Const64 <uint64> [1193046] DEAD
    v59 = Const8 <byte> [86] DEAD
    v60 = Const64 <int> [86] DEAD
    v61 = OffPtr <*byte> [86] v56
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v66 = Const64 <uint64> [4660] DEAD
    v67 = Const8 <byte> [52] DEAD
    v68 = Const64 <int> [52] DEAD
    v69 = OffPtr <*byte> [52] v64
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v74 = Const64 <uint64> [18] DEAD
    v75 = Const8 <byte> [18] DEAD
    v76 = Const64 <int> [18] DEAD
    v77 = OffPtr <*byte> [18] v72
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    v82 = Const64 <int> [239] DEAD
    v81 = Const64 <int> [1] DEAD
    v88 = Const64 <int> [205] DEAD
    v86 = Const64 <int> [1] DEAD
    v83 = Const64 <int> [171] DEAD
    v22 = Const64 <int> [1] DEAD
    v9 = Const64 <int> [144] DEAD
    v8 = Const64 <int> [1] DEAD
    v20 = Const64 <int> [120] DEAD
    v4 = Const64 <int> [1] DEAD
    v2 = Const64 <int> [86] DEAD
    v92 = Const64 <int> [1] DEAD
    v93 = Const64 <int> [52] DEAD
    v94 = Const64 <int> [1] DEAD
    v95 = Const64 <int> [18] DEAD
    v96 = Const64 <int> [1] DEAD
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v6 v80]
  pass zero arg cse begin
  pass zero arg cse end [31252 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695] DEAD
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v16 = Const64 <uint> [0] DEAD
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v25 = Const64 <uint> [8] DEAD
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v33 = Const64 <uint> [16] DEAD
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v41 = Const64 <uint> [24] DEAD
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v49 = Const64 <uint> [32] DEAD
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v57 = Const64 <uint> [40] DEAD
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v65 = Const64 <uint> [48] DEAD
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v73 = Const64 <uint> [56] DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    v18 = Const8 <byte> [-17] DEAD
    v19 = Const64 <int> [239] DEAD
    v95 = Const64 <int> [18] DEAD
    v26 = Const64 <uint64> [5124095575370701] DEAD
    v93 = Const64 <int> [52] DEAD
    v27 = Const8 <byte> [-51] DEAD
    v2 = Const64 <int> [86] DEAD
    v28 = Const64 <int> [205] DEAD
    v20 = Const64 <int> [120] DEAD
    v34 = Const64 <uint64> [20015998341291] DEAD
    v9 = Const64 <int> [144] DEAD
    v35 = Const8 <byte> [-85] DEAD
    v83 = Const64 <int> [171] DEAD
    v42 = Const64 <uint64> [78187493520] DEAD
    v43 = Const8 <byte> [-112] DEAD
    v50 = Const64 <uint64> [305419896] DEAD
    v51 = Const8 <byte> [120] DEAD
    v58 = Const64 <uint64> [1193046] DEAD
    v59 = Const8 <byte> [86] DEAD
    v66 = Const64 <uint64> [4660] DEAD
    v67 = Const8 <byte> [52] DEAD
    v74 = Const64 <uint64> [18] DEAD
    v75 = Const8 <byte> [18] DEAD
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v17 = Const64 <uint64> [1311768467294899695] DEAD
    v96 = Const64 <int> [1] DEAD
    v94 = Const64 <int> [1] DEAD
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v92 = Const64 <int> [1] DEAD
    v4 = Const64 <int> [1] DEAD
    v8 = Const64 <int> [1] DEAD
    v29 = OffPtr <*byte> [205] v24
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v22 = Const64 <int> [1] DEAD
    v86 = Const64 <int> [1] DEAD
    v36 = Const64 <int> [171] DEAD
    v37 = OffPtr <*byte> [171] v32
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v88 = Const64 <int> [205] DEAD
    v81 = Const64 <int> [1] DEAD
    v44 = Const64 <int> [144] DEAD
    v45 = OffPtr <*byte> [144] v40
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v82 = Const64 <int> [239] DEAD
    v52 = Const64 <int> [120] DEAD
    v53 = OffPtr <*byte> [120] v48
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v60 = Const64 <int> [86] DEAD
    v61 = OffPtr <*byte> [86] v56
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v77 = OffPtr <*byte> [18] v72
    v76 = Const64 <int> [18] DEAD
    v68 = Const64 <int> [52] DEAD
    v69 = OffPtr <*byte> [52] v64
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v6 v80]
  pass opt deadcode begin
  pass opt deadcode end [14636 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v24
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v32
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = OffPtr <*byte> [144] v40
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = OffPtr <*byte> [120] v48
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v61 = OffPtr <*byte> [86] v56
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v77 = OffPtr <*byte> [18] v72
    v69 = OffPtr <*byte> [52] v64
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass generic cse begin
  pass generic cse end [33161 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass phiopt begin
  pass phiopt end [752 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass nilcheckelim begin
  pass nilcheckelim end [11038 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass prove begin
  pass prove end [15947 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass loopbce begin
found induction variable v7 (inc = v84, min = v6, max = v12)
  pass loopbce end [23746 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass decompose builtin begin
  pass decompose builtin end [6235 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass dec begin
  pass dec end [4809 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass late opt begin
  pass late opt end [9545 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v24 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass generic deadcode begin
  pass generic deadcode end [26248 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass check bce begin
  pass check bce end [417 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b3 b5 (likely)
  b3: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b6
  b4: <- b6
    v85 = Add64 <int> v7 v84
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: <- b3
    Plain -> b4
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass fuse begin
  pass fuse end [6512 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b4 b5 (likely)
  b3: DEAD
    BlockInvalid
  b4: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v85 = Add64 <int> v7 v84
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: DEAD
    BlockInvalid
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass dse begin
  pass dse end [11581 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b4 b5 (likely)
  b3: DEAD
    BlockInvalid
  b4: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v85 = Add64 <int> v7 v84
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: DEAD
    BlockInvalid
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass writebarrier begin
  pass writebarrier end [1902 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {"".benchResult} v3
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b4 b5 (likely)
  b3: DEAD
    BlockInvalid
  b4: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v85 = Add64 <int> v7 v84
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: DEAD
    BlockInvalid
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass tighten begin
  pass tighten end [22788 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3
    v84 = Const64 <int> [1]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = NilCheck <void> v5 v1
    v11 = OffPtr <*int> [240] v5
    v12 = Load <int> v11 v1
    v13 = Less64 <bool> v7 v12
    If v13 -> b4 b5 (likely)
  b3: DEAD
    BlockInvalid
  b4: <- b2
    v21 = OffPtr <*byte> [239] v15
    v23 = Load <byte> v21 v1
    v29 = OffPtr <*byte> [205] v15
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = OffPtr <*byte> [171] v15
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v38 v31
    v45 = OffPtr <*byte> [144] v15
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v46 v39
    v53 = OffPtr <*byte> [120] v15
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v54 v47
    v61 = OffPtr <*byte> [86] v15
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v62 v55
    v77 = OffPtr <*byte> [18] v15
    v69 = OffPtr <*byte> [52] v15
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v70 v63
    v85 = Add64 <int> v7 v84
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v78 v71
    v80 = ZeroExt8to64 <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v87 = Addr <*int> {"".benchResult} v3
    v90 = Store <mem> {int} v87 v91 v89
    Ret v90
  b6: DEAD
    BlockInvalid
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass lower begin
  pass lower end [31725 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v84 = MOVQconst <int> [1] DEAD
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v11 = ADDQconst <*int> [240] v5 DEAD
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    v13 = SETL <bool> v64 DEAD
    v72 = TESTB <flags> v13 v13 DEAD
    LT v64 -> b4 b5 (likely)
  b3: DEAD
    BlockInvalid
  b4: <- b2
    v21 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 DEAD
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v29 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 DEAD
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v23 v30
    v37 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 DEAD
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v45 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 DEAD
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v53 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 DEAD
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v61 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 DEAD
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v77 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 DEAD
    v69 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 DEAD
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    v87 = LEAQ <*int> {"".benchResult} v3 DEAD
    Ret v90
  b6: DEAD
    BlockInvalid
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass lowered cse begin
  pass lowered cse end [20800 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {github.com/tooru/gopl/ch11/p06popcount.pc} v3 DEAD
    v84 = MOVQconst <int> [1] DEAD
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v11 = ADDQconst <*int> [240] v5 DEAD
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    v13 = SETL <bool> v64 DEAD
    v72 = TESTB <flags> v13 v13 DEAD
    LT v64 -> b4 b5 (likely)
  b3: DEAD
    BlockInvalid
  b4: <- b2
    v21 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 DEAD
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v29 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 DEAD
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v37 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 DEAD
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v45 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 DEAD
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v53 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 DEAD
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v61 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 DEAD
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v77 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 DEAD
    v69 = LEAQ <*byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 DEAD
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    v87 = LEAQ <*int> {"".benchResult} v3 DEAD
    Ret v90
  b6: DEAD
    BlockInvalid
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass lowered deadcode begin
  pass lowered deadcode end [9407 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass checkLower begin
  pass checkLower end [854 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass late phielim begin
  pass late phielim end [1240 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass late copyelim begin
  pass late copyelim end [1652 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass phi tighten begin
  pass phi tighten end [1115 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass late deadcode begin
  pass late deadcode end [5258 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass critical begin
  pass critical end [1061 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass likelyadjust begin
  pass likelyadjust end [1391 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass layout begin
  pass layout end [4380 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v85 = ADDQconst <int> [1] v7
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass schedule begin
  pass schedule end [15606 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v10 = LoweredNilCheck <void> v5 v1
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v85 = ADDQconst <int> [1] v7
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass late nilcheck begin
  pass late nilcheck end [3086 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v85 = ADDQconst <int> [1] v7
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass flagalloc begin
  pass flagalloc end [5461 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Arg <*testing.B> {b}
    v6 = MOVQconst <int> [0]
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v6 v85
    v91 = Phi <int> v6 v80
    v12 = MOVQload <int> [240] v5 v1
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v85 = ADDQconst <int> [1] v7
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1
    v31 = ADDL <byte> v30 v23
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1
    v39 = ADDL <byte> v38 v31
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1
    v47 = ADDL <byte> v46 v39
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1
    v55 = ADDL <byte> v54 v47
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1
    v63 = ADDL <byte> v62 v55
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1
    v71 = ADDL <byte> v70 v63
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1
    v79 = ADDL <byte> v78 v71
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass regalloc begin
  pass regalloc end [86646 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr> : SB
    v5 = Arg <*testing.B> {b} : b[*testing.B]
    v87 = LoadReg <*testing.B> v5 : AX
    v69 = MOVQconst <int> [0] : CX
    v77 = Copy <int> v69 : DX
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v69 v85 : CX
    v91 = Phi <int> v77 v80 : DX
    v12 = MOVQload <int> [240] v87 v1 : BX
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b4: <- b2
    v85 = ADDQconst <int> [1] v7 : CX
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1 : BX
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1 : SI
    v31 = ADDL <byte> v30 v23 : BX
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1 : SI
    v39 = ADDL <byte> v38 v31 : BX
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1 : SI
    v47 = ADDL <byte> v46 v39 : BX
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1 : SI
    v55 = ADDL <byte> v54 v47 : BX
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1 : SI
    v63 = ADDL <byte> v62 v55 : BX
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1 : SI
    v71 = ADDL <byte> v70 v63 : BX
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1 : SI
    v79 = ADDL <byte> v78 v71 : BX
    v80 = MOVBQZX <int> v79 : DX
    Plain -> b2
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass loop rotate begin
  pass loop rotate end [3897 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr> : SB
    v5 = Arg <*testing.B> {b} : b[*testing.B]
    v87 = LoadReg <*testing.B> v5 : AX
    v69 = MOVQconst <int> [0] : CX
    v77 = Copy <int> v69 : DX
    Plain -> b2
  b4: <- b2
    v85 = ADDQconst <int> [1] v7 : CX
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1 : BX
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1 : SI
    v31 = ADDL <byte> v30 v23 : BX
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1 : SI
    v39 = ADDL <byte> v38 v31 : BX
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1 : SI
    v47 = ADDL <byte> v46 v39 : BX
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1 : SI
    v55 = ADDL <byte> v54 v47 : BX
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1 : SI
    v63 = ADDL <byte> v62 v55 : BX
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1 : SI
    v71 = ADDL <byte> v70 v63 : BX
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1 : SI
    v79 = ADDL <byte> v78 v71 : BX
    v80 = MOVBQZX <int> v79 : DX
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v69 v85 : CX
    v91 = Phi <int> v77 v80 : DX
    v12 = MOVQload <int> [240] v87 v1 : BX
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass stackframe begin
  pass stackframe end [6315 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr> : SB
    v5 = Arg <*testing.B> {b} : b[*testing.B]
    v87 = LoadReg <*testing.B> v5 : AX
    v69 = MOVQconst <int> [0] : CX
    v77 = Copy <int> v69 : DX
    Plain -> b2
  b4: <- b2
    v85 = ADDQconst <int> [1] v7 : CX
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1 : BX
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1 : SI
    v31 = ADDL <byte> v30 v23 : BX
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1 : SI
    v39 = ADDL <byte> v38 v31 : BX
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1 : SI
    v47 = ADDL <byte> v46 v39 : BX
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1 : SI
    v55 = ADDL <byte> v54 v47 : BX
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1 : SI
    v63 = ADDL <byte> v62 v55 : BX
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1 : SI
    v71 = ADDL <byte> v70 v63 : BX
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1 : SI
    v79 = ADDL <byte> v78 v71 : BX
    v80 = MOVBQZX <int> v79 : DX
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v69 v85 : CX
    v91 = Phi <int> v77 v80 : DX
    v12 = MOVQload <int> [240] v87 v1 : BX
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
  pass trim begin
  pass trim end [952 ns]
BenchmarkPopCount2 <T>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr> : SB
    v5 = Arg <*testing.B> {b} : b[*testing.B]
    v87 = LoadReg <*testing.B> v5 : AX
    v69 = MOVQconst <int> [0] : CX
    v77 = Copy <int> v69 : DX
    Plain -> b2
  b4: <- b2
    v85 = ADDQconst <int> [1] v7 : CX
    v23 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [239] v3 v1 : BX
    v30 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [205] v3 v1 : SI
    v31 = ADDL <byte> v30 v23 : BX
    v38 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [171] v3 v1 : SI
    v39 = ADDL <byte> v38 v31 : BX
    v46 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [144] v3 v1 : SI
    v47 = ADDL <byte> v46 v39 : BX
    v54 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [120] v3 v1 : SI
    v55 = ADDL <byte> v54 v47 : BX
    v62 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [86] v3 v1 : SI
    v63 = ADDL <byte> v62 v55 : BX
    v70 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [52] v3 v1 : SI
    v71 = ADDL <byte> v70 v63 : BX
    v78 = MOVBload <byte> {github.com/tooru/gopl/ch11/p06popcount.pc} [18] v3 v1 : SI
    v79 = ADDL <byte> v78 v71 : BX
    v80 = MOVBQZX <int> v79 : DX
    Plain -> b2
  b2: <- b1 b4
    v7 = Phi <int> v69 v85 : CX
    v91 = Phi <int> v77 v80 : DX
    v12 = MOVQload <int> [240] v87 v1 : BX
    v64 = CMPQ <flags> v7 v12
    LT v64 -> b4 b5 (likely)
  b5: <- b2
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {"".benchResult} v3 v91 v89
    Ret v90
name c[int]: [v6 v80 v91]
name i[int]: [v6 v7 v85]
name b[*testing.B]: [v5]
name ~r0[int]: [v6 v80]
genssa BenchmarkPopCount2
        00000 (popcount_test.go:56)     TEXT    "".BenchmarkPopCount2(SB)
        00001 (popcount_test.go:56)     FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
        00002 (popcount_test.go:56)     FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
v87     00003 (popcount_test.go:56)     MOVQ    "".b(SP), AX
v69     00004 (popcount_test.go:56)     MOVL    $0, CX
v77     00005 (popcount_test.go:56)     MOVQ    CX, DX
b1      00006 (popcount_test.go:58)     JMP     24
v85     00007 (popcount_test.go:58)     INCQ    CX
v23     00008 (popcount_test.go:59)     MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+239(SB), BX
v30     00009 (popcount_test.go:59)     MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+205(SB), SI
v31     00010 (popcount_test.go:59)     ADDL    SI, BX
v38     00011 (popcount_test.go:59)     MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+171(SB), SI
v39     00012 (popcount_test.go:59)     ADDL    SI, BX
v46     00013 (popcount_test.go:59)     MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+144(SB), SI
v47     00014 (popcount_test.go:59)     ADDL    SI, BX
v54     00015 (popcount_test.go:59)     MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+120(SB), SI
v55     00016 (popcount_test.go:59)     ADDL    SI, BX
v62     00017 (popcount_test.go:59)     MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+86(SB), SI
v63     00018 (popcount_test.go:59)     ADDL    SI, BX
v70     00019 (popcount_test.go:59)     MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+52(SB), SI
v71     00020 (popcount_test.go:59)     ADDL    SI, BX
v78     00021 (popcount_test.go:59)     MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+18(SB), SI
v79     00022 (popcount_test.go:59)     ADDL    SI, BX
v80     00023 (popcount_test.go:59)     MOVBLZX BX, DX
v12     00024 (popcount_test.go:58)     MOVQ    240(AX), BX
v64     00025 (popcount_test.go:58)     CMPQ    CX, BX
b2      00026 (popcount_test.go:58)     JLT     7
v90     00027 (popcount_test.go:61)     MOVQ    DX, "".benchResult(SB)
b5      00028 (popcount_test.go:62)     RET
        00029 (<unknown line number>)   END
"".BitCount STEXT nosplit size=123 args=0x10 locals=0x0
        0x0000 00000 (popcount_test.go:14)      TEXT    "".BitCount(SB), NOSPLIT, $0-16
        0x0000 00000 (popcount_test.go:14)      FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (popcount_test.go:14)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:14)      MOVQ    "".x+8(SP), AX
        0x0005 00005 (popcount_test.go:14)      MOVQ    AX, CX
        0x0008 00008 (popcount_test.go:16)      SHRQ    $1, AX
        0x000b 00011 (popcount_test.go:16)      MOVQ    $6148914691236517205, DX
        0x0015 00021 (popcount_test.go:16)      ANDQ    DX, AX
        0x0018 00024 (popcount_test.go:16)      SUBQ    AX, CX
        0x001b 00027 (popcount_test.go:16)      MOVQ    $3689348814741910323, AX
        0x0025 00037 (popcount_test.go:17)      ANDQ    CX, AX
        0x0028 00040 (popcount_test.go:17)      SHRQ    $2, CX
        0x002c 00044 (popcount_test.go:17)      MOVQ    $3689348814741910323, DX
        0x0036 00054 (popcount_test.go:17)      ANDQ    CX, DX
        0x0039 00057 (popcount_test.go:17)      ADDQ    DX, AX
        0x003c 00060 (popcount_test.go:17)      MOVQ    AX, CX
        0x003f 00063 (popcount_test.go:18)      SHRQ    $4, AX
        0x0043 00067 (popcount_test.go:18)      ADDQ    CX, AX
        0x0046 00070 (popcount_test.go:18)      MOVQ    $1085102592571150095, CX
        0x0050 00080 (popcount_test.go:18)      ANDQ    AX, CX
        0x0053 00083 (popcount_test.go:18)      MOVQ    CX, AX
        0x0056 00086 (popcount_test.go:19)      SHRQ    $8, CX
        0x005a 00090 (popcount_test.go:19)      ADDQ    CX, AX
        0x005d 00093 (popcount_test.go:19)      MOVQ    AX, CX
        0x0060 00096 (popcount_test.go:20)      SHRQ    $16, AX
        0x0064 00100 (popcount_test.go:20)      ADDQ    CX, AX
        0x0067 00103 (popcount_test.go:20)      MOVQ    AX, CX
        0x006a 00106 (popcount_test.go:21)      SHRQ    $32, AX
        0x006e 00110 (popcount_test.go:21)      ADDQ    CX, AX
        0x0071 00113 (popcount_test.go:22)      ANDQ    $127, AX
        0x0075 00117 (popcount_test.go:22)      MOVQ    AX, "".~r1+16(SP)
        0x007a 00122 (popcount_test.go:22)      RET
        0x0000 48 8b 44 24 08 48 89 c1 48 d1 e8 48 ba 55 55 55  H.D$.H..H..H.UUU
        0x0010 55 55 55 55 55 48 21 d0 48 29 c1 48 b8 33 33 33  UUUUUH!.H).H.333
        0x0020 33 33 33 33 33 48 21 c8 48 c1 e9 02 48 ba 33 33  33333H!.H...H.33
        0x0030 33 33 33 33 33 33 48 21 ca 48 01 d0 48 89 c1 48  333333H!.H..H..H
        0x0040 c1 e8 04 48 01 c8 48 b9 0f 0f 0f 0f 0f 0f 0f 0f  ...H..H.........
        0x0050 48 21 c1 48 89 c8 48 c1 e9 08 48 01 c8 48 89 c1  H!.H..H...H..H..
        0x0060 48 c1 e8 10 48 01 c8 48 89 c1 48 c1 e8 20 48 01  H...H..H..H.. H.
        0x0070 c8 48 83 e0 7f 48 89 44 24 10 c3                 .H...H.D$..
"".PopCountByClearing STEXT nosplit size=30 args=0x10 locals=0x0
        0x0000 00000 (popcount_test.go:25)      TEXT    "".PopCountByClearing(SB), NOSPLIT, $0-16
        0x0000 00000 (popcount_test.go:25)      FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (popcount_test.go:25)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:25)      MOVQ    "".x+8(SP), AX
        0x0005 00005 (popcount_test.go:25)      MOVL    $0, CX
        0x0007 00007 (popcount_test.go:27)      JMP     19
        0x0009 00009 (popcount_test.go:28)      LEAQ    -1(AX), DX
        0x000d 00013 (popcount_test.go:28)      ANDQ    DX, AX
        0x0010 00016 (popcount_test.go:31)      INCQ    CX
        0x0013 00019 (popcount_test.go:27)      TESTQ   AX, AX
        0x0016 00022 (popcount_test.go:27)      JNE     9
        0x0018 00024 (popcount_test.go:33)      MOVQ    CX, "".~r1+16(SP)
        0x001d 00029 (popcount_test.go:33)      RET
        0x0000 48 8b 44 24 08 31 c9 eb 0a 48 8d 50 ff 48 21 d0  H.D$.1...H.P.H!.
        0x0010 48 ff c1 48 85 c0 75 f1 48 89 4c 24 10 c3        H..H..u.H.L$..
"".PopCountByShifting STEXT nosplit size=54 args=0x10 locals=0x0
        0x0000 00000 (popcount_test.go:36)      TEXT    "".PopCountByShifting(SB), NOSPLIT, $0-16
        0x0000 00000 (popcount_test.go:36)      FUNCDATA        $0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
        0x0000 00000 (popcount_test.go:36)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:36)      MOVQ    "".x+8(SP), AX
        0x0005 00005 (popcount_test.go:36)      MOVL    $0, CX
        0x0007 00007 (popcount_test.go:36)      MOVL    $0, DX
        0x0009 00009 (popcount_test.go:38)      JMP     14
        0x000b 00011 (popcount_test.go:38)      INCQ    CX
        0x000e 00014 (popcount_test.go:38)      CMPQ    CX, $64
        0x0012 00018 (popcount_test.go:38)      JCC     48
        0x0014 00020 (popcount_test.go:38)      MOVL    $1, BX
        0x0019 00025 (popcount_test.go:39)      SHLQ    CX, BX
        0x001c 00028 (popcount_test.go:38)      CMPQ    CX, $64
        0x0020 00032 (popcount_test.go:39)      SBBQ    SI, SI
        0x0023 00035 (popcount_test.go:39)      ANDQ    BX, SI
        0x0026 00038 (popcount_test.go:39)      TESTQ   AX, SI
        0x0029 00041 (popcount_test.go:39)      JEQ     11
        0x002b 00043 (popcount_test.go:40)      INCQ    DX
        0x002e 00046 (popcount_test.go:39)      JMP     11
        0x0030 00048 (popcount_test.go:43)      MOVQ    DX, "".~r1+16(SP)
        0x0035 00053 (popcount_test.go:43)      RET
        0x0000 48 8b 44 24 08 31 c9 31 d2 eb 03 48 ff c1 48 83  H.D$.1.1...H..H.
        0x0010 f9 40 73 1c bb 01 00 00 00 48 d3 e3 48 83 f9 40  .@s......H..H..@
        0x0020 48 19 f6 48 21 de 48 85 c6 74 e0 48 ff c2 eb db  H..H!.H..t.H....
        0x0030 48 89 54 24 10 c3                                H.T$..
"".BenchmarkPopCount STEXT nosplit size=25 args=0x8 locals=0x0
        0x0000 00000 (popcount_test.go:48)      TEXT    "".BenchmarkPopCount(SB), NOSPLIT, $0-8
        0x0000 00000 (popcount_test.go:48)      FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
        0x0000 00000 (popcount_test.go:48)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:48)      MOVQ    "".b+8(SP), AX
        0x0005 00005 (popcount_test.go:48)      MOVL    $0, CX
        0x0007 00007 (popcount_test.go:49)      JMP     12
        0x0009 00009 (popcount_test.go:49)      INCQ    CX
        0x000c 00012 (popcount_test.go:49)      MOVQ    240(AX), DX
        0x0013 00019 (popcount_test.go:49)      CMPQ    CX, DX
        0x0016 00022 (popcount_test.go:49)      JLT     9
        0x0018 00024 (popcount_test.go:52)      RET
        0x0000 48 8b 44 24 08 31 c9 eb 03 48 ff c1 48 8b 90 f0  H.D$.1...H..H...
        0x0010 00 00 00 48 39 d1 7c f1 c3                       ...H9.|..
"".BenchmarkPopCount2 STEXT nosplit size=108 args=0x8 locals=0x0
        0x0000 00000 (popcount_test.go:56)      TEXT    "".BenchmarkPopCount2(SB), NOSPLIT, $0-8
        0x0000 00000 (popcount_test.go:56)      FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
        0x0000 00000 (popcount_test.go:56)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:56)      MOVQ    "".b+8(SP), AX
        0x0005 00005 (popcount_test.go:56)      MOVL    $0, CX
        0x0007 00007 (popcount_test.go:56)      MOVQ    CX, DX
        0x000a 00010 (popcount_test.go:58)      JMP     88
        0x000c 00012 (popcount_test.go:58)      INCQ    CX
        0x000f 00015 (popcount_test.go:59)      MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+239(SB), BX
        0x0016 00022 (popcount_test.go:59)      MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+205(SB), SI
        0x001d 00029 (popcount_test.go:59)      ADDL    SI, BX
        0x001f 00031 (popcount_test.go:59)      MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+171(SB), SI
        0x0026 00038 (popcount_test.go:59)      ADDL    SI, BX
        0x0028 00040 (popcount_test.go:59)      MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+144(SB), SI
        0x002f 00047 (popcount_test.go:59)      ADDL    SI, BX
        0x0031 00049 (popcount_test.go:59)      MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+120(SB), SI
        0x0038 00056 (popcount_test.go:59)      ADDL    SI, BX
        0x003a 00058 (popcount_test.go:59)      MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+86(SB), SI
        0x0041 00065 (popcount_test.go:59)      ADDL    SI, BX
        0x0043 00067 (popcount_test.go:59)      MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+52(SB), SI
        0x004a 00074 (popcount_test.go:59)      ADDL    SI, BX
        0x004c 00076 (popcount_test.go:59)      MOVBLZX github.com/tooru/gopl/ch11/p06popcount.pc+18(SB), SI
        0x0053 00083 (popcount_test.go:59)      ADDL    SI, BX
        0x0055 00085 (popcount_test.go:59)      MOVBLZX BL, DX
        0x0058 00088 (popcount_test.go:58)      MOVQ    240(AX), BX
        0x005f 00095 (popcount_test.go:58)      CMPQ    CX, BX
        0x0062 00098 (popcount_test.go:58)      JLT     12
        0x0064 00100 (popcount_test.go:61)      MOVQ    DX, "".benchResult(SB)
        0x006b 00107 (popcount_test.go:62)      RET
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
"".BenchmarkBitCount STEXT nosplit size=25 args=0x8 locals=0x0
        0x0000 00000 (popcount_test.go:64)      TEXT    "".BenchmarkBitCount(SB), NOSPLIT, $0-8
        0x0000 00000 (popcount_test.go:64)      FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
        0x0000 00000 (popcount_test.go:64)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:64)      MOVQ    "".b+8(SP), AX
        0x0005 00005 (popcount_test.go:64)      MOVL    $0, CX
        0x0007 00007 (popcount_test.go:65)      JMP     12
        0x0009 00009 (popcount_test.go:65)      INCQ    CX
        0x000c 00012 (popcount_test.go:65)      MOVQ    240(AX), DX
        0x0013 00019 (popcount_test.go:65)      CMPQ    CX, DX
        0x0016 00022 (popcount_test.go:65)      JLT     9
        0x0018 00024 (popcount_test.go:68)      RET
        0x0000 48 8b 44 24 08 31 c9 eb 03 48 ff c1 48 8b 90 f0  H.D$.1...H..H...
        0x0010 00 00 00 48 39 d1 7c f1 c3                       ...H9.|..
"".BenchmarkBitCount2 STEXT nosplit size=40 args=0x8 locals=0x0
        0x0000 00000 (popcount_test.go:70)      TEXT    "".BenchmarkBitCount2(SB), NOSPLIT, $0-8
        0x0000 00000 (popcount_test.go:70)      FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
        0x0000 00000 (popcount_test.go:70)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:70)      MOVQ    "".b+8(SP), AX
        0x0005 00005 (popcount_test.go:70)      MOVL    $0, CX
        0x0007 00007 (popcount_test.go:70)      MOVQ    CX, DX
        0x000a 00010 (popcount_test.go:72)      JMP     20
        0x000c 00012 (popcount_test.go:72)      INCQ    CX
        0x000f 00015 (popcount_test.go:72)      MOVL    $32, DX
        0x0014 00020 (popcount_test.go:72)      MOVQ    240(AX), BX
        0x001b 00027 (popcount_test.go:72)      CMPQ    CX, BX
        0x001e 00030 (popcount_test.go:72)      JLT     12
        0x0020 00032 (popcount_test.go:75)      MOVQ    DX, "".benchResult(SB)
        0x0027 00039 (popcount_test.go:76)      RET
        0x0000 48 8b 44 24 08 31 c9 48 89 ca eb 08 48 ff c1 ba  H.D$.1.H....H...
        0x0010 20 00 00 00 48 8b 98 f0 00 00 00 48 39 d9 7c ec   ...H......H9.|.
        0x0020 48 89 15 00 00 00 00 c3                          H.......
        rel 35+4 t=15 "".benchResult+0
"".BenchmarkPopCountByClearing STEXT size=99 args=0x8 locals=0x20
        0x0000 00000 (popcount_test.go:78)      TEXT    "".BenchmarkPopCountByClearing(SB), $32-8
        0x0000 00000 (popcount_test.go:78)      MOVQ    (TLS), CX
        0x0009 00009 (popcount_test.go:78)      CMPQ    SP, 16(CX)
        0x000d 00013 (popcount_test.go:78)      JLS     92
        0x000f 00015 (popcount_test.go:78)      SUBQ    $32, SP
        0x0013 00019 (popcount_test.go:78)      MOVQ    BP, 24(SP)
        0x0018 00024 (popcount_test.go:78)      LEAQ    24(SP), BP
        0x001d 00029 (popcount_test.go:78)      FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
        0x001d 00029 (popcount_test.go:78)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x001d 00029 (popcount_test.go:78)      MOVL    $0, AX
        0x001f 00031 (popcount_test.go:79)      JMP     65
        0x0021 00033 (popcount_test.go:79)      MOVQ    AX, "".i+16(SP)
        0x0026 00038 (popcount_test.go:79)      MOVQ    $1311768467294899695, AX
        0x0030 00048 (popcount_test.go:80)      MOVQ    AX, (SP)
        0x0034 00052 (popcount_test.go:80)      PCDATA  $0, $0
        0x0034 00052 (popcount_test.go:80)      CALL    "".PopCountByClearing(SB)
        0x0039 00057 (popcount_test.go:80)      MOVQ    "".i+16(SP), AX
        0x003e 00062 (popcount_test.go:79)      INCQ    AX
        0x0041 00065 (popcount_test.go:79)      MOVQ    "".b+40(SP), CX
        0x0046 00070 (popcount_test.go:79)      MOVQ    240(CX), DX
        0x004d 00077 (popcount_test.go:79)      CMPQ    AX, DX
        0x0050 00080 (popcount_test.go:79)      JLT     33
        0x0052 00082 (popcount_test.go:82)      MOVQ    24(SP), BP
        0x0057 00087 (popcount_test.go:82)      ADDQ    $32, SP
        0x005b 00091 (popcount_test.go:82)      RET
        0x005c 00092 (popcount_test.go:82)      NOP
        0x005c 00092 (popcount_test.go:78)      PCDATA  $0, $-1
        0x005c 00092 (popcount_test.go:78)      CALL    runtime.morestack_noctxt(SB)
        0x0061 00097 (popcount_test.go:78)      JMP     0
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 4d 48  dH..%....H;a.vMH
        0x0010 83 ec 20 48 89 6c 24 18 48 8d 6c 24 18 31 c0 eb  .. H.l$.H.l$.1..
        0x0020 20 48 89 44 24 10 48 b8 ef cd ab 90 78 56 34 12   H.D$.H.....xV4.
        0x0030 48 89 04 24 e8 00 00 00 00 48 8b 44 24 10 48 ff  H..$.....H.D$.H.
        0x0040 c0 48 8b 4c 24 28 48 8b 91 f0 00 00 00 48 39 d0  .H.L$(H......H9.
        0x0050 7c cf 48 8b 6c 24 18 48 83 c4 20 c3 e8 00 00 00  |.H.l$.H.. .....
        0x0060 00 eb 9d                                         ...
        rel 5+4 t=16 TLS+0
        rel 53+4 t=8 "".PopCountByClearing+0
        rel 93+4 t=8 runtime.morestack_noctxt+0
"".BenchmarkPopCountByShifting STEXT size=99 args=0x8 locals=0x20
        0x0000 00000 (popcount_test.go:84)      TEXT    "".BenchmarkPopCountByShifting(SB), $32-8
        0x0000 00000 (popcount_test.go:84)      MOVQ    (TLS), CX
        0x0009 00009 (popcount_test.go:84)      CMPQ    SP, 16(CX)
        0x000d 00013 (popcount_test.go:84)      JLS     92
        0x000f 00015 (popcount_test.go:84)      SUBQ    $32, SP
        0x0013 00019 (popcount_test.go:84)      MOVQ    BP, 24(SP)
        0x0018 00024 (popcount_test.go:84)      LEAQ    24(SP), BP
        0x001d 00029 (popcount_test.go:84)      FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
        0x001d 00029 (popcount_test.go:84)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x001d 00029 (popcount_test.go:84)      MOVL    $0, AX
        0x001f 00031 (popcount_test.go:85)      JMP     65
        0x0021 00033 (popcount_test.go:85)      MOVQ    AX, "".i+16(SP)
        0x0026 00038 (popcount_test.go:85)      MOVQ    $1311768467294899695, AX
        0x0030 00048 (popcount_test.go:86)      MOVQ    AX, (SP)
        0x0034 00052 (popcount_test.go:86)      PCDATA  $0, $0
        0x0034 00052 (popcount_test.go:86)      CALL    "".PopCountByShifting(SB)
        0x0039 00057 (popcount_test.go:86)      MOVQ    "".i+16(SP), AX
        0x003e 00062 (popcount_test.go:85)      INCQ    AX
        0x0041 00065 (popcount_test.go:85)      MOVQ    "".b+40(SP), CX
        0x0046 00070 (popcount_test.go:85)      MOVQ    240(CX), DX
        0x004d 00077 (popcount_test.go:85)      CMPQ    AX, DX
        0x0050 00080 (popcount_test.go:85)      JLT     33
        0x0052 00082 (popcount_test.go:88)      MOVQ    24(SP), BP
        0x0057 00087 (popcount_test.go:88)      ADDQ    $32, SP
        0x005b 00091 (popcount_test.go:88)      RET
        0x005c 00092 (popcount_test.go:88)      NOP
        0x005c 00092 (popcount_test.go:84)      PCDATA  $0, $-1
        0x005c 00092 (popcount_test.go:84)      CALL    runtime.morestack_noctxt(SB)
        0x0061 00097 (popcount_test.go:84)      JMP     0
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 4d 48  dH..%....H;a.vMH
        0x0010 83 ec 20 48 89 6c 24 18 48 8d 6c 24 18 31 c0 eb  .. H.l$.H.l$.1..
        0x0020 20 48 89 44 24 10 48 b8 ef cd ab 90 78 56 34 12   H.D$.H.....xV4.
        0x0030 48 89 04 24 e8 00 00 00 00 48 8b 44 24 10 48 ff  H..$.....H.D$.H.
        0x0040 c0 48 8b 4c 24 28 48 8b 91 f0 00 00 00 48 39 d0  .H.L$(H......H9.
        0x0050 7c cf 48 8b 6c 24 18 48 83 c4 20 c3 e8 00 00 00  |.H.l$.H.. .....
        0x0060 00 eb 9d                                         ...
        rel 5+4 t=16 TLS+0
        rel 53+4 t=8 "".PopCountByShifting+0
        rel 93+4 t=8 runtime.morestack_noctxt+0
"".BenchmarkEmptyFunction STEXT nosplit size=25 args=0x8 locals=0x0
        0x0000 00000 (popcount_test.go:90)      TEXT    "".BenchmarkEmptyFunction(SB), NOSPLIT, $0-8
        0x0000 00000 (popcount_test.go:90)      FUNCDATA        $0, gclocals·a36216b97439c93dafebe03e7f0808b5(SB)
        0x0000 00000 (popcount_test.go:90)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:90)      MOVQ    "".b+8(SP), AX
        0x0005 00005 (popcount_test.go:90)      MOVL    $0, CX
        0x0007 00007 (popcount_test.go:91)      JMP     12
        0x0009 00009 (popcount_test.go:91)      INCQ    CX
        0x000c 00012 (popcount_test.go:91)      MOVQ    240(AX), DX
        0x0013 00019 (popcount_test.go:91)      CMPQ    CX, DX
        0x0016 00022 (popcount_test.go:91)      JLT     9
        0x0018 00024 (popcount_test.go:94)      RET
        0x0000 48 8b 44 24 08 31 c9 eb 03 48 ff c1 48 8b 90 f0  H.D$.1...H..H...
        0x0010 00 00 00 48 39 d1 7c f1 c3                       ...H9.|..
"".empty STEXT nosplit size=1 args=0x0 locals=0x0
        0x0000 00000 (popcount_test.go:96)      TEXT    "".empty(SB), NOSPLIT, $0-0
        0x0000 00000 (popcount_test.go:96)      FUNCDATA        $0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:96)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x0000 00000 (popcount_test.go:97)      RET
        0x0000 c3                                               .
"".init STEXT size=96 args=0x0 locals=0x8
        0x0000 00000 (<autogenerated>:1)        TEXT    "".init(SB), $8-0
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     89
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
        0x003f 00063 (<autogenerated>:1)        CALL    testing.init(SB)
        0x0044 00068 (<autogenerated>:1)        PCDATA  $0, $0
        0x0044 00068 (<autogenerated>:1)        CALL    github.com/tooru/gopl/ch11/p06popcount.init(SB)
        0x0049 00073 (<autogenerated>:1)        MOVB    $2, "".initdone·(SB)
        0x0050 00080 (<autogenerated>:1)        MOVQ    (SP), BP
        0x0054 00084 (<autogenerated>:1)        ADDQ    $8, SP
        0x0058 00088 (<autogenerated>:1)        RET
        0x0059 00089 (<autogenerated>:1)        NOP
        0x0059 00089 (<autogenerated>:1)        PCDATA  $0, $-1
        0x0059 00089 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x005e 00094 (<autogenerated>:1)        JMP     0
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 4a 48  dH..%....H;a.vJH
        0x0010 83 ec 08 48 89 2c 24 48 8d 2c 24 0f b6 05 00 00  ...H.,$H.,$.....
        0x0020 00 00 3c 01 76 09 48 8b 2c 24 48 83 c4 08 c3 75  ..<.v.H.,$H....u
        0x0030 07 e8 00 00 00 00 0f 0b c6 05 00 00 00 00 01 e8  ................
        0x0040 00 00 00 00 e8 00 00 00 00 c6 05 00 00 00 00 02  ................
        0x0050 48 8b 2c 24 48 83 c4 08 c3 e8 00 00 00 00 eb a0  H.,$H...........
        rel 5+4 t=16 TLS+0
        rel 30+4 t=15 "".initdone·+0
        rel 50+4 t=8 runtime.throwinit+0
        rel 58+4 t=15 "".initdone·+-1
        rel 64+4 t=8 testing.init+0
        rel 69+4 t=8 github.com/tooru/gopl/ch11/p06popcount.init+0
        rel 75+4 t=15 "".initdone·+-1
        rel 90+4 t=8 runtime.morestack_noctxt+0
sync.Locker.Lock STEXT dupok size=90 args=0x10 locals=0x10
        0x0000 00000 (<autogenerated>:1)        TEXT    sync.Locker.Lock(SB), DUPOK|WRAPPER, $16-16
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     68
        0x000f 00015 (<autogenerated>:1)        SUBQ    $16, SP
        0x0013 00019 (<autogenerated>:1)        MOVQ    BP, 8(SP)
        0x0018 00024 (<autogenerated>:1)        LEAQ    8(SP), BP
        0x001d 00029 (<autogenerated>:1)        MOVQ    32(CX), BX
        0x0021 00033 (<autogenerated>:1)        TESTQ   BX, BX
        0x0024 00036 (<autogenerated>:1)        JNE     75
        0x0026 00038 (<autogenerated>:1)        NOP
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $0, gclocals·dc9b0298814590ca3ffc3a889546fc8b(SB)
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
        0x0026 00038 (<autogenerated>:1)        MOVQ    ""..this+24(SP), AX
        0x002b 00043 (<autogenerated>:1)        MOVQ    32(AX), AX
        0x002f 00047 (<autogenerated>:1)        MOVQ    ""..this+32(SP), CX
        0x0034 00052 (<autogenerated>:1)        MOVQ    CX, (SP)
        0x0038 00056 (<autogenerated>:1)        PCDATA  $0, $1
        0x0038 00056 (<autogenerated>:1)        CALL    AX
        0x003a 00058 (<autogenerated>:1)        MOVQ    8(SP), BP
        0x003f 00063 (<autogenerated>:1)        ADDQ    $16, SP
        0x0043 00067 (<autogenerated>:1)        RET
        0x0044 00068 (<autogenerated>:1)        NOP
        0x0044 00068 (<autogenerated>:1)        PCDATA  $0, $-1
        0x0044 00068 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x0049 00073 (<autogenerated>:1)        JMP     0
        0x004b 00075 (<autogenerated>:1)        LEAQ    24(SP), DI
        0x0050 00080 (<autogenerated>:1)        CMPQ    (BX), DI
        0x0053 00083 (<autogenerated>:1)        JNE     38
        0x0055 00085 (<autogenerated>:1)        MOVQ    SP, (BX)
        0x0058 00088 (<autogenerated>:1)        JMP     38
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 35 48  dH..%....H;a.v5H
        0x0010 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 48 8b 59  ...H.l$.H.l$.H.Y
        0x0020 20 48 85 db 75 25 48 8b 44 24 18 48 8b 40 20 48   H..u%H.D$.H.@ H
        0x0030 8b 4c 24 20 48 89 0c 24 ff d0 48 8b 6c 24 08 48  .L$ H..$..H.l$.H
        0x0040 83 c4 10 c3 e8 00 00 00 00 eb b5 48 8d 7c 24 18  ...........H.|$.
        0x0050 48 39 3b 75 d1 48 89 23 eb cc                    H9;u.H.#..
        rel 5+4 t=16 TLS+0
        rel 56+0 t=11 +0
        rel 69+4 t=8 runtime.morestack_noctxt+0
sync.Locker.Unlock STEXT dupok size=90 args=0x10 locals=0x10
        0x0000 00000 (<autogenerated>:1)        TEXT    sync.Locker.Unlock(SB), DUPOK|WRAPPER, $16-16
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     68
        0x000f 00015 (<autogenerated>:1)        SUBQ    $16, SP
        0x0013 00019 (<autogenerated>:1)        MOVQ    BP, 8(SP)
        0x0018 00024 (<autogenerated>:1)        LEAQ    8(SP), BP
        0x001d 00029 (<autogenerated>:1)        MOVQ    32(CX), BX
        0x0021 00033 (<autogenerated>:1)        TESTQ   BX, BX
        0x0024 00036 (<autogenerated>:1)        JNE     75
        0x0026 00038 (<autogenerated>:1)        NOP
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $0, gclocals·dc9b0298814590ca3ffc3a889546fc8b(SB)
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
        0x0026 00038 (<autogenerated>:1)        MOVQ    ""..this+24(SP), AX
        0x002b 00043 (<autogenerated>:1)        MOVQ    40(AX), AX
        0x002f 00047 (<autogenerated>:1)        MOVQ    ""..this+32(SP), CX
        0x0034 00052 (<autogenerated>:1)        MOVQ    CX, (SP)
        0x0038 00056 (<autogenerated>:1)        PCDATA  $0, $1
        0x0038 00056 (<autogenerated>:1)        CALL    AX
        0x003a 00058 (<autogenerated>:1)        MOVQ    8(SP), BP
        0x003f 00063 (<autogenerated>:1)        ADDQ    $16, SP
        0x0043 00067 (<autogenerated>:1)        RET
        0x0044 00068 (<autogenerated>:1)        NOP
        0x0044 00068 (<autogenerated>:1)        PCDATA  $0, $-1
        0x0044 00068 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x0049 00073 (<autogenerated>:1)        JMP     0
        0x004b 00075 (<autogenerated>:1)        LEAQ    24(SP), DI
        0x0050 00080 (<autogenerated>:1)        CMPQ    (BX), DI
        0x0053 00083 (<autogenerated>:1)        JNE     38
        0x0055 00085 (<autogenerated>:1)        MOVQ    SP, (BX)
        0x0058 00088 (<autogenerated>:1)        JMP     38
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 35 48  dH..%....H;a.v5H
        0x0010 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 48 8b 59  ...H.l$.H.l$.H.Y
        0x0020 20 48 85 db 75 25 48 8b 44 24 18 48 8b 40 28 48   H..u%H.D$.H.@(H
        0x0030 8b 4c 24 20 48 89 0c 24 ff d0 48 8b 6c 24 08 48  .L$ H..$..H.l$.H
        0x0040 83 c4 10 c3 e8 00 00 00 00 eb b5 48 8d 7c 24 18  ...........H.|$.
        0x0050 48 39 3b 75 d1 48 89 23 eb cc                    H9;u.H.#..
        rel 5+4 t=16 TLS+0
        rel 56+0 t=11 +0
        rel 69+4 t=8 runtime.morestack_noctxt+0
go.info."".BitCount SDWARFINFO size=56
        0x0000 02 22 22 2e 42 69 74 43 6f 75 6e 74 00 00 00 00  ."".BitCount....
        0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 01 9c 01  ................
        0x0020 05 78 00 01 9c 00 00 00 00 05 7e 72 31 00 04 9c  .x........~r1...
        0x0030 11 08 22 00 00 00 00 00                          ..".....
        rel 13+8 t=1 "".BitCount+0
        rel 21+8 t=1 "".BitCount+123
        rel 37+4 t=28 go.info.uint64+0
        rel 51+4 t=28 go.info.int+0
go.range."".BitCount SDWARFRANGE size=0
go.info."".PopCountByClearing SDWARFINFO size=66
        0x0000 02 22 22 2e 50 6f 70 43 6f 75 6e 74 42 79 43 6c  ."".PopCountByCl
        0x0010 65 61 72 69 6e 67 00 00 00 00 00 00 00 00 00 00  earing..........
        0x0020 00 00 00 00 00 00 00 01 9c 01 05 78 00 01 9c 00  ...........x....
        0x0030 00 00 00 05 7e 72 31 00 04 9c 11 08 22 00 00 00  ....~r1....."...
        0x0040 00 00                                            ..
        rel 23+8 t=1 "".PopCountByClearing+0
        rel 31+8 t=1 "".PopCountByClearing+30
        rel 47+4 t=28 go.info.uint64+0
        rel 61+4 t=28 go.info.int+0
go.range."".PopCountByClearing SDWARFRANGE size=0
go.info."".PopCountByShifting SDWARFINFO size=66
        0x0000 02 22 22 2e 50 6f 70 43 6f 75 6e 74 42 79 53 68  ."".PopCountBySh
        0x0010 69 66 74 69 6e 67 00 00 00 00 00 00 00 00 00 00  ifting..........
        0x0020 00 00 00 00 00 00 00 01 9c 01 05 78 00 01 9c 00  ...........x....
        0x0030 00 00 00 05 7e 72 31 00 04 9c 11 08 22 00 00 00  ....~r1....."...
        0x0040 00 00                                            ..
        rel 23+8 t=1 "".PopCountByShifting+0
        rel 31+8 t=1 "".PopCountByShifting+54
        rel 47+4 t=28 go.info.uint64+0
        rel 61+4 t=28 go.info.int+0
go.range."".PopCountByShifting SDWARFRANGE size=0
go.info."".BenchmarkPopCount SDWARFINFO size=51
        0x0000 02 22 22 2e 42 65 6e 63 68 6d 61 72 6b 50 6f 70  ."".BenchmarkPop
        0x0010 43 6f 75 6e 74 00 00 00 00 00 00 00 00 00 00 00  Count...........
        0x0020 00 00 00 00 00 00 01 9c 01 05 62 00 01 9c 00 00  ..........b.....
        0x0030 00 00 00                                         ...
        rel 22+8 t=1 "".BenchmarkPopCount+0
        rel 30+8 t=1 "".BenchmarkPopCount+25
        rel 46+4 t=28 go.info.*testing.B+0
go.range."".BenchmarkPopCount SDWARFRANGE size=0
go.info."".BenchmarkPopCount2 SDWARFINFO size=52
        0x0000 02 22 22 2e 42 65 6e 63 68 6d 61 72 6b 50 6f 70  ."".BenchmarkPop
        0x0010 43 6f 75 6e 74 32 00 00 00 00 00 00 00 00 00 00  Count2..........
        0x0020 00 00 00 00 00 00 00 01 9c 01 05 62 00 01 9c 00  ...........b....
        0x0030 00 00 00 00                                      ....
        rel 23+8 t=1 "".BenchmarkPopCount2+0
        rel 31+8 t=1 "".BenchmarkPopCount2+108
        rel 47+4 t=28 go.info.*testing.B+0
go.range."".BenchmarkPopCount2 SDWARFRANGE size=0
go.info."".BenchmarkBitCount SDWARFINFO size=51
        0x0000 02 22 22 2e 42 65 6e 63 68 6d 61 72 6b 42 69 74  ."".BenchmarkBit
        0x0010 43 6f 75 6e 74 00 00 00 00 00 00 00 00 00 00 00  Count...........
        0x0020 00 00 00 00 00 00 01 9c 01 05 62 00 01 9c 00 00  ..........b.....
        0x0030 00 00 00                                         ...
        rel 22+8 t=1 "".BenchmarkBitCount+0
        rel 30+8 t=1 "".BenchmarkBitCount+25
        rel 46+4 t=28 go.info.*testing.B+0
go.range."".BenchmarkBitCount SDWARFRANGE size=0
go.info."".BenchmarkBitCount2 SDWARFINFO size=52
        0x0000 02 22 22 2e 42 65 6e 63 68 6d 61 72 6b 42 69 74  ."".BenchmarkBit
        0x0010 43 6f 75 6e 74 32 00 00 00 00 00 00 00 00 00 00  Count2..........
        0x0020 00 00 00 00 00 00 00 01 9c 01 05 62 00 01 9c 00  ...........b....
        0x0030 00 00 00 00                                      ....
        rel 23+8 t=1 "".BenchmarkBitCount2+0
        rel 31+8 t=1 "".BenchmarkBitCount2+40
        rel 47+4 t=28 go.info.*testing.B+0
go.range."".BenchmarkBitCount2 SDWARFRANGE size=0
go.info."".BenchmarkPopCountByClearing SDWARFINFO size=73
        0x0000 02 22 22 2e 42 65 6e 63 68 6d 61 72 6b 50 6f 70  ."".BenchmarkPop
        0x0010 43 6f 75 6e 74 42 79 43 6c 65 61 72 69 6e 67 00  CountByClearing.
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 01 9c 01 04 69 00 04 9c 11 68 22 00 00 00 00 05  ....i....h".....
        0x0040 62 00 01 9c 00 00 00 00 00                       b........
        rel 32+8 t=1 "".BenchmarkPopCountByClearing+0
        rel 40+8 t=1 "".BenchmarkPopCountByClearing+99
        rel 59+4 t=28 go.info.int+0
        rel 68+4 t=28 go.info.*testing.B+0
go.range."".BenchmarkPopCountByClearing SDWARFRANGE size=0
go.info."".BenchmarkPopCountByShifting SDWARFINFO size=73
        0x0000 02 22 22 2e 42 65 6e 63 68 6d 61 72 6b 50 6f 70  ."".BenchmarkPop
        0x0010 43 6f 75 6e 74 42 79 53 68 69 66 74 69 6e 67 00  CountByShifting.
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 01 9c 01 04 69 00 04 9c 11 68 22 00 00 00 00 05  ....i....h".....
        0x0040 62 00 01 9c 00 00 00 00 00                       b........
        rel 32+8 t=1 "".BenchmarkPopCountByShifting+0
        rel 40+8 t=1 "".BenchmarkPopCountByShifting+99
        rel 59+4 t=28 go.info.int+0
        rel 68+4 t=28 go.info.*testing.B+0
go.range."".BenchmarkPopCountByShifting SDWARFRANGE size=0
go.info."".BenchmarkEmptyFunction SDWARFINFO size=56
        0x0000 02 22 22 2e 42 65 6e 63 68 6d 61 72 6b 45 6d 70  ."".BenchmarkEmp
        0x0010 74 79 46 75 6e 63 74 69 6f 6e 00 00 00 00 00 00  tyFunction......
        0x0020 00 00 00 00 00 00 00 00 00 00 00 01 9c 01 05 62  ...............b
        0x0030 00 01 9c 00 00 00 00 00                          ........
        rel 27+8 t=1 "".BenchmarkEmptyFunction+0
        rel 35+8 t=1 "".BenchmarkEmptyFunction+25
        rel 51+4 t=28 go.info.*testing.B+0
go.range."".BenchmarkEmptyFunction SDWARFRANGE size=0
go.info."".empty SDWARFINFO size=30
        0x0000 02 22 22 2e 65 6d 70 74 79 00 00 00 00 00 00 00  ."".empty.......
        0x0010 00 00 00 00 00 00 00 00 00 00 01 9c 01 00        ..............
        rel 10+8 t=1 "".empty+0
        rel 18+8 t=1 "".empty+1
go.range."".empty SDWARFRANGE size=0
go.info."".init SDWARFINFO size=29
        0x0000 02 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
        0x0010 00 00 00 00 00 00 00 00 00 01 9c 01 00           .............
        rel 9+8 t=1 "".init+0
        rel 17+8 t=1 "".init+96
go.range."".init SDWARFRANGE size=0
"".benchResult SNOPTRBSS size=8
"".initdone· SNOPTRBSS size=1
go.info.sync.Locker.Lock SDWARFINFO dupok size=51
        0x0000 02 73 79 6e 63 2e 4c 6f 63 6b 65 72 2e 4c 6f 63  .sync.Locker.Loc
        0x0010 6b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  k...............
        0x0020 00 00 01 9c 01 05 2e 74 68 69 73 00 01 9c 00 00  .......this.....
        0x0030 00 00 00                                         ...
        rel 18+8 t=1 sync.Locker.Lock+0
        rel 26+8 t=1 sync.Locker.Lock+90
        rel 46+4 t=28 go.info.sync.Locker+0
go.range.sync.Locker.Lock SDWARFRANGE dupok size=0
go.info.sync.Locker.Unlock SDWARFINFO dupok size=53
        0x0000 02 73 79 6e 63 2e 4c 6f 63 6b 65 72 2e 55 6e 6c  .sync.Locker.Unl
        0x0010 6f 63 6b 00 00 00 00 00 00 00 00 00 00 00 00 00  ock.............
        0x0020 00 00 00 00 01 9c 01 05 2e 74 68 69 73 00 01 9c  .........this...
        0x0030 00 00 00 00 00                                   .....
        rel 20+8 t=1 sync.Locker.Unlock+0
        rel 28+8 t=1 sync.Locker.Unlock+90
        rel 48+4 t=28 go.info.sync.Locker+0
go.range.sync.Locker.Unlock SDWARFRANGE dupok size=0
go.itab.*sync.rlocker,sync.Locker SNOPTRDATA dupok size=48
        0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0010 00 00 00 00 00 00 00 00 73 28 1c e5              ........s(..
        rel 0+8 t=1 type.sync.Locker+0
        rel 8+8 t=1 type.*sync.rlocker+0
go.itablink.*sync.rlocker,sync.Locker SRODATA dupok size=8
        0x0000 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 go.itab.*sync.rlocker,sync.Locker+0
type..importpath.github.com/tooru/gopl/ch11/p06popcount. SRODATA dupok size=41
        0x0000 00 00 26 67 69 74 68 75 62 2e 63 6f 6d 2f 74 6f  ..&github.com/to
        0x0010 6f 72 75 2f 67 6f 70 6c 2f 63 68 31 31 2f 70 30  oru/gopl/ch11/p0
        0x0020 36 70 6f 70 63 6f 75 6e 74                       6popcount
type..importpath.testing. SRODATA dupok size=10
        0x0000 00 00 07 74 65 73 74 69 6e 67                    ...testing
gclocals·f207267fbf96a0178e8758c6e3e0ce28 SRODATA dupok size=9
        0x0000 01 00 00 00 02 00 00 00 00                       .........
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
        0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·a36216b97439c93dafebe03e7f0808b5 SRODATA dupok size=9
        0x0000 01 00 00 00 01 00 00 00 01                       .........
gclocals·dc9b0298814590ca3ffc3a889546fc8b SRODATA dupok size=10
        0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
        0x0000 02 00 00 00 00 00 00 00                          ........
# testmain
"".init.0 STEXT size=111 args=0x0 locals=0x18
        0x0000 00000 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      TEXT    "".init.0(SB), $24-0
        0x0000 00000 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      MOVQ    (TLS), CX
        0x0009 00009 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      CMPQ    SP, 16(CX)
        0x000d 00013 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      JLS     104
        0x000f 00015 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      SUBQ    $24, SP
        0x0013 00019 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      MOVQ    BP, 16(SP)
        0x0018 00024 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      LEAQ    16(SP), BP
        0x001d 00029 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      FUNCDATA        $0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x001d 00029 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      FUNCDATA        $1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
        0x001d 00029 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      MOVQ    $38, testing/internal/testdeps.ImportPath+8(SB)
        0x0028 00040 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      MOVL    runtime.writeBarrier(SB), AX
        0x002e 00046 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      TESTL   AX, AX
        0x0030 00048 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      JNE     74
        0x0032 00050 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      LEAQ    go.string."github.com/tooru/gopl/ch11/p06popcount"(SB), AX
        0x0039 00057 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      MOVQ    AX, testing/internal/testdeps.ImportPath(SB)
        0x0040 00064 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:50)      MOVQ    16(SP), BP
        0x0045 00069 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:50)      ADDQ    $24, SP
        0x0049 00073 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:50)      RET
        0x004a 00074 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:50)      LEAQ    testing/internal/testdeps.ImportPath(SB), AX
        0x0051 00081 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      MOVQ    AX, (SP)
        0x0055 00085 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      LEAQ    go.string."github.com/tooru/gopl/ch11/p06popcount"(SB), AX
        0x005c 00092 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      MOVQ    AX, 8(SP)
        0x0061 00097 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      PCDATA  $0, $0
        0x0061 00097 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      CALL    runtime.writebarrierptr(SB)
        0x0066 00102 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      JMP     64
        0x0068 00104 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:49)      NOP
        0x0068 00104 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      PCDATA  $0, $-1
        0x0068 00104 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      CALL    runtime.morestack_noctxt(SB)
        0x006d 00109 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:48)      JMP     0
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 59 48  dH..%....H;a.vYH
        0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 48 c7 05  ...H.l$.H.l$.H..
        0x0020 00 00 00 00 26 00 00 00 8b 05 00 00 00 00 85 c0  ....&...........
        0x0030 75 18 48 8d 05 00 00 00 00 48 89 05 00 00 00 00  u.H......H......
        0x0040 48 8b 6c 24 10 48 83 c4 18 c3 48 8d 05 00 00 00  H.l$.H....H.....
        0x0050 00 48 89 04 24 48 8d 05 00 00 00 00 48 89 44 24  .H..$H......H.D$
        0x0060 08 e8 00 00 00 00 eb d8 e8 00 00 00 00 eb 91     ...............
        rel 5+4 t=16 TLS+0
        rel 32+4 t=15 testing/internal/testdeps.ImportPath+4
        rel 42+4 t=15 runtime.writeBarrier+0
        rel 53+4 t=15 go.string."github.com/tooru/gopl/ch11/p06popcount"+0
        rel 60+4 t=15 testing/internal/testdeps.ImportPath+0
        rel 77+4 t=15 testing/internal/testdeps.ImportPath+0
        rel 88+4 t=15 go.string."github.com/tooru/gopl/ch11/p06popcount"+0
        rel 98+4 t=8 runtime.writebarrierptr+0
        rel 105+4 t=8 runtime.morestack_noctxt+0
"".main STEXT size=253 args=0x0 locals=0x70
        0x0000 00000 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      TEXT    "".main(SB), $112-0
        0x0000 00000 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      MOVQ    (TLS), CX
        0x0009 00009 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      CMPQ    SP, 16(CX)
        0x000d 00013 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      JLS     243
        0x0013 00019 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      SUBQ    $112, SP
        0x0017 00023 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      MOVQ    BP, 104(SP)
        0x001c 00028 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      LEAQ    104(SP), BP
        0x0021 00033 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      FUNCDATA        $0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
        0x0021 00033 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      FUNCDATA        $1, gclocals·3688d5e9ace7aa756db172cd5f0c989a(SB)
        0x0021 00033 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    "".tests(SB), AX
        0x0028 00040 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    "".tests+8(SB), CX
        0x002f 00047 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    "".tests+16(SB), DX
        0x0036 00054 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    "".benchmarks(SB), BX
        0x003d 00061 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    "".benchmarks+8(SB), SI
        0x0044 00068 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    "".benchmarks+16(SB), R8
        0x004b 00075 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    "".examples(SB), R9
        0x0052 00082 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    "".examples+8(SB), R10
        0x0059 00089 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    "".examples+16(SB), R11
        0x0060 00096 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    $0, ""..autotmp_14+16(SP)
        0x0069 00105 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      LEAQ    ""..autotmp_14+24(SP), DI
        0x006e 00110 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      XORPS   X0, X0
        0x0071 00113 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      ADDQ    $-48, DI
        0x0075 00117 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      DUFFZERO        $277
        0x0088 00136 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      LEAQ    go.itab.testing/internal/testdeps.TestDeps,testing.testDeps(SB), R12
        0x008f 00143 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    R12, ""..autotmp_14+16(SP)
        0x0094 00148 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      LEAQ    runtime.zerobase(SB), R12
        0x009b 00155 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    R12, ""..autotmp_14+24(SP)
        0x00a0 00160 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    AX, ""..autotmp_14+32(SP)
        0x00a5 00165 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    CX, ""..autotmp_14+40(SP)
        0x00aa 00170 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    DX, ""..autotmp_14+48(SP)
        0x00af 00175 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    BX, ""..autotmp_14+56(SP)
        0x00b4 00180 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    SI, ""..autotmp_14+64(SP)
        0x00b9 00185 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    R8, ""..autotmp_14+72(SP)
        0x00be 00190 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    R9, ""..autotmp_14+80(SP)
        0x00c3 00195 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    R10, ""..autotmp_14+88(SP)
        0x00c8 00200 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      MOVQ    R11, ""..autotmp_14+96(SP)
        0x00cd 00205 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)      LEAQ    ""..autotmp_14+16(SP), AX
        0x00d2 00210 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:58)      MOVQ    AX, (SP)
        0x00d6 00214 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:58)      PCDATA  $0, $1
        0x00d6 00214 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:58)      CALL    testing.(*M).Run(SB)
        0x00db 00219 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:58)      MOVQ    8(SP), AX
        0x00e0 00224 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:58)      MOVQ    AX, (SP)
        0x00e4 00228 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:58)      PCDATA  $0, $1
        0x00e4 00228 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:58)      CALL    os.Exit(SB)
        0x00e9 00233 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:60)      MOVQ    104(SP), BP
        0x00ee 00238 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:60)      ADDQ    $112, SP
        0x00f2 00242 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:60)      RET
        0x00f3 00243 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:60)      NOP
        0x00f3 00243 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      PCDATA  $0, $-1
        0x00f3 00243 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      CALL    runtime.morestack_noctxt(SB)
        0x00f8 00248 (/tmp/go-build625995715/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)      JMP     0
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 e0  dH..%....H;a....
        0x0010 00 00 00 48 83 ec 70 48 89 6c 24 68 48 8d 6c 24  ...H..pH.l$hH.l$
        0x0020 68 48 8b 05 00 00 00 00 48 8b 0d 00 00 00 00 48  hH......H......H
        0x0030 8b 15 00 00 00 00 48 8b 1d 00 00 00 00 48 8b 35  ......H......H.5
        0x0040 00 00 00 00 4c 8b 05 00 00 00 00 4c 8b 0d 00 00  ....L......L....
        0x0050 00 00 4c 8b 15 00 00 00 00 4c 8b 1d 00 00 00 00  ..L......L......
        0x0060 48 c7 44 24 10 00 00 00 00 48 8d 7c 24 18 0f 57  H.D$.....H.|$..W
        0x0070 c0 48 83 c7 d0 48 89 6c 24 f0 48 8d 6c 24 f0 e8  .H...H.l$.H.l$..
        0x0080 00 00 00 00 48 8b 6d 00 4c 8d 25 00 00 00 00 4c  ....H.m.L.%....L
        0x0090 89 64 24 10 4c 8d 25 00 00 00 00 4c 89 64 24 18  .d$.L.%....L.d$.
        0x00a0 48 89 44 24 20 48 89 4c 24 28 48 89 54 24 30 48  H.D$ H.L$(H.T$0H
        0x00b0 89 5c 24 38 48 89 74 24 40 4c 89 44 24 48 4c 89  .\$8H.t$@L.D$HL.
        0x00c0 4c 24 50 4c 89 54 24 58 4c 89 5c 24 60 48 8d 44  L$PL.T$XL.\$`H.D
        0x00d0 24 10 48 89 04 24 e8 00 00 00 00 48 8b 44 24 08  $.H..$.....H.D$.
        0x00e0 48 89 04 24 e8 00 00 00 00 48 8b 6c 24 68 48 83  H..$.....H.l$hH.
        0x00f0 c4 70 c3 e8 00 00 00 00 e9 03 ff ff ff           .p...........
        rel 5+4 t=16 TLS+0
        rel 36+4 t=15 "".tests+0
        rel 43+4 t=15 "".tests+8
        rel 50+4 t=15 "".tests+16
        rel 57+4 t=15 "".benchmarks+0
        rel 64+4 t=15 "".benchmarks+8
        rel 71+4 t=15 "".benchmarks+16
        rel 78+4 t=15 "".examples+0
        rel 85+4 t=15 "".examples+8
        rel 92+4 t=15 "".examples+16
        rel 128+4 t=8 runtime.duffzero+277
        rel 139+4 t=15 go.itab.testing/internal/testdeps.TestDeps,testing.testDeps+0
        rel 151+4 t=15 runtime.zerobase+0
        rel 215+4 t=8 testing.(*M).Run+0
        rel 229+4 t=8 os.Exit+0
        rel 244+4 t=8 runtime.morestack_noctxt+0
"".init STEXT size=116 args=0x0 locals=0x8
        0x0000 00000 (<autogenerated>:1)        TEXT    "".init(SB), $8-0
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     109
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
        0x003f 00063 (<autogenerated>:1)        CALL    os.init(SB)
        0x0044 00068 (<autogenerated>:1)        PCDATA  $0, $0
        0x0044 00068 (<autogenerated>:1)        CALL    testing.init(SB)
        0x0049 00073 (<autogenerated>:1)        PCDATA  $0, $0
        0x0049 00073 (<autogenerated>:1)        CALL    testing/internal/testdeps.init(SB)
        0x004e 00078 (<autogenerated>:1)        PCDATA  $0, $0
        0x004e 00078 (<autogenerated>:1)        CALL    github.com/tooru/gopl/ch11/p06popcount.init(SB)
        0x0053 00083 (<autogenerated>:1)        PCDATA  $0, $0
        0x0053 00083 (<autogenerated>:1)        CALL    github.com/tooru/gopl/ch11/p06popcount_test.init(SB)
        0x0058 00088 (<autogenerated>:1)        PCDATA  $0, $0
        0x0058 00088 (<autogenerated>:1)        CALL    "".init.0(SB)
        0x005d 00093 (<autogenerated>:1)        MOVB    $2, "".initdone·(SB)
        0x0064 00100 (<autogenerated>:1)        MOVQ    (SP), BP
        0x0068 00104 (<autogenerated>:1)        ADDQ    $8, SP
        0x006c 00108 (<autogenerated>:1)        RET
        0x006d 00109 (<autogenerated>:1)        NOP
        0x006d 00109 (<autogenerated>:1)        PCDATA  $0, $-1
        0x006d 00109 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x0072 00114 (<autogenerated>:1)        JMP     0
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 5e 48  dH..%....H;a.v^H
        0x0010 83 ec 08 48 89 2c 24 48 8d 2c 24 0f b6 05 00 00  ...H.,$H.,$.....
        0x0020 00 00 3c 01 76 09 48 8b 2c 24 48 83 c4 08 c3 75  ..<.v.H.,$H....u
        0x0030 07 e8 00 00 00 00 0f 0b c6 05 00 00 00 00 01 e8  ................
        0x0040 00 00 00 00 e8 00 00 00 00 e8 00 00 00 00 e8 00  ................
        0x0050 00 00 00 e8 00 00 00 00 e8 00 00 00 00 c6 05 00  ................
        0x0060 00 00 00 02 48 8b 2c 24 48 83 c4 08 c3 e8 00 00  ....H.,$H.......
        0x0070 00 00 eb 8c                                      ....
        rel 5+4 t=16 TLS+0
        rel 30+4 t=15 "".initdone·+0
        rel 50+4 t=8 runtime.throwinit+0
        rel 58+4 t=15 "".initdone·+-1
        rel 64+4 t=8 os.init+0
        rel 69+4 t=8 testing.init+0
        rel 74+4 t=8 testing/internal/testdeps.init+0
        rel 79+4 t=8 github.com/tooru/gopl/ch11/p06popcount.init+0
        rel 84+4 t=8 github.com/tooru/gopl/ch11/p06popcount_test.init+0
        rel 89+4 t=8 "".init.0+0
        rel 95+4 t=15 "".initdone·+-1
        rel 110+4 t=8 runtime.morestack_noctxt+0
testing.testDeps.ImportPath STEXT dupok size=110 args=0x20 locals=0x20
        0x0000 00000 (<autogenerated>:1)        TEXT    testing.testDeps.ImportPath(SB), DUPOK|WRAPPER, $32-32
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     88
        0x000f 00015 (<autogenerated>:1)        SUBQ    $32, SP
        0x0013 00019 (<autogenerated>:1)        MOVQ    BP, 24(SP)
        0x0018 00024 (<autogenerated>:1)        LEAQ    24(SP), BP
        0x001d 00029 (<autogenerated>:1)        MOVQ    32(CX), BX
        0x0021 00033 (<autogenerated>:1)        TESTQ   BX, BX
        0x0024 00036 (<autogenerated>:1)        JNE     95
        0x0026 00038 (<autogenerated>:1)        NOP
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $0, gclocals·c55e845a0a62e9baae6c740db5a20866(SB)
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
        0x0026 00038 (<autogenerated>:1)        MOVQ    ""..this+48(SP), AX
        0x002b 00043 (<autogenerated>:1)        MOVQ    ""..this+40(SP), CX
        0x0030 00048 (<autogenerated>:1)        MOVQ    32(CX), CX
        0x0034 00052 (<autogenerated>:1)        MOVQ    AX, (SP)
        0x0038 00056 (<autogenerated>:1)        PCDATA  $0, $1
        0x0038 00056 (<autogenerated>:1)        CALL    CX
        0x003a 00058 (<autogenerated>:1)        MOVQ    8(SP), AX
        0x003f 00063 (<autogenerated>:1)        MOVQ    16(SP), CX
        0x0044 00068 (<autogenerated>:1)        MOVQ    AX, "".~r1+56(SP)
        0x0049 00073 (<autogenerated>:1)        MOVQ    CX, "".~r1+64(SP)
        0x004e 00078 (<autogenerated>:1)        MOVQ    24(SP), BP
        0x0053 00083 (<autogenerated>:1)        ADDQ    $32, SP
        0x0057 00087 (<autogenerated>:1)        RET
        0x0058 00088 (<autogenerated>:1)        NOP
        0x0058 00088 (<autogenerated>:1)        PCDATA  $0, $-1
        0x0058 00088 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x005d 00093 (<autogenerated>:1)        JMP     0
        0x005f 00095 (<autogenerated>:1)        LEAQ    40(SP), DI
        0x0064 00100 (<autogenerated>:1)        CMPQ    (BX), DI
        0x0067 00103 (<autogenerated>:1)        JNE     38
        0x0069 00105 (<autogenerated>:1)        MOVQ    SP, (BX)
        0x006c 00108 (<autogenerated>:1)        JMP     38
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 49 48  dH..%....H;a.vIH
        0x0010 83 ec 20 48 89 6c 24 18 48 8d 6c 24 18 48 8b 59  .. H.l$.H.l$.H.Y
        0x0020 20 48 85 db 75 39 48 8b 44 24 30 48 8b 4c 24 28   H..u9H.D$0H.L$(
        0x0030 48 8b 49 20 48 89 04 24 ff d1 48 8b 44 24 08 48  H.I H..$..H.D$.H
        0x0040 8b 4c 24 10 48 89 44 24 38 48 89 4c 24 40 48 8b  .L$.H.D$8H.L$@H.
        0x0050 6c 24 18 48 83 c4 20 c3 e8 00 00 00 00 eb a1 48  l$.H.. ........H
        0x0060 8d 7c 24 28 48 39 3b 75 bd 48 89 23 eb b8        .|$(H9;u.H.#..
        rel 5+4 t=16 TLS+0
        rel 56+0 t=11 +0
        rel 89+4 t=8 runtime.morestack_noctxt+0
testing.testDeps.MatchString STEXT dupok size=178 args=0x48 locals=0x48
        0x0000 00000 (<autogenerated>:1)        TEXT    testing.testDeps.MatchString(SB), DUPOK|WRAPPER, $72-72
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     150
        0x0013 00019 (<autogenerated>:1)        SUBQ    $72, SP
        0x0017 00023 (<autogenerated>:1)        MOVQ    BP, 64(SP)
        0x001c 00028 (<autogenerated>:1)        LEAQ    64(SP), BP
        0x0021 00033 (<autogenerated>:1)        MOVQ    32(CX), BX
        0x0025 00037 (<autogenerated>:1)        TESTQ   BX, BX
        0x0028 00040 (<autogenerated>:1)        JNE     160
        0x002a 00042 (<autogenerated>:1)        NOP
        0x002a 00042 (<autogenerated>:1)        FUNCDATA        $0, gclocals·daa44e44ae43d3281d03f41659455c5b(SB)
        0x002a 00042 (<autogenerated>:1)        FUNCDATA        $1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
        0x002a 00042 (<autogenerated>:1)        MOVQ    ""..this+80(SP), AX
        0x002f 00047 (<autogenerated>:1)        MOVQ    40(AX), AX
        0x0033 00051 (<autogenerated>:1)        MOVQ    ""..this+88(SP), CX
        0x0038 00056 (<autogenerated>:1)        MOVQ    testing.pat+96(SP), DX
        0x003d 00061 (<autogenerated>:1)        MOVQ    DX, 8(SP)
        0x0042 00066 (<autogenerated>:1)        MOVQ    testing.pat+104(SP), DX
        0x0047 00071 (<autogenerated>:1)        MOVQ    DX, 16(SP)
        0x004c 00076 (<autogenerated>:1)        MOVQ    testing.str+112(SP), DX
        0x0051 00081 (<autogenerated>:1)        MOVQ    DX, 24(SP)
        0x0056 00086 (<autogenerated>:1)        MOVQ    testing.str+120(SP), DX
        0x005b 00091 (<autogenerated>:1)        MOVQ    DX, 32(SP)
        0x0060 00096 (<autogenerated>:1)        MOVQ    CX, (SP)
        0x0064 00100 (<autogenerated>:1)        PCDATA  $0, $1
        0x0064 00100 (<autogenerated>:1)        CALL    AX
        0x0066 00102 (<autogenerated>:1)        MOVBLZX 40(SP), AX
        0x006b 00107 (<autogenerated>:1)        MOVQ    48(SP), CX
        0x0070 00112 (<autogenerated>:1)        MOVQ    56(SP), DX
        0x0075 00117 (<autogenerated>:1)        MOVB    AL, "".~r3+128(SP)
        0x007c 00124 (<autogenerated>:1)        MOVQ    CX, "".~r4+136(SP)
        0x0084 00132 (<autogenerated>:1)        MOVQ    DX, "".~r4+144(SP)
        0x008c 00140 (<autogenerated>:1)        MOVQ    64(SP), BP
        0x0091 00145 (<autogenerated>:1)        ADDQ    $72, SP
        0x0095 00149 (<autogenerated>:1)        RET
        0x0096 00150 (<autogenerated>:1)        NOP
        0x0096 00150 (<autogenerated>:1)        PCDATA  $0, $-1
        0x0096 00150 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x009b 00155 (<autogenerated>:1)        JMP     0
        0x00a0 00160 (<autogenerated>:1)        LEAQ    80(SP), DI
        0x00a5 00165 (<autogenerated>:1)        CMPQ    (BX), DI
        0x00a8 00168 (<autogenerated>:1)        JNE     42
        0x00aa 00170 (<autogenerated>:1)        MOVQ    SP, (BX)
        0x00ad 00173 (<autogenerated>:1)        JMP     42
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 83  dH..%....H;a....
        0x0010 00 00 00 48 83 ec 48 48 89 6c 24 40 48 8d 6c 24  ...H..HH.l$@H.l$
        0x0020 40 48 8b 59 20 48 85 db 75 76 48 8b 44 24 50 48  @H.Y H..uvH.D$PH
        0x0030 8b 40 28 48 8b 4c 24 58 48 8b 54 24 60 48 89 54  .@(H.L$XH.T$`H.T
        0x0040 24 08 48 8b 54 24 68 48 89 54 24 10 48 8b 54 24  $.H.T$hH.T$.H.T$
        0x0050 70 48 89 54 24 18 48 8b 54 24 78 48 89 54 24 20  pH.T$.H.T$xH.T$ 
        0x0060 48 89 0c 24 ff d0 0f b6 44 24 28 48 8b 4c 24 30  H..$....D$(H.L$0
        0x0070 48 8b 54 24 38 88 84 24 80 00 00 00 48 89 8c 24  H.T$8..$....H..$
        0x0080 88 00 00 00 48 89 94 24 90 00 00 00 48 8b 6c 24  ....H..$....H.l$
        0x0090 40 48 83 c4 48 c3 e8 00 00 00 00 e9 60 ff ff ff  @H..H.......`...
        0x00a0 48 8d 7c 24 50 48 39 3b 75 80 48 89 23 e9 78 ff  H.|$PH9;u.H.#.x.
        0x00b0 ff ff                                            ..
        rel 5+4 t=16 TLS+0
        rel 100+0 t=11 +0
        rel 151+4 t=8 runtime.morestack_noctxt+0
testing.testDeps.StartCPUProfile STEXT dupok size=130 args=0x30 locals=0x30
        0x0000 00000 (<autogenerated>:1)        TEXT    testing.testDeps.StartCPUProfile(SB), DUPOK|WRAPPER, $48-48
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     108
        0x000f 00015 (<autogenerated>:1)        SUBQ    $48, SP
        0x0013 00019 (<autogenerated>:1)        MOVQ    BP, 40(SP)
        0x0018 00024 (<autogenerated>:1)        LEAQ    40(SP), BP
        0x001d 00029 (<autogenerated>:1)        MOVQ    32(CX), BX
        0x0021 00033 (<autogenerated>:1)        TESTQ   BX, BX
        0x0024 00036 (<autogenerated>:1)        JNE     115
        0x0026 00038 (<autogenerated>:1)        NOP
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $0, gclocals·4c18320792dd6a35b5e54b1ce722ff6e(SB)
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
        0x0026 00038 (<autogenerated>:1)        MOVQ    ""..this+56(SP), AX
        0x002b 00043 (<autogenerated>:1)        MOVQ    48(AX), AX
        0x002f 00047 (<autogenerated>:1)        MOVQ    ""..this+64(SP), CX
        0x0034 00052 (<autogenerated>:1)        MOVQ    ""..anon0+72(SP), DX
        0x0039 00057 (<autogenerated>:1)        MOVQ    DX, 8(SP)
        0x003e 00062 (<autogenerated>:1)        MOVQ    ""..anon0+80(SP), DX
        0x0043 00067 (<autogenerated>:1)        MOVQ    DX, 16(SP)
        0x0048 00072 (<autogenerated>:1)        MOVQ    CX, (SP)
        0x004c 00076 (<autogenerated>:1)        PCDATA  $0, $1
        0x004c 00076 (<autogenerated>:1)        CALL    AX
        0x004e 00078 (<autogenerated>:1)        MOVQ    24(SP), AX
        0x0053 00083 (<autogenerated>:1)        MOVQ    32(SP), CX
        0x0058 00088 (<autogenerated>:1)        MOVQ    AX, "".~r2+88(SP)
        0x005d 00093 (<autogenerated>:1)        MOVQ    CX, "".~r2+96(SP)
        0x0062 00098 (<autogenerated>:1)        MOVQ    40(SP), BP
        0x0067 00103 (<autogenerated>:1)        ADDQ    $48, SP
        0x006b 00107 (<autogenerated>:1)        RET
        0x006c 00108 (<autogenerated>:1)        NOP
        0x006c 00108 (<autogenerated>:1)        PCDATA  $0, $-1
        0x006c 00108 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x0071 00113 (<autogenerated>:1)        JMP     0
        0x0073 00115 (<autogenerated>:1)        LEAQ    56(SP), DI
        0x0078 00120 (<autogenerated>:1)        CMPQ    (BX), DI
        0x007b 00123 (<autogenerated>:1)        JNE     38
        0x007d 00125 (<autogenerated>:1)        MOVQ    SP, (BX)
        0x0080 00128 (<autogenerated>:1)        JMP     38
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 5d 48  dH..%....H;a.v]H
        0x0010 83 ec 30 48 89 6c 24 28 48 8d 6c 24 28 48 8b 59  ..0H.l$(H.l$(H.Y
        0x0020 20 48 85 db 75 4d 48 8b 44 24 38 48 8b 40 30 48   H..uMH.D$8H.@0H
        0x0030 8b 4c 24 40 48 8b 54 24 48 48 89 54 24 08 48 8b  .L$@H.T$HH.T$.H.
        0x0040 54 24 50 48 89 54 24 10 48 89 0c 24 ff d0 48 8b  T$PH.T$.H..$..H.
        0x0050 44 24 18 48 8b 4c 24 20 48 89 44 24 58 48 89 4c  D$.H.L$ H.D$XH.L
        0x0060 24 60 48 8b 6c 24 28 48 83 c4 30 c3 e8 00 00 00  $`H.l$(H..0.....
        0x0070 00 eb 8d 48 8d 7c 24 38 48 39 3b 75 a9 48 89 23  ...H.|$8H9;u.H.#
        0x0080 eb a4                                            ..
        rel 5+4 t=16 TLS+0
        rel 76+0 t=11 +0
        rel 109+4 t=8 runtime.morestack_noctxt+0
testing.testDeps.StopCPUProfile STEXT dupok size=90 args=0x10 locals=0x10
        0x0000 00000 (<autogenerated>:1)        TEXT    testing.testDeps.StopCPUProfile(SB), DUPOK|WRAPPER, $16-16
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     68
        0x000f 00015 (<autogenerated>:1)        SUBQ    $16, SP
        0x0013 00019 (<autogenerated>:1)        MOVQ    BP, 8(SP)
        0x0018 00024 (<autogenerated>:1)        LEAQ    8(SP), BP
        0x001d 00029 (<autogenerated>:1)        MOVQ    32(CX), BX
        0x0021 00033 (<autogenerated>:1)        TESTQ   BX, BX
        0x0024 00036 (<autogenerated>:1)        JNE     75
        0x0026 00038 (<autogenerated>:1)        NOP
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $0, gclocals·dc9b0298814590ca3ffc3a889546fc8b(SB)
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
        0x0026 00038 (<autogenerated>:1)        MOVQ    ""..this+24(SP), AX
        0x002b 00043 (<autogenerated>:1)        MOVQ    56(AX), AX
        0x002f 00047 (<autogenerated>:1)        MOVQ    ""..this+32(SP), CX
        0x0034 00052 (<autogenerated>:1)        MOVQ    CX, (SP)
        0x0038 00056 (<autogenerated>:1)        PCDATA  $0, $1
        0x0038 00056 (<autogenerated>:1)        CALL    AX
        0x003a 00058 (<autogenerated>:1)        MOVQ    8(SP), BP
        0x003f 00063 (<autogenerated>:1)        ADDQ    $16, SP
        0x0043 00067 (<autogenerated>:1)        RET
        0x0044 00068 (<autogenerated>:1)        NOP
        0x0044 00068 (<autogenerated>:1)        PCDATA  $0, $-1
        0x0044 00068 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x0049 00073 (<autogenerated>:1)        JMP     0
        0x004b 00075 (<autogenerated>:1)        LEAQ    24(SP), DI
        0x0050 00080 (<autogenerated>:1)        CMPQ    (BX), DI
        0x0053 00083 (<autogenerated>:1)        JNE     38
        0x0055 00085 (<autogenerated>:1)        MOVQ    SP, (BX)
        0x0058 00088 (<autogenerated>:1)        JMP     38
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 35 48  dH..%....H;a.v5H
        0x0010 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 48 8b 59  ...H.l$.H.l$.H.Y
        0x0020 20 48 85 db 75 25 48 8b 44 24 18 48 8b 40 38 48   H..u%H.D$.H.@8H
        0x0030 8b 4c 24 20 48 89 0c 24 ff d0 48 8b 6c 24 08 48  .L$ H..$..H.l$.H
        0x0040 83 c4 10 c3 e8 00 00 00 00 eb b5 48 8d 7c 24 18  ...........H.|$.
        0x0050 48 39 3b 75 d1 48 89 23 eb cc                    H9;u.H.#..
        rel 5+4 t=16 TLS+0
        rel 56+0 t=11 +0
        rel 69+4 t=8 runtime.morestack_noctxt+0
testing.testDeps.WriteHeapProfile STEXT dupok size=130 args=0x30 locals=0x30
        0x0000 00000 (<autogenerated>:1)        TEXT    testing.testDeps.WriteHeapProfile(SB), DUPOK|WRAPPER, $48-48
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     108
        0x000f 00015 (<autogenerated>:1)        SUBQ    $48, SP
        0x0013 00019 (<autogenerated>:1)        MOVQ    BP, 40(SP)
        0x0018 00024 (<autogenerated>:1)        LEAQ    40(SP), BP
        0x001d 00029 (<autogenerated>:1)        MOVQ    32(CX), BX
        0x0021 00033 (<autogenerated>:1)        TESTQ   BX, BX
        0x0024 00036 (<autogenerated>:1)        JNE     115
        0x0026 00038 (<autogenerated>:1)        NOP
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $0, gclocals·4c18320792dd6a35b5e54b1ce722ff6e(SB)
        0x0026 00038 (<autogenerated>:1)        FUNCDATA        $1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
        0x0026 00038 (<autogenerated>:1)        MOVQ    ""..this+56(SP), AX
        0x002b 00043 (<autogenerated>:1)        MOVQ    64(AX), AX
        0x002f 00047 (<autogenerated>:1)        MOVQ    ""..this+64(SP), CX
        0x0034 00052 (<autogenerated>:1)        MOVQ    ""..anon0+72(SP), DX
        0x0039 00057 (<autogenerated>:1)        MOVQ    DX, 8(SP)
        0x003e 00062 (<autogenerated>:1)        MOVQ    ""..anon0+80(SP), DX
        0x0043 00067 (<autogenerated>:1)        MOVQ    DX, 16(SP)
        0x0048 00072 (<autogenerated>:1)        MOVQ    CX, (SP)
        0x004c 00076 (<autogenerated>:1)        PCDATA  $0, $1
        0x004c 00076 (<autogenerated>:1)        CALL    AX
        0x004e 00078 (<autogenerated>:1)        MOVQ    24(SP), AX
        0x0053 00083 (<autogenerated>:1)        MOVQ    32(SP), CX
        0x0058 00088 (<autogenerated>:1)        MOVQ    AX, "".~r2+88(SP)
        0x005d 00093 (<autogenerated>:1)        MOVQ    CX, "".~r2+96(SP)
        0x0062 00098 (<autogenerated>:1)        MOVQ    40(SP), BP
        0x0067 00103 (<autogenerated>:1)        ADDQ    $48, SP
        0x006b 00107 (<autogenerated>:1)        RET
        0x006c 00108 (<autogenerated>:1)        NOP
        0x006c 00108 (<autogenerated>:1)        PCDATA  $0, $-1
        0x006c 00108 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x0071 00113 (<autogenerated>:1)        JMP     0
        0x0073 00115 (<autogenerated>:1)        LEAQ    56(SP), DI
        0x0078 00120 (<autogenerated>:1)        CMPQ    (BX), DI
        0x007b 00123 (<autogenerated>:1)        JNE     38
        0x007d 00125 (<autogenerated>:1)        MOVQ    SP, (BX)
        0x0080 00128 (<autogenerated>:1)        JMP     38
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 5d 48  dH..%....H;a.v]H
        0x0010 83 ec 30 48 89 6c 24 28 48 8d 6c 24 28 48 8b 59  ..0H.l$(H.l$(H.Y
        0x0020 20 48 85 db 75 4d 48 8b 44 24 38 48 8b 40 40 48   H..uMH.D$8H.@@H
        0x0030 8b 4c 24 40 48 8b 54 24 48 48 89 54 24 08 48 8b  .L$@H.T$HH.T$.H.
        0x0040 54 24 50 48 89 54 24 10 48 89 0c 24 ff d0 48 8b  T$PH.T$.H..$..H.
        0x0050 44 24 18 48 8b 4c 24 20 48 89 44 24 58 48 89 4c  D$.H.L$ H.D$XH.L
        0x0060 24 60 48 8b 6c 24 28 48 83 c4 30 c3 e8 00 00 00  $`H.l$(H..0.....
        0x0070 00 eb 8d 48 8d 7c 24 38 48 39 3b 75 a9 48 89 23  ...H.|$8H9;u.H.#
        0x0080 eb a4                                            ..
        rel 5+4 t=16 TLS+0
        rel 76+0 t=11 +0
        rel 109+4 t=8 runtime.morestack_noctxt+0
testing.testDeps.WriteProfileTo STEXT dupok size=183 args=0x48 locals=0x48
        0x0000 00000 (<autogenerated>:1)        TEXT    testing.testDeps.WriteProfileTo(SB), DUPOK|WRAPPER, $72-72
        0x0000 00000 (<autogenerated>:1)        MOVQ    (TLS), CX
        0x0009 00009 (<autogenerated>:1)        CMPQ    SP, 16(CX)
        0x000d 00013 (<autogenerated>:1)        JLS     151
        0x0013 00019 (<autogenerated>:1)        SUBQ    $72, SP
        0x0017 00023 (<autogenerated>:1)        MOVQ    BP, 64(SP)
        0x001c 00028 (<autogenerated>:1)        LEAQ    64(SP), BP
        0x0021 00033 (<autogenerated>:1)        MOVQ    32(CX), BX
        0x0025 00037 (<autogenerated>:1)        TESTQ   BX, BX
        0x0028 00040 (<autogenerated>:1)        JNE     161
        0x002a 00042 (<autogenerated>:1)        NOP
        0x002a 00042 (<autogenerated>:1)        FUNCDATA        $0, gclocals·f509627960753a8b893d1c0de0c254bf(SB)
        0x002a 00042 (<autogenerated>:1)        FUNCDATA        $1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
        0x002a 00042 (<autogenerated>:1)        MOVQ    ""..this+80(SP), AX
        0x002f 00047 (<autogenerated>:1)        MOVQ    72(AX), AX
        0x0033 00051 (<autogenerated>:1)        MOVQ    ""..this+88(SP), CX
        0x0038 00056 (<autogenerated>:1)        MOVQ    ""..anon0+96(SP), DX
        0x003d 00061 (<autogenerated>:1)        MOVQ    DX, 8(SP)
        0x0042 00066 (<autogenerated>:1)        MOVQ    ""..anon0+104(SP), DX
        0x0047 00071 (<autogenerated>:1)        MOVQ    DX, 16(SP)
        0x004c 00076 (<autogenerated>:1)        MOVQ    ""..anon1+112(SP), DX
        0x0051 00081 (<autogenerated>:1)        MOVQ    DX, 24(SP)
        0x0056 00086 (<autogenerated>:1)        MOVQ    ""..anon1+120(SP), DX
        0x005b 00091 (<autogenerated>:1)        MOVQ    DX, 32(SP)
        0x0060 00096 (<autogenerated>:1)        MOVQ    ""..anon2+128(SP), DX
        0x0068 00104 (<autogenerated>:1)        MOVQ    DX, 40(SP)
        0x006d 00109 (<autogenerated>:1)        MOVQ    CX, (SP)
        0x0071 00113 (<autogenerated>:1)        PCDATA  $0, $1
        0x0071 00113 (<autogenerated>:1)        CALL    AX
        0x0073 00115 (<autogenerated>:1)        MOVQ    48(SP), AX
        0x0078 00120 (<autogenerated>:1)        MOVQ    56(SP), CX
        0x007d 00125 (<autogenerated>:1)        MOVQ    AX, "".~r4+136(SP)
        0x0085 00133 (<autogenerated>:1)        MOVQ    CX, "".~r4+144(SP)
        0x008d 00141 (<autogenerated>:1)        MOVQ    64(SP), BP
        0x0092 00146 (<autogenerated>:1)        ADDQ    $72, SP
        0x0096 00150 (<autogenerated>:1)        RET
        0x0097 00151 (<autogenerated>:1)        NOP
        0x0097 00151 (<autogenerated>:1)        PCDATA  $0, $-1
        0x0097 00151 (<autogenerated>:1)        CALL    runtime.morestack_noctxt(SB)
        0x009c 00156 (<autogenerated>:1)        JMP     0
        0x00a1 00161 (<autogenerated>:1)        LEAQ    80(SP), DI
        0x00a6 00166 (<autogenerated>:1)        CMPQ    (BX), DI
        0x00a9 00169 (<autogenerated>:1)        JNE     42
        0x00af 00175 (<autogenerated>:1)        MOVQ    SP, (BX)
        0x00b2 00178 (<autogenerated>:1)        JMP     42
        0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 84  dH..%....H;a....
        0x0010 00 00 00 48 83 ec 48 48 89 6c 24 40 48 8d 6c 24  ...H..HH.l$@H.l$
        0x0020 40 48 8b 59 20 48 85 db 75 77 48 8b 44 24 50 48  @H.Y H..uwH.D$PH
        0x0030 8b 40 48 48 8b 4c 24 58 48 8b 54 24 60 48 89 54  .@HH.L$XH.T$`H.T
        0x0040 24 08 48 8b 54 24 68 48 89 54 24 10 48 8b 54 24  $.H.T$hH.T$.H.T$
        0x0050 70 48 89 54 24 18 48 8b 54 24 78 48 89 54 24 20  pH.T$.H.T$xH.T$ 
        0x0060 48 8b 94 24 80 00 00 00 48 89 54 24 28 48 89 0c  H..$....H.T$(H..
        0x0070 24 ff d0 48 8b 44 24 30 48 8b 4c 24 38 48 89 84  $..H.D$0H.L$8H..
        0x0080 24 88 00 00 00 48 89 8c 24 90 00 00 00 48 8b 6c  $....H..$....H.l
        0x0090 24 40 48 83 c4 48 c3 e8 00 00 00 00 e9 5f ff ff  $@H..H......._..
        0x00a0 ff 48 8d 7c 24 50 48 39 3b 0f 85 7b ff ff ff 48  .H.|$PH9;..{...H
        0x00b0 89 23 e9 73 ff ff ff                             .#.s...
        rel 5+4 t=16 TLS+0
        rel 113+0 t=11 +0
        rel 152+4 t=8 runtime.morestack_noctxt+0
go.string."github.com/tooru/gopl/ch11/p06popcount" SRODATA dupok size=38
        0x0000 67 69 74 68 75 62 2e 63 6f 6d 2f 74 6f 6f 72 75  github.com/tooru
        0x0010 2f 67 6f 70 6c 2f 63 68 31 31 2f 70 30 36 70 6f  /gopl/ch11/p06po
        0x0020 70 63 6f 75 6e 74                                pcount
go.info."".init.0 SDWARFINFO size=31
        0x0000 02 22 22 2e 69 6e 69 74 2e 30 00 00 00 00 00 00  ."".init.0......
        0x0010 00 00 00 00 00 00 00 00 00 00 00 01 9c 01 00     ...............
        rel 11+8 t=1 "".init.0+0
        rel 19+8 t=1 "".init.0+111
go.range."".init.0 SDWARFRANGE size=0
go.info."".main SDWARFINFO size=29
        0x0000 02 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
        0x0010 00 00 00 00 00 00 00 00 00 01 9c 01 00           .............
        rel 9+8 t=1 "".main+0
        rel 17+8 t=1 "".main+253
go.range."".main SDWARFRANGE size=0
go.string."BenchmarkPopCount" SRODATA dupok size=17
        0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
        0x0010 74                                               t
go.string."BenchmarkPopCount2" SRODATA dupok size=18
        0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
        0x0010 74 32                                            t2
go.string."BenchmarkBitCount" SRODATA dupok size=17
        0x0000 42 65 6e 63 68 6d 61 72 6b 42 69 74 43 6f 75 6e  BenchmarkBitCoun
        0x0010 74                                               t
go.string."BenchmarkBitCount2" SRODATA dupok size=18
        0x0000 42 65 6e 63 68 6d 61 72 6b 42 69 74 43 6f 75 6e  BenchmarkBitCoun
        0x0010 74 32                                            t2
go.string."BenchmarkPopCountByClearing" SRODATA dupok size=27
        0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
        0x0010 74 42 79 43 6c 65 61 72 69 6e 67                 tByClearing
go.string."BenchmarkPopCountByShifting" SRODATA dupok size=27
        0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
        0x0010 74 42 79 53 68 69 66 74 69 6e 67                 tByShifting
go.string."BenchmarkEmptyFunction" SRODATA dupok size=22
        0x0000 42 65 6e 63 68 6d 61 72 6b 45 6d 70 74 79 46 75  BenchmarkEmptyFu
        0x0010 6e 63 74 69 6f 6e                                nction
go.info."".init SDWARFINFO size=29
        0x0000 02 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
        0x0010 00 00 00 00 00 00 00 00 00 01 9c 01 00           .............
        rel 9+8 t=1 "".init+0
        rel 17+8 t=1 "".init+116
go.range."".init SDWARFRANGE size=0
"".tests SDATA size=24
        0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0010 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 "".statictmp_0+0
"".benchmarks SDATA size=24
        0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
        0x0010 07 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 "".statictmp_1+0
"".examples SDATA size=24
        0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0010 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 "".statictmp_2+0
"".statictmp_0 SNOPTRBSS size=0
"".statictmp_1 SDATA size=168
        0x0000 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 00  ................
        0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0020 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 00  ................
        0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0050 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0060 00 00 00 00 00 00 00 00 1b 00 00 00 00 00 00 00  ................
        0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0080 1b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0090 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00  ................
        0x00a0 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 go.string."BenchmarkPopCount"+0
        rel 16+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCount·f+0
        rel 24+8 t=1 go.string."BenchmarkPopCount2"+0
        rel 40+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCount2·f+0
        rel 48+8 t=1 go.string."BenchmarkBitCount"+0
        rel 64+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkBitCount·f+0
        rel 72+8 t=1 go.string."BenchmarkBitCount2"+0
        rel 88+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkBitCount2·f+0
        rel 96+8 t=1 go.string."BenchmarkPopCountByClearing"+0
        rel 112+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCountByClearing·f+0
        rel 120+8 t=1 go.string."BenchmarkPopCountByShifting"+0
        rel 136+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCountByShifting·f+0
        rel 144+8 t=1 go.string."BenchmarkEmptyFunction"+0
        rel 160+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkEmptyFunction·f+0
"".statictmp_2 SNOPTRBSS size=0
"".initdone· SNOPTRBSS size=1
github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkBitCount·f SRODATA dupok size=8
        0x0000 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkBitCount+0
github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkBitCount2·f SRODATA dupok size=8
        0x0000 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkBitCount2+0
github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkEmptyFunction·f SRODATA dupok size=8
        0x0000 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkEmptyFunction+0
github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCount·f SRODATA dupok size=8
        0x0000 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCount+0
github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCount2·f SRODATA dupok size=8
        0x0000 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCount2+0
github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCountByClearing·f SRODATA dupok size=8
        0x0000 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCountByClearing+0
github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCountByShifting·f SRODATA dupok size=8
        0x0000 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 github.com/tooru/gopl/ch11/p06popcount_test.BenchmarkPopCountByShifting+0
runtime.gcbits.01 SRODATA dupok size=1
        0x0000 01                                               .
type..namedata.*[]testing.InternalExample- SRODATA dupok size=29
        0x0000 00 00 1a 2a 5b 5d 74 65 73 74 69 6e 67 2e 49 6e  ...*[]testing.In
        0x0010 74 65 72 6e 61 6c 45 78 61 6d 70 6c 65           ternalExample
type.*[]testing.InternalExample SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 18 26 a7 0d 00 08 08 36 00 00 00 00 00 00 00 00  .&.....6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[]testing.InternalExample-+0
        rel 48+8 t=1 type.[]testing.InternalExample+0
type.[]testing.InternalExample SRODATA dupok size=56
        0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 6f c1 a3 4a 02 08 08 17 00 00 00 00 00 00 00 00  o..J............
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+0
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[]testing.InternalExample-+0
        rel 44+4 t=6 type.*[]testing.InternalExample+0
        rel 48+8 t=1 type.testing.InternalExample+0
type..namedata.*[0]testing.InternalExample- SRODATA dupok size=30
        0x0000 00 00 1b 2a 5b 30 5d 74 65 73 74 69 6e 67 2e 49  ...*[0]testing.I
        0x0010 6e 74 65 72 6e 61 6c 45 78 61 6d 70 6c 65        nternalExample
type.*[0]testing.InternalExample SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 bb 8d c8 a8 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[0]testing.InternalExample-+0
        rel 48+8 t=1 type.[0]testing.InternalExample+0
runtime.gcbits. SRODATA dupok size=0
type.[0]testing.InternalExample SRODATA dupok size=72
        0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0010 6a ae b6 6c 02 08 08 91 00 00 00 00 00 00 00 00  j..l............
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0040 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+0
        rel 32+8 t=1 runtime.gcbits.+0
        rel 40+4 t=5 type..namedata.*[0]testing.InternalExample-+0
        rel 44+4 t=6 type.*[0]testing.InternalExample+0
        rel 48+8 t=1 type.testing.InternalExample+0
        rel 56+8 t=1 type.[]testing.InternalExample+0
type..namedata.*[]testing.InternalTest- SRODATA dupok size=26
        0x0000 00 00 17 2a 5b 5d 74 65 73 74 69 6e 67 2e 49 6e  ...*[]testing.In
        0x0010 74 65 72 6e 61 6c 54 65 73 74                    ternalTest
type.*[]testing.InternalTest SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 86 a7 c8 95 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[]testing.InternalTest-+0
        rel 48+8 t=1 type.[]testing.InternalTest+0
type.[]testing.InternalTest SRODATA dupok size=56
        0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 9b 85 d1 58 02 08 08 17 00 00 00 00 00 00 00 00  ...X............
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+0
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[]testing.InternalTest-+0
        rel 44+4 t=6 type.*[]testing.InternalTest+0
        rel 48+8 t=1 type.testing.InternalTest+0
type..namedata.*[0]testing.InternalTest- SRODATA dupok size=27
        0x0000 00 00 18 2a 5b 30 5d 74 65 73 74 69 6e 67 2e 49  ...*[0]testing.I
        0x0010 6e 74 65 72 6e 61 6c 54 65 73 74                 nternalTest
type.*[0]testing.InternalTest SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 67 9c d1 53 00 08 08 36 00 00 00 00 00 00 00 00  g..S...6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[0]testing.InternalTest-+0
        rel 48+8 t=1 type.[0]testing.InternalTest+0
type.[0]testing.InternalTest SRODATA dupok size=72
        0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0010 4f 5b 8d 04 02 08 08 91 00 00 00 00 00 00 00 00  O[..............
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0040 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+0
        rel 32+8 t=1 runtime.gcbits.+0
        rel 40+4 t=5 type..namedata.*[0]testing.InternalTest-+0
        rel 44+4 t=6 type.*[0]testing.InternalTest+0
        rel 48+8 t=1 type.testing.InternalTest+0
        rel 56+8 t=1 type.[]testing.InternalTest+0
type..namedata.*[]testing.InternalBenchmark- SRODATA dupok size=31
        0x0000 00 00 1c 2a 5b 5d 74 65 73 74 69 6e 67 2e 49 6e  ...*[]testing.In
        0x0010 74 65 72 6e 61 6c 42 65 6e 63 68 6d 61 72 6b     ternalBenchmark
type.*[]testing.InternalBenchmark SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 11 07 eb 4a 00 08 08 36 00 00 00 00 00 00 00 00  ...J...6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[]testing.InternalBenchmark-+0
        rel 48+8 t=1 type.[]testing.InternalBenchmark+0
type.[]testing.InternalBenchmark SRODATA dupok size=56
        0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 27 c0 28 56 02 08 08 17 00 00 00 00 00 00 00 00  '.(V............
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+0
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[]testing.InternalBenchmark-+0
        rel 44+4 t=6 type.*[]testing.InternalBenchmark+0
        rel 48+8 t=1 type.testing.InternalBenchmark+0
type..namedata.*[7]testing.InternalBenchmark- SRODATA dupok size=32
        0x0000 00 00 1d 2a 5b 37 5d 74 65 73 74 69 6e 67 2e 49  ...*[7]testing.I
        0x0010 6e 74 65 72 6e 61 6c 42 65 6e 63 68 6d 61 72 6b  nternalBenchmark
type.*[7]testing.InternalBenchmark SRODATA dupok size=56
        0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
        0x0010 86 e1 cd cb 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+80
        rel 32+8 t=1 runtime.gcbits.01+0
        rel 40+4 t=5 type..namedata.*[7]testing.InternalBenchmark-+0
        rel 48+8 t=1 type.[7]testing.InternalBenchmark+0
runtime.gcbits.6ddb16 SRODATA dupok size=3
        0x0000 6d db 16                                         m..
type.[7]testing.InternalBenchmark SRODATA dupok size=72
        0x0000 a8 00 00 00 00 00 00 00 a8 00 00 00 00 00 00 00  ................
        0x0010 24 27 1c c1 02 08 08 11 00 00 00 00 00 00 00 00  $'..............
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0040 07 00 00 00 00 00 00 00                          ........
        rel 24+8 t=1 runtime.algarray+0
        rel 32+8 t=1 runtime.gcbits.6ddb16+0
        rel 40+4 t=5 type..namedata.*[7]testing.InternalBenchmark-+0
        rel 44+4 t=6 type.*[7]testing.InternalBenchmark+0
        rel 48+8 t=1 type.testing.InternalBenchmark+0
        rel 56+8 t=1 type.[]testing.InternalBenchmark+0
go.info.testing.testDeps.ImportPath SDWARFINFO dupok size=49
        0x0000 02 74 65 73 74 69 6e 67 2e 74 65 73 74 44 65 70  .testing.testDep
        0x0010 73 2e 49 6d 70 6f 72 74 50 61 74 68 00 00 00 00  s.ImportPath....
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 01 9c 01  ................
        0x0030 00                                               .
        rel 29+8 t=1 testing.testDeps.ImportPath+0
        rel 37+8 t=1 testing.testDeps.ImportPath+110
go.range.testing.testDeps.ImportPath SDWARFRANGE dupok size=0
go.info.testing.testDeps.MatchString SDWARFINFO dupok size=50
        0x0000 02 74 65 73 74 69 6e 67 2e 74 65 73 74 44 65 70  .testing.testDep
        0x0010 73 2e 4d 61 74 63 68 53 74 72 69 6e 67 00 00 00  s.MatchString...
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 9c  ................
        0x0030 01 00                                            ..
        rel 30+8 t=1 testing.testDeps.MatchString+0
        rel 38+8 t=1 testing.testDeps.MatchString+178
go.range.testing.testDeps.MatchString SDWARFRANGE dupok size=0
go.info.testing.testDeps.StartCPUProfile SDWARFINFO dupok size=54
        0x0000 02 74 65 73 74 69 6e 67 2e 74 65 73 74 44 65 70  .testing.testDep
        0x0010 73 2e 53 74 61 72 74 43 50 55 50 72 6f 66 69 6c  s.StartCPUProfil
        0x0020 65 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  e...............
        0x0030 00 00 01 9c 01 00                                ......
        rel 34+8 t=1 testing.testDeps.StartCPUProfile+0
        rel 42+8 t=1 testing.testDeps.StartCPUProfile+130
go.range.testing.testDeps.StartCPUProfile SDWARFRANGE dupok size=0
go.info.testing.testDeps.StopCPUProfile SDWARFINFO dupok size=53
        0x0000 02 74 65 73 74 69 6e 67 2e 74 65 73 74 44 65 70  .testing.testDep
        0x0010 73 2e 53 74 6f 70 43 50 55 50 72 6f 66 69 6c 65  s.StopCPUProfile
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 01 9c 01 00                                   .....
        rel 33+8 t=1 testing.testDeps.StopCPUProfile+0
        rel 41+8 t=1 testing.testDeps.StopCPUProfile+90
go.range.testing.testDeps.StopCPUProfile SDWARFRANGE dupok size=0
go.info.testing.testDeps.WriteHeapProfile SDWARFINFO dupok size=55
        0x0000 02 74 65 73 74 69 6e 67 2e 74 65 73 74 44 65 70  .testing.testDep
        0x0010 73 2e 57 72 69 74 65 48 65 61 70 50 72 6f 66 69  s.WriteHeapProfi
        0x0020 6c 65 00 00 00 00 00 00 00 00 00 00 00 00 00 00  le..............
        0x0030 00 00 00 01 9c 01 00                             .......
        rel 35+8 t=1 testing.testDeps.WriteHeapProfile+0
        rel 43+8 t=1 testing.testDeps.WriteHeapProfile+130
go.range.testing.testDeps.WriteHeapProfile SDWARFRANGE dupok size=0
go.info.testing.testDeps.WriteProfileTo SDWARFINFO dupok size=53
        0x0000 02 74 65 73 74 69 6e 67 2e 74 65 73 74 44 65 70  .testing.testDep
        0x0010 73 2e 57 72 69 74 65 50 72 6f 66 69 6c 65 54 6f  s.WriteProfileTo
        0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0030 00 01 9c 01 00                                   .....
        rel 33+8 t=1 testing.testDeps.WriteProfileTo+0
        rel 41+8 t=1 testing.testDeps.WriteProfileTo+183
go.range.testing.testDeps.WriteProfileTo SDWARFRANGE dupok size=0
go.itab.testing/internal/testdeps.TestDeps,testing.testDeps SNOPTRDATA dupok size=80
        0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        0x0010 00 00 00 00 00 00 00 00 bc e9 24 31              ..........$1
        rel 0+8 t=1 type.testing.testDeps+0
        rel 8+8 t=1 type.testing/internal/testdeps.TestDeps+0
go.itablink.testing/internal/testdeps.TestDeps,testing.testDeps SRODATA dupok size=8
        0x0000 00 00 00 00 00 00 00 00                          ........
        rel 0+8 t=1 go.itab.testing/internal/testdeps.TestDeps,testing.testDeps+0
type..importpath.github.com/tooru/gopl/ch11/p06popcount. SRODATA dupok size=41
        0x0000 00 00 26 67 69 74 68 75 62 2e 63 6f 6d 2f 74 6f  ..&github.com/to
        0x0010 6f 72 75 2f 67 6f 70 6c 2f 63 68 31 31 2f 70 30  oru/gopl/ch11/p0
        0x0020 36 70 6f 70 63 6f 75 6e 74                       6popcount
type..importpath.github.com/tooru/gopl/ch11/p06popcount_test. SRODATA dupok size=46
        0x0000 00 00 2b 67 69 74 68 75 62 2e 63 6f 6d 2f 74 6f  ..+github.com/to
        0x0010 6f 72 75 2f 67 6f 70 6c 2f 63 68 31 31 2f 70 30  oru/gopl/ch11/p0
        0x0020 36 70 6f 70 63 6f 75 6e 74 5f 74 65 73 74        6popcount_test
type..importpath.os. SRODATA dupok size=5
        0x0000 00 00 02 6f 73                                   ...os
type..importpath.testing. SRODATA dupok size=10
        0x0000 00 00 07 74 65 73 74 69 6e 67                    ...testing
type..importpath.testing/internal/testdeps. SRODATA dupok size=28
        0x0000 00 00 19 74 65 73 74 69 6e 67 2f 69 6e 74 65 72  ...testing/inter
        0x0010 6e 61 6c 2f 74 65 73 74 64 65 70 73              nal/testdeps
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
        0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
        0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·3688d5e9ace7aa756db172cd5f0c989a SRODATA dupok size=12
        0x0000 02 00 00 00 0b 00 00 00 00 00 27 01              ..........'.
gclocals·c55e845a0a62e9baae6c740db5a20866 SRODATA dupok size=10
        0x0000 02 00 00 00 04 00 00 00 03 00                    ..........
gclocals·daa44e44ae43d3281d03f41659455c5b SRODATA dupok size=12
        0x0000 02 00 00 00 09 00 00 00 17 00 00 00              ............
gclocals·4c18320792dd6a35b5e54b1ce722ff6e SRODATA dupok size=10
        0x0000 02 00 00 00 06 00 00 00 0f 00                    ..........
gclocals·dc9b0298814590ca3ffc3a889546fc8b SRODATA dupok size=10
        0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals·f509627960753a8b893d1c0de0c254bf SRODATA dupok size=12
        0x0000 02 00 00 00 09 00 00 00 37 00 00 00              ........7...
goos: linux
goarch: amd64
pkg: github.com/tooru/gopl/ch11/p06popcount
BenchmarkPopCount               2000000000               0.44 ns/op
BenchmarkPopCount2              2000000000               2.06 ns/op
BenchmarkBitCount               2000000000               0.41 ns/op
BenchmarkBitCount2              2000000000               0.41 ns/op
BenchmarkPopCountByClearing     50000000                29.6 ns/op
BenchmarkPopCountByShifting     10000000               185 ns/op
BenchmarkEmptyFunction          2000000000               0.44 ns/op
PASS
ok      github.com/tooru/gopl/ch11/p06popcount  11.424s
