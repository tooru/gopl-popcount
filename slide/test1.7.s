# github.com/tooru/gopl/ch11/p06popcount
"".init.1 t=1 size=137 args=0x0 locals=0x0
	0x0000 00000 (popcount.go:6)	TEXT	"".init.1(SB), $0-0
	0x0000 00000 (popcount.go:6)	MOVQ	(TLS), CX
	0x0009 00009 (popcount.go:6)	CMPQ	SP, 16(CX)
	0x000d 00013 (popcount.go:6)	JLS	127
	0x000f 00015 (popcount.go:6)	NOP
	0x000f 00015 (popcount.go:6)	NOP
	0x000f 00015 (popcount.go:6)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount.go:6)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount.go:7)	MOVQ	$0, CX
	0x0011 00017 (popcount.go:7)	MOVQ	$256, DX
	0x0018 00024 (popcount.go:7)	CMPQ	CX, DX
	0x001b 00027 (popcount.go:7)	JGE	$0, 112
	0x001d 00029 (popcount.go:8)	MOVQ	CX, R8
	0x0020 00032 (popcount.go:8)	SARQ	$63, R8
	0x0024 00036 (popcount.go:8)	MOVQ	CX, R9
	0x0027 00039 (popcount.go:8)	SUBQ	R8, R9
	0x002a 00042 (popcount.go:8)	MOVQ	R9, R8
	0x002d 00045 (popcount.go:8)	SARQ	$1, R8
	0x0030 00048 (popcount.go:8)	LEAQ	"".pc(SB), BX
	0x0037 00055 (popcount.go:8)	CMPQ	R8, $256
	0x003e 00062 (popcount.go:8)	JCC	$1, 120
	0x0040 00064 (popcount.go:8)	LEAQ	(BX)(R8*1), BX
	0x0044 00068 (popcount.go:8)	MOVBQZX	(BX), BX
	0x0047 00071 (popcount.go:8)	MOVQ	CX, R8
	0x004a 00074 (popcount.go:8)	ANDQ	$1, R8
	0x004e 00078 (popcount.go:8)	ADDQ	R8, BX
	0x0051 00081 (popcount.go:8)	LEAQ	"".pc(SB), R8
	0x0058 00088 (popcount.go:8)	CMPQ	CX, $256
	0x005f 00095 (popcount.go:8)	JCC	$1, 113
	0x0061 00097 (popcount.go:8)	LEAQ	(R8)(CX*1), R8
	0x0065 00101 (popcount.go:8)	MOVB	BL, (R8)
	0x0068 00104 (popcount.go:7)	INCQ	CX
	0x006b 00107 (popcount.go:7)	CMPQ	CX, DX
	0x006e 00110 (popcount.go:7)	JLT	$0, 29
	0x0070 00112 (popcount.go:10)	RET
	0x0071 00113 (popcount.go:8)	PCDATA	$0, $0
	0x0071 00113 (popcount.go:8)	CALL	runtime.panicindex(SB)
	0x0076 00118 (popcount.go:8)	UNDEF
	0x0078 00120 (popcount.go:8)	PCDATA	$0, $0
	0x0078 00120 (popcount.go:8)	CALL	runtime.panicindex(SB)
	0x007d 00125 (popcount.go:8)	UNDEF
	0x007f 00127 (popcount.go:8)	NOP
	0x007f 00127 (popcount.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x0084 00132 (popcount.go:6)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 70 31  dH..%....H;a.vp1
	0x0010 c9 48 c7 c2 00 01 00 00 48 39 d1 7d 53 49 89 c8  .H......H9.}SI..
	0x0020 49 c1 f8 3f 49 89 c9 4d 29 c1 4d 89 c8 49 d1 f8  I..?I..M).M..I..
	0x0030 48 8d 1d 00 00 00 00 49 81 f8 00 01 00 00 73 38  H......I......s8
	0x0040 4a 8d 1c 03 0f b6 1b 49 89 c8 49 83 e0 01 4c 01  J......I..I...L.
	0x0050 c3 4c 8d 05 00 00 00 00 48 81 f9 00 01 00 00 73  .L......H......s
	0x0060 10 4d 8d 04 08 41 88 18 48 ff c1 48 39 d1 7c ad  .M...A..H..H9.|.
	0x0070 c3 e8 00 00 00 00 0f 0b e8 00 00 00 00 0f 0b e8  ................
	0x0080 00 00 00 00 e9 77 ff ff ff                       .....w...
	rel 5+4 t=15 TLS+0
	rel 51+4 t=14 "".pc+0
	rel 84+4 t=14 "".pc+0
	rel 114+4 t=7 runtime.panicindex+0
	rel 121+4 t=7 runtime.panicindex+0
	rel 128+4 t=7 runtime.morestack_noctxt+0
"".PopCount t=1 size=242 args=0x10 locals=0x0
	0x0000 00000 (popcount.go:13)	TEXT	"".PopCount(SB), $0-16
	0x0000 00000 (popcount.go:13)	NOP
	0x0000 00000 (popcount.go:13)	NOP
	0x0000 00000 (popcount.go:13)	MOVQ	"".x+8(FP), R8
	0x0005 00005 (popcount.go:13)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0005 00005 (popcount.go:13)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount.go:21)	MOVQ	R8, R9
	0x0008 00008 (popcount.go:21)	SHRQ	$0, R8
	0x000c 00012 (popcount.go:21)	LEAQ	"".pc(SB), BX
	0x0013 00019 (popcount.go:21)	MOVBQZX	R8B, R8
	0x0017 00023 (popcount.go:21)	LEAQ	(BX)(R8*1), BX
	0x001b 00027 (popcount.go:21)	MOVBQZX	(BX), BX
	0x001e 00030 (popcount.go:21)	MOVQ	R9, AX
	0x0021 00033 (popcount.go:21)	SHRQ	$8, R9
	0x0025 00037 (popcount.go:21)	LEAQ	"".pc(SB), R8
	0x002c 00044 (popcount.go:21)	MOVBQZX	R9B, R9
	0x0030 00048 (popcount.go:21)	LEAQ	(R8)(R9*1), R8
	0x0034 00052 (popcount.go:21)	MOVBQZX	(R8), R8
	0x0038 00056 (popcount.go:21)	ADDQ	R8, BX
	0x003b 00059 (popcount.go:21)	MOVQ	AX, R9
	0x003e 00062 (popcount.go:21)	SHRQ	$16, R9
	0x0042 00066 (popcount.go:21)	LEAQ	"".pc(SB), R8
	0x0049 00073 (popcount.go:21)	MOVBQZX	R9B, R9
	0x004d 00077 (popcount.go:21)	LEAQ	(R8)(R9*1), R8
	0x0051 00081 (popcount.go:21)	MOVBQZX	(R8), R8
	0x0055 00085 (popcount.go:21)	ADDQ	R8, BX
	0x0058 00088 (popcount.go:21)	MOVQ	AX, R9
	0x005b 00091 (popcount.go:21)	SHRQ	$24, R9
	0x005f 00095 (popcount.go:21)	LEAQ	"".pc(SB), R8
	0x0066 00102 (popcount.go:21)	MOVBQZX	R9B, R9
	0x006a 00106 (popcount.go:21)	LEAQ	(R8)(R9*1), R8
	0x006e 00110 (popcount.go:21)	MOVBQZX	(R8), R8
	0x0072 00114 (popcount.go:21)	ADDQ	R8, BX
	0x0075 00117 (popcount.go:21)	MOVQ	AX, R9
	0x0078 00120 (popcount.go:21)	SHRQ	$32, R9
	0x007c 00124 (popcount.go:21)	LEAQ	"".pc(SB), R8
	0x0083 00131 (popcount.go:21)	MOVBQZX	R9B, R9
	0x0087 00135 (popcount.go:21)	LEAQ	(R8)(R9*1), R8
	0x008b 00139 (popcount.go:21)	MOVBQZX	(R8), R8
	0x008f 00143 (popcount.go:21)	ADDQ	R8, BX
	0x0092 00146 (popcount.go:21)	MOVQ	AX, R9
	0x0095 00149 (popcount.go:21)	SHRQ	$40, R9
	0x0099 00153 (popcount.go:21)	LEAQ	"".pc(SB), R8
	0x00a0 00160 (popcount.go:21)	MOVBQZX	R9B, R9
	0x00a4 00164 (popcount.go:21)	LEAQ	(R8)(R9*1), R8
	0x00a8 00168 (popcount.go:21)	MOVBQZX	(R8), R8
	0x00ac 00172 (popcount.go:21)	ADDQ	R8, BX
	0x00af 00175 (popcount.go:21)	MOVQ	AX, R9
	0x00b2 00178 (popcount.go:21)	SHRQ	$48, R9
	0x00b6 00182 (popcount.go:21)	LEAQ	"".pc(SB), R8
	0x00bd 00189 (popcount.go:21)	MOVBQZX	R9B, R9
	0x00c1 00193 (popcount.go:21)	LEAQ	(R8)(R9*1), R8
	0x00c5 00197 (popcount.go:21)	MOVBQZX	(R8), R8
	0x00c9 00201 (popcount.go:21)	ADDQ	R8, BX
	0x00cc 00204 (popcount.go:21)	MOVQ	AX, R9
	0x00cf 00207 (popcount.go:21)	SHRQ	$56, R9
	0x00d3 00211 (popcount.go:21)	LEAQ	"".pc(SB), R8
	0x00da 00218 (popcount.go:21)	MOVBQZX	R9B, R9
	0x00de 00222 (popcount.go:21)	LEAQ	(R8)(R9*1), R8
	0x00e2 00226 (popcount.go:21)	MOVBQZX	(R8), R8
	0x00e6 00230 (popcount.go:21)	ADDQ	R8, BX
	0x00e9 00233 (popcount.go:21)	MOVBQZX	BL, BX
	0x00ec 00236 (popcount.go:21)	MOVQ	BX, "".~r1+16(FP)
	0x00f1 00241 (popcount.go:21)	RET
	0x0000 4c 8b 44 24 08 4d 89 c1 49 c1 e8 00 48 8d 1d 00  L.D$.M..I...H...
	0x0010 00 00 00 45 0f b6 c0 4a 8d 1c 03 0f b6 1b 4c 89  ...E...J......L.
	0x0020 c8 49 c1 e9 08 4c 8d 05 00 00 00 00 45 0f b6 c9  .I...L......E...
	0x0030 4f 8d 04 08 45 0f b6 00 4c 01 c3 49 89 c1 49 c1  O...E...L..I..I.
	0x0040 e9 10 4c 8d 05 00 00 00 00 45 0f b6 c9 4f 8d 04  ..L......E...O..
	0x0050 08 45 0f b6 00 4c 01 c3 49 89 c1 49 c1 e9 18 4c  .E...L..I..I...L
	0x0060 8d 05 00 00 00 00 45 0f b6 c9 4f 8d 04 08 45 0f  ......E...O...E.
	0x0070 b6 00 4c 01 c3 49 89 c1 49 c1 e9 20 4c 8d 05 00  ..L..I..I.. L...
	0x0080 00 00 00 45 0f b6 c9 4f 8d 04 08 45 0f b6 00 4c  ...E...O...E...L
	0x0090 01 c3 49 89 c1 49 c1 e9 28 4c 8d 05 00 00 00 00  ..I..I..(L......
	0x00a0 45 0f b6 c9 4f 8d 04 08 45 0f b6 00 4c 01 c3 49  E...O...E...L..I
	0x00b0 89 c1 49 c1 e9 30 4c 8d 05 00 00 00 00 45 0f b6  ..I..0L......E..
	0x00c0 c9 4f 8d 04 08 45 0f b6 00 4c 01 c3 49 89 c1 49  .O...E...L..I..I
	0x00d0 c1 e9 38 4c 8d 05 00 00 00 00 45 0f b6 c9 4f 8d  ..8L......E...O.
	0x00e0 04 08 45 0f b6 00 4c 01 c3 0f b6 db 48 89 5c 24  ..E...L.....H.\$
	0x00f0 10 c3                                            ..
	rel 15+4 t=14 "".pc+0
	rel 40+4 t=14 "".pc+0
	rel 69+4 t=14 "".pc+0
	rel 98+4 t=14 "".pc+0
	rel 127+4 t=14 "".pc+0
	rel 156+4 t=14 "".pc+0
	rel 185+4 t=14 "".pc+0
	rel 214+4 t=14 "".pc+0
"".bitCount t=1 size=126 args=0x10 locals=0x0
	0x0000 00000 (popcount.go:24)	TEXT	"".bitCount(SB), $0-16
	0x0000 00000 (popcount.go:24)	NOP
	0x0000 00000 (popcount.go:24)	NOP
	0x0000 00000 (popcount.go:24)	MOVQ	"".x+8(FP), AX
	0x0005 00005 (popcount.go:24)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0005 00005 (popcount.go:24)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount.go:26)	MOVQ	AX, BX
	0x0008 00008 (popcount.go:26)	SHRQ	$1, BX
	0x000b 00011 (popcount.go:26)	MOVQ	$6148914691236517205, R8
	0x0015 00021 (popcount.go:26)	ANDQ	R8, BX
	0x0018 00024 (popcount.go:26)	MOVQ	AX, R8
	0x001b 00027 (popcount.go:26)	SUBQ	BX, R8
	0x001e 00030 (popcount.go:27)	MOVQ	$3689348814741910323, AX
	0x0028 00040 (popcount.go:27)	ANDQ	R8, AX
	0x002b 00043 (popcount.go:27)	SHRQ	$2, R8
	0x002f 00047 (popcount.go:27)	MOVQ	$3689348814741910323, R9
	0x0039 00057 (popcount.go:27)	ANDQ	R9, R8
	0x003c 00060 (popcount.go:27)	ADDQ	R8, AX
	0x003f 00063 (popcount.go:28)	MOVQ	AX, BX
	0x0042 00066 (popcount.go:28)	SHRQ	$4, BX
	0x0046 00070 (popcount.go:28)	ADDQ	AX, BX
	0x0049 00073 (popcount.go:28)	MOVQ	$1085102592571150095, R8
	0x0053 00083 (popcount.go:28)	ANDQ	R8, BX
	0x0056 00086 (popcount.go:28)	MOVQ	BX, AX
	0x0059 00089 (popcount.go:29)	SHRQ	$8, BX
	0x005d 00093 (popcount.go:29)	ADDQ	AX, BX
	0x0060 00096 (popcount.go:29)	MOVQ	BX, AX
	0x0063 00099 (popcount.go:30)	SHRQ	$16, BX
	0x0067 00103 (popcount.go:30)	ADDQ	AX, BX
	0x006a 00106 (popcount.go:30)	MOVQ	BX, AX
	0x006d 00109 (popcount.go:31)	SHRQ	$32, BX
	0x0071 00113 (popcount.go:31)	ADDQ	AX, BX
	0x0074 00116 (popcount.go:32)	ANDQ	$127, BX
	0x0078 00120 (popcount.go:32)	MOVQ	BX, "".~r1+16(FP)
	0x007d 00125 (popcount.go:32)	RET
	0x0000 48 8b 44 24 08 48 89 c3 48 d1 eb 49 b8 55 55 55  H.D$.H..H..I.UUU
	0x0010 55 55 55 55 55 4c 21 c3 49 89 c0 49 29 d8 48 b8  UUUUUL!.I..I).H.
	0x0020 33 33 33 33 33 33 33 33 4c 21 c0 49 c1 e8 02 49  33333333L!.I...I
	0x0030 b9 33 33 33 33 33 33 33 33 4d 21 c8 4c 01 c0 48  .33333333M!.L..H
	0x0040 89 c3 48 c1 eb 04 48 01 c3 49 b8 0f 0f 0f 0f 0f  ..H...H..I......
	0x0050 0f 0f 0f 4c 21 c3 48 89 d8 48 c1 eb 08 48 01 c3  ...L!.H..H...H..
	0x0060 48 89 d8 48 c1 eb 10 48 01 c3 48 89 d8 48 c1 eb  H..H...H..H..H..
	0x0070 20 48 01 c3 48 83 e3 7f 48 89 5c 24 10 c3         H..H...H.\$..
"".popCountByClearing t=1 size=40 args=0x10 locals=0x0
	0x0000 00000 (popcount.go:35)	TEXT	"".popCountByClearing(SB), $0-16
	0x0000 00000 (popcount.go:35)	NOP
	0x0000 00000 (popcount.go:35)	NOP
	0x0000 00000 (popcount.go:35)	MOVQ	"".x+8(FP), AX
	0x0005 00005 (popcount.go:35)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0005 00005 (popcount.go:35)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount.go:36)	MOVQ	$0, CX
	0x0007 00007 (popcount.go:37)	CMPQ	AX, $0
	0x000b 00011 (popcount.go:37)	JEQ	$0, 34
	0x000d 00013 (popcount.go:38)	MOVQ	AX, BX
	0x0010 00016 (popcount.go:38)	DECQ	BX
	0x0013 00019 (popcount.go:38)	ANDQ	AX, BX
	0x0016 00022 (popcount.go:38)	MOVQ	BX, AX
	0x0019 00025 (popcount.go:41)	INCQ	CX
	0x001c 00028 (popcount.go:41)	NOP
	0x001c 00028 (popcount.go:37)	CMPQ	AX, $0
	0x0020 00032 (popcount.go:37)	JNE	$0, 13
	0x0022 00034 (popcount.go:43)	MOVQ	CX, "".~r1+16(FP)
	0x0027 00039 (popcount.go:43)	RET
	0x0000 48 8b 44 24 08 31 c9 48 83 f8 00 74 15 48 89 c3  H.D$.1.H...t.H..
	0x0010 48 ff cb 48 21 c3 48 89 d8 48 ff c1 48 83 f8 00  H..H!.H..H..H...
	0x0020 75 eb 48 89 4c 24 10 c3                          u.H.L$..
"".popCountByShifting t=1 size=71 args=0x10 locals=0x0
	0x0000 00000 (popcount.go:46)	TEXT	"".popCountByShifting(SB), $0-16
	0x0000 00000 (popcount.go:46)	NOP
	0x0000 00000 (popcount.go:46)	NOP
	0x0000 00000 (popcount.go:46)	MOVQ	"".x+8(FP), SI
	0x0005 00005 (popcount.go:46)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0005 00005 (popcount.go:46)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount.go:47)	MOVQ	$0, DX
	0x0007 00007 (popcount.go:48)	MOVQ	$0, AX
	0x0009 00009 (popcount.go:48)	CMPQ	AX, $64
	0x000d 00013 (popcount.go:48)	JCC	$0, 61
	0x000f 00015 (popcount.go:49)	MOVQ	CX, R8
	0x0012 00018 (popcount.go:49)	MOVQ	$1, BX
	0x0019 00025 (popcount.go:49)	MOVQ	AX, CX
	0x001c 00028 (popcount.go:49)	CMPQ	AX, $64
	0x0020 00032 (popcount.go:49)	JCC	$1, 67
	0x0022 00034 (popcount.go:49)	SHLQ	CX, BX
	0x0025 00037 (popcount.go:49)	MOVQ	R8, CX
	0x0028 00040 (popcount.go:49)	ANDQ	SI, BX
	0x002b 00043 (popcount.go:49)	CMPQ	BX, $0
	0x002f 00047 (popcount.go:49)	JEQ	52
	0x0031 00049 (popcount.go:50)	INCQ	DX
	0x0034 00052 (popcount.go:50)	NOP
	0x0034 00052 (popcount.go:48)	INCQ	AX
	0x0037 00055 (popcount.go:48)	NOP
	0x0037 00055 (popcount.go:48)	CMPQ	AX, $64
	0x003b 00059 (popcount.go:48)	JCS	$0, 15
	0x003d 00061 (popcount.go:53)	MOVQ	DX, "".~r1+16(FP)
	0x0042 00066 (popcount.go:53)	RET
	0x0043 00067 (popcount.go:49)	MOVQ	$0, BX
	0x0045 00069 (popcount.go:49)	JMP	34
	0x0000 48 8b 74 24 08 31 d2 31 c0 48 83 f8 40 73 2e 49  H.t$.1.1.H..@s.I
	0x0010 89 c8 48 c7 c3 01 00 00 00 48 89 c1 48 83 f8 40  ..H......H..H..@
	0x0020 73 21 48 d3 e3 4c 89 c1 48 21 f3 48 83 fb 00 74  s!H..L..H!.H...t
	0x0030 03 48 ff c2 48 ff c0 48 83 f8 40 72 d2 48 89 54  .H..H..H..@r.H.T
	0x0040 24 10 c3 31 db eb db                             $..1...
"".emtpy t=1 size=10 args=0x10 locals=0x0
	0x0000 00000 (popcount.go:56)	TEXT	"".emtpy(SB), $0-16
	0x0000 00000 (popcount.go:56)	NOP
	0x0000 00000 (popcount.go:56)	NOP
	0x0000 00000 (popcount.go:56)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0000 00000 (popcount.go:56)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (popcount.go:57)	MOVQ	$0, "".~r1+16(FP)
	0x0009 00009 (popcount.go:57)	RET
	0x0000 48 c7 44 24 10 00 00 00 00 c3                    H.D$......
"".init t=1 size=74 args=0x0 locals=0x0
	0x0000 00000 (popcount.go:61)	TEXT	"".init(SB), $0-0
	0x0000 00000 (popcount.go:61)	MOVQ	(TLS), CX
	0x0009 00009 (popcount.go:61)	CMPQ	SP, 16(CX)
	0x000d 00013 (popcount.go:61)	JLS	67
	0x000f 00015 (popcount.go:61)	NOP
	0x000f 00015 (popcount.go:61)	NOP
	0x000f 00015 (popcount.go:61)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount.go:61)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount.go:61)	MOVBQZX	"".initdone·(SB), BX
	0x0016 00022 (popcount.go:61)	CMPB	BL, $1
	0x0019 00025 (popcount.go:61)	JLS	$0, 28
	0x001b 00027 (popcount.go:61)	RET
	0x001c 00028 (popcount.go:61)	MOVBQZX	"".initdone·(SB), BX
	0x0023 00035 (popcount.go:61)	CMPB	BL, $1
	0x0026 00038 (popcount.go:61)	JNE	$0, 47
	0x0028 00040 (popcount.go:61)	PCDATA	$0, $0
	0x0028 00040 (popcount.go:61)	CALL	runtime.throwinit(SB)
	0x002d 00045 (popcount.go:61)	UNDEF
	0x002f 00047 (popcount.go:61)	MOVB	$1, "".initdone·(SB)
	0x0036 00054 (popcount.go:61)	PCDATA	$0, $0
	0x0036 00054 (popcount.go:61)	CALL	"".init.1(SB)
	0x003b 00059 (popcount.go:61)	MOVB	$2, "".initdone·(SB)
	0x0042 00066 (popcount.go:61)	RET
	0x0043 00067 (popcount.go:61)	NOP
	0x0043 00067 (popcount.go:61)	CALL	runtime.morestack_noctxt(SB)
	0x0048 00072 (popcount.go:61)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 34 0f  dH..%....H;a.v4.
	0x0010 b6 1d 00 00 00 00 80 fb 01 76 01 c3 0f b6 1d 00  .........v......
	0x0020 00 00 00 80 fb 01 75 07 e8 00 00 00 00 0f 0b c6  ......u.........
	0x0030 05 00 00 00 00 01 e8 00 00 00 00 c6 05 00 00 00  ................
	0x0040 00 02 c3 e8 00 00 00 00 eb b6                    ..........
	rel 5+4 t=15 TLS+0
	rel 18+4 t=14 "".initdone·+0
	rel 31+4 t=14 "".initdone·+0
	rel 41+4 t=7 runtime.throwinit+0
	rel 49+4 t=14 "".initdone·+-1
	rel 55+4 t=7 "".init.1+0
	rel 61+4 t=14 "".initdone·+-1
	rel 68+4 t=7 runtime.morestack_noctxt+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=9 dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·23e8278e2b69a3a75fa59b23c49ed6ad t=9 dupok size=12
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
"".pc t=34 size=256
"".initdone· t=34 size=1
"".init.1·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init.1+0
"".PopCount·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".PopCount+0
"".bitCount·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".bitCount+0
"".popCountByClearing·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".popCountByClearing+0
"".popCountByShifting·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".popCountByShifting+0
"".emtpy·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".emtpy+0
"".init·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init+0
runtime.gcbits.01 t=9 dupok size=1
	0x0000 01                                               .
type..namedata.*[]uint8. t=9 dupok size=11
	0x0000 00 00 08 2a 5b 5d 75 69 6e 74 38                 ...*[]uint8
type.[]uint8 t=9 dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 df 7e 2e 38 02 08 08 17 00 00 00 00 00 00 00 00  .~.8............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8.+0
	rel 48+8 t=1 type.uint8+0
go.typelink.[]uint8 t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.[]uint8+0
type..hashfunc256 t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00  ................
	rel 0+8 t=1 runtime.memhash_varlen+0
type..eqfunc256 t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00  ................
	rel 0+8 t=1 runtime.memequal_varlen+0
type..alg256 t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc256+0
	rel 8+8 t=1 type..eqfunc256+0
runtime.gcbits. t=9 dupok size=0
type..namedata.*[256]uint8. t=9 dupok size=14
	0x0000 00 00 0b 2a 5b 32 35 36 5d 75 69 6e 74 38        ...*[256]uint8
type.[256]uint8 t=9 dupok size=72
	0x0000 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 9e 9d b0 ff 02 01 01 91 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 01 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..alg256+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[256]uint8.+0
	rel 48+8 t=1 type.uint8+0
	rel 56+8 t=1 type.[]uint8+0
go.typelink.[256]uint8 t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.[256]uint8+0
# github.com/tooru/gopl/ch11/p06popcount_test
generating SSA for BenchmarkPopCount2
buildssa-enter
buildssa-body
.   DCL l(57) tc(1)
.   .   NAME-p06popcount_test.c u(1) a(true) g(2) l(57) x(0+0) class(PAUTO) f(1) tc(1) assigned used(true) int

.   AS u(2) l(57) tc(1)
.   .   NAME-p06popcount_test.c u(1) a(true) g(2) l(57) x(0+0) class(PAUTO) f(1) tc(1) assigned used(true) int

.   DCL l(58)
.   .   NAME-p06popcount_test.i u(1) a(true) g(3) l(58) x(0+0) class(PAUTO) f(1) tc(1) assigned used(true) int

.   AS u(1) l(58) colas(true) tc(1)
.   .   NAME-p06popcount_test.i u(1) a(true) g(3) l(58) x(0+0) class(PAUTO) f(1) tc(1) assigned used(true) int
.   .   LITERAL-0 l(58) tc(1) int

.   FOR l(58) tc(1)
.   .   LT u(2) l(58) tc(1) bool
.   .   .   NAME-p06popcount_test.i u(1) a(true) g(3) l(58) x(0+0) class(PAUTO) f(1) tc(1) assigned used(true) int
.   .   .   DOTPTR u(2) l(58) x(184+0) tc(1) p06popcount_test.N int
.   .   .   .   NAME-p06popcount_test.b u(1) a(true) g(1) l(56) x(0+0) class(PPARAM) f(1) esc(no) tc(1) used(true) PTR64-*testing.B
.   .   BLOCK l(58)
.   .   BLOCK-list
.   .   .   AS u(2) l(58) tc(1)
.   .   .   .   NAME-p06popcount_test.autotmp_5 u(1) a(true) l(58) x(0+0) class(PAUTO) esc(N) tc(1) assigned used(true) int
.   .   .   .   NAME-p06popcount_test.i u(1) a(true) g(3) l(58) x(0+0) class(PAUTO) f(1) tc(1) assigned used(true) int

.   .   .   AS u(2) l(58) tc(1) implicit(true) int
.   .   .   .   NAME-p06popcount_test.i u(1) a(true) g(3) l(58) x(0+0) class(PAUTO) f(1) tc(1) assigned used(true) int
.   .   .   .   ADD u(2) l(58) tc(1) int
.   .   .   .   .   NAME-p06popcount_test.autotmp_5 u(1) a(true) l(58) x(0+0) class(PAUTO) esc(N) tc(1) assigned used(true) int
.   .   .   .   .   LITERAL-1 u(1) a(true) l(58) tc(1) int

.   .   .   VARKILL l(58) tc(1)
.   .   .   .   NAME-p06popcount_test.autotmp_5 u(1) a(true) l(58) x(0+0) class(PAUTO) esc(N) tc(1) assigned used(true) int
.   FOR-body
.   .   DCL l(59)
.   .   .   NAME-p06popcount.x·2 u(1) a(true) l(59) x(0+0) class(PAUTO) tc(1) assigned used(true) uint64

.   .   DCL l(59)
.   .   .   NAME-p06popcount_test.~r0 u(1) a(true) l(59) x(0+0) class(PAUTO) tc(1) assigned used(true) int

.   .   BLOCK u(2) l(59)
.   .   BLOCK-list
.   .   .   AS u(2) l(59) tc(1)
.   .   .   .   NAME-p06popcount.x·2 u(1) a(true) l(59) x(0+0) class(PAUTO) tc(1) assigned used(true) uint64
.   .   .   .   LITERAL-1311768467294899695 u(1) a(true) l(59) tc(1) uint64

.   .   AS u(2) l(59) tc(1)
.   .   .   NAME-p06popcount_test.~r0 u(1) a(true) l(59) x(0+0) class(PAUTO) tc(1) assigned used(true) int

.   .   BLOCK-init
.   .   .   AS u(3) l(59) tc(1)
.   .   .   .   NAME-p06popcount_test.autotmp_6 u(1) a(true) l(59) x(0+0) class(PAUTO) esc(N) tc(1) assigned used(true) int
.   .   .   .   CONV u(3) l(59) tc(1) int
.   .   .   .   .   ADD u(3) l(59) tc(1) byte
.   .   .   .   .   .   ADD u(3) l(59) tc(1) byte
.   .   .   .   .   .   .   ADD u(3) l(59) tc(1) byte
.   .   .   .   .   .   .   .   ADD u(3) l(59) tc(1) byte
.   .   .   .   .   .   .   .   .   ADD u(3) l(59) tc(1) byte
.   .   .   .   .   .   .   .   .   .   ADD u(3) l(59) tc(1) byte
.   .   .   .   .   .   .   .   .   .   .   ...
.   .   .   .   .   .   .   .   .   .   .   ...
.   .   .   .   .   .   .   .   .   .   INDEX u(2) l(59) tc(1) bounded byte
.   .   .   .   .   .   .   .   .   .   .   ...
.   .   .   .   .   .   .   .   .   .   .   ...
.   .   .   .   .   .   .   .   .   INDEX u(2) l(59) tc(1) bounded byte
.   .   .   .   .   .   .   .   .   .   NAME-p06popcount.pc u(1) a(true) l(9) x(0+0) class(PEXTERN) tc(1) used(true) ARRAY-[256]byte
.   .   .   .   .   .   .   .   .   .   CONV u(2) l(59) tc(1) byte
.   .   .   .   .   .   .   .   .   .   .   ...
.   .   .   .   .   .   .   .   INDEX u(2) l(59) tc(1) bounded byte
.   .   .   .   .   .   .   .   .   NAME-p06popcount.pc u(1) a(true) l(9) x(0+0) class(PEXTERN) tc(1) used(true) ARRAY-[256]byte
.   .   .   .   .   .   .   .   .   CONV u(2) l(59) tc(1) byte
.   .   .   .   .   .   .   .   .   .   RSH u(2) l(59) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   .   .   ...
.   .   .   .   .   .   .   .   .   .   .   ...
.   .   .   .   .   .   .   INDEX u(2) l(59) tc(1) bounded byte
.   .   .   .   .   .   .   .   NAME-p06popcount.pc u(1) a(true) l(9) x(0+0) class(PEXTERN) tc(1) used(true) ARRAY-[256]byte
.   .   .   .   .   .   .   .   CONV u(2) l(59) tc(1) byte
.   .   .   .   .   .   .   .   .   RSH u(2) l(59) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   .   NAME-p06popcount.x·2 u(1) a(true) l(59) x(0+0) class(PAUTO) tc(1) assigned used(true) uint64
.   .   .   .   .   .   .   .   .   .   LITERAL-48 u(1) a(true) l(59) tc(1) uint
.   .   .   .   .   .   .   .   .   .   .   ...
.   .   .   .   .   .   INDEX u(2) l(59) tc(1) bounded byte
.   .   .   .   .   .   .   NAME-p06popcount.pc u(1) a(true) l(9) x(0+0) class(PEXTERN) tc(1) used(true) ARRAY-[256]byte
.   .   .   .   .   .   .   CONV u(2) l(59) tc(1) byte
.   .   .   .   .   .   .   .   RSH u(2) l(59) tc(1) bounded uint64
.   .   .   .   .   .   .   .   .   NAME-p06popcount.x·2 u(1) a(true) l(59) x(0+0) class(PAUTO) tc(1) assigned used(true) uint64
.   .   .   .   .   .   .   .   .   LITERAL-56 u(1) a(true) l(59) tc(1) uint
.   .   .   .   .   .   .   .   .   .   LITERAL-56 l(59) tc(1) uint
.   .   BLOCK u(100) l(59)
.   .   BLOCK-list
.   .   .   AS u(2) l(59) tc(1)
.   .   .   .   NAME-p06popcount_test.~r0 u(1) a(true) l(59) x(0+0) class(PAUTO) tc(1) assigned used(true) int
.   .   .   .   NAME-p06popcount_test.autotmp_6 u(1) a(true) l(59) x(0+0) class(PAUTO) esc(N) tc(1) assigned used(true) int

.   .   GOTO l(59) tc(1)
.   .   .   NAME-p06popcount_test..inlret2 u(1) a(true) l(59) x(0+0)

.   .   GOTO l(59) tc(1)
.   .   .   NAME-p06popcount_test..inlret2 u(1) a(true) l(59) x(0+0)

.   .   LABEL l(59) tc(1)
.   .   .   NAME-p06popcount_test..inlret2 u(1) a(true) l(59) x(0+0)

.   .   AS u(2) l(59) tc(1)
.   .   .   NAME-p06popcount_test.c u(1) a(true) g(2) l(57) x(0+0) class(PAUTO) f(1) tc(1) assigned used(true) int
.   .   .   CONVNOP u(2) l(59) tc(1) int
.   .   .   .   NAME-p06popcount_test.~r0 u(1) a(true) l(59) x(0+0) class(PAUTO) tc(1) assigned used(true) int

.   AS u(2) l(61) tc(1)
.   .   NAME-p06popcount_test.benchResult u(1) a(true) l(54) x(0+0) class(PEXTERN) tc(1) assigned int
.   .   NAME-p06popcount_test.c u(1) a(true) g(2) l(57) x(0+0) class(PAUTO) f(1) tc(1) assigned used(true) int
buildssa-exit
compiling BenchmarkPopCount2
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v2 = SP <uintptr> DEAD
    v3 = SB <uintptr>
    v4 = Addr <**testing.B> {b} v2 DEAD
    v5 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v20 = Const64 <int> [256] DEAD
    v24 = Addr <*[256]byte> {p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v7 = Phi <*testing.B> v102 v103
    v8 = Phi <mem> v1 v99
    v93 = Phi <int> v5 v82
    v9 = NilCheck <void> v7 v8
    Check v9 -> b6
  b3: <- b6
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v22 = Copy <mem> v11
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
    Plain -> b7
  b4: <- b7
    v83 = Copy <int> v94
    v85 = Add64 <int> v83 v84
    Plain -> b2
  b5: <- b6
    v86 = Copy <int> v93
    v88 = Copy <mem> v11
    v89 = VarDef <mem> {benchResult} v88
    v90 = Store <mem> [8] v87 v86 v89
    v91 = Copy <*testing.B> v7
    v92 = KeepAlive <mem> v91 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v7
    v11 = Copy <mem> v8
    v12 = Load <int> v10 v11
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3 b8 b9
    v81 = Phi <int> v80 v97 v98
    v94 = Phi <int> v6 v95 v96
    v99 = Phi <mem> v22 v100 v101
    v103 = Phi <*testing.B> v7 v104 v105
    v82 = Copy <int> v81
    Plain -> b4
  b8: DEAD
    v95 = Unknown <int> DEAD
    v97 = Unknown <int> DEAD
    v100 = Unknown <mem> DEAD
    v104 = Unknown <*testing.B> DEAD
    Plain -> b7
  b9: DEAD
    v96 = Unknown <int> DEAD
    v98 = Unknown <int> DEAD
    v101 = Unknown <mem> DEAD
    v105 = Unknown <*testing.B> DEAD
    Plain -> b7
name c[int]: [v5 v82 v86 v93]
name i[int]: [v5 v6 v83 v85 v94 v95 v96]
name b[*testing.B]: [v7 v91 v102 v103 v104 v105]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v5 v80 v81 v97 v98]
  pass early phielim begin
  pass early phielim end [8311 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v2 = SP <uintptr> DEAD
    v3 = SB <uintptr>
    v4 = Addr <**testing.B> {b} v2 DEAD
    v5 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v20 = Const64 <int> [256] DEAD
    v24 = Addr <*[256]byte> {p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v7 = Phi <*testing.B> v102 v103
    v8 = Phi <mem> v1 v99
    v93 = Phi <int> v5 v81
    v9 = NilCheck <void> v7 v8
    Check v9 -> b6
  b3: <- b6
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v22 = Copy <mem> v8 DEAD
    v23 = Load <byte> v21 v8
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v8
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v8
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v8
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v8
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v8
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v8
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v8
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v83 = Copy <int> v94 DEAD
    v85 = Add64 <int> v94 v84
    Plain -> b2
  b5: <- b6
    v86 = Copy <int> v93 DEAD
    v88 = Copy <mem> v8 DEAD
    v89 = VarDef <mem> {benchResult} v8
    v90 = Store <mem> [8] v87 v93 v89
    v91 = Copy <*testing.B> v7 DEAD
    v92 = KeepAlive <mem> v7 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v7
    v11 = Copy <mem> v8 DEAD
    v12 = Load <int> v10 v8
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3 b8 b9
    v81 = Phi <int> v80 v97 v98
    v94 = Phi <int> v6 v95 v96
    v99 = Phi <mem> v8 v100 v101
    v103 = Phi <*testing.B> v7 v104 v105
    v82 = Copy <int> v81 DEAD
    Plain -> b4
  b8: DEAD
    v95 = Unknown <int> DEAD
    v97 = Unknown <int> DEAD
    v100 = Unknown <mem> DEAD
    v104 = Unknown <*testing.B> DEAD
    Plain -> b7
  b9: DEAD
    v96 = Unknown <int> DEAD
    v98 = Unknown <int> DEAD
    v101 = Unknown <mem> DEAD
    v105 = Unknown <*testing.B> DEAD
    Plain -> b7
name c[int]: [v5 v82 v86 v93]
name i[int]: [v5 v6 v83 v85 v94 v95 v96]
name b[*testing.B]: [v7 v91 v102 v103 v104 v105]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v5 v80 v81 v97 v98]
  pass early copyelim begin
  pass early copyelim end [4021 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v2 = SP <uintptr> DEAD
    v3 = SB <uintptr>
    v4 = Addr <**testing.B> {b} v2 DEAD
    v5 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v20 = Const64 <int> [256] DEAD
    v24 = Addr <*[256]byte> {p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v7 = Phi <*testing.B> v102 v103
    v8 = Phi <mem> v1 v99
    v93 = Phi <int> v5 v81
    v9 = NilCheck <void> v7 v8
    Check v9 -> b6
  b3: <- b6
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v22 = Copy <mem> v8 DEAD
    v23 = Load <byte> v21 v8
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v8
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v8
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v8
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v8
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v8
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v8
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v8
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v83 = Copy <int> v94 DEAD
    v85 = Add64 <int> v94 v84
    Plain -> b2
  b5: <- b6
    v86 = Copy <int> v93 DEAD
    v88 = Copy <mem> v8 DEAD
    v89 = VarDef <mem> {benchResult} v8
    v90 = Store <mem> [8] v87 v93 v89
    v91 = Copy <*testing.B> v7 DEAD
    v92 = KeepAlive <mem> v7 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v7
    v11 = Copy <mem> v8 DEAD
    v12 = Load <int> v10 v8
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3 b8 b9
    v81 = Phi <int> v80 v97 v98
    v94 = Phi <int> v6 v95 v96
    v99 = Phi <mem> v8 v100 v101
    v103 = Phi <*testing.B> v7 v104 v105
    v82 = Copy <int> v81 DEAD
    Plain -> b4
  b8: DEAD
    v95 = Unknown <int> DEAD
    v97 = Unknown <int> DEAD
    v100 = Unknown <mem> DEAD
    v104 = Unknown <*testing.B> DEAD
    Plain -> b7
  b9: DEAD
    v96 = Unknown <int> DEAD
    v98 = Unknown <int> DEAD
    v101 = Unknown <mem> DEAD
    v105 = Unknown <*testing.B> DEAD
    Plain -> b7
name c[int]: [v5 v81 v93 v93]
name i[int]: [v5 v6 v94 v85 v94 v95 v96]
name b[*testing.B]: [v7 v7 v102 v103 v104 v105]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v5 v80 v81 v97 v98]
  pass early deadcode begin
  pass early deadcode end [18816 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v24 = Addr <*[256]byte> {p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v7 = Phi <*testing.B> v102 v7
    v8 = Phi <mem> v1 v8
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v7 v8
    Check v9 -> b6
  b3: <- b6
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v23 = Load <byte> v21 v8
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v8
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v8
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v8
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v8
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v8
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v8
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v8
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v6 v84
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v8
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v7 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v7
    v12 = Load <int> v10 v8
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v7 v102]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v5 v80]
  pass short circuit begin
  pass short circuit end [15773 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v24 = Addr <*[256]byte> {p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v105 = ConstBool <bool> [true] DEAD
    v101 = ConstBool <bool> [false] DEAD
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v7 = Phi <*testing.B> v102 v7
    v8 = Phi <mem> v1 v8
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v7 v8
    Check v9 -> b6
  b3: <- b6
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v23 = Load <byte> v21 v8
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v8
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v8
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v8
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v8
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v8
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v8
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v8
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v6 v84
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v8
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v7 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v7
    v12 = Load <int> v10 v8
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v7 v102]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v5 v80]
  pass decompose user begin
  pass decompose user end [10418 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v16 = Const64 <uint> [0]
    v24 = Addr <*[256]byte> {p06popcount.pc} v3
    v25 = Const64 <uint> [8]
    v32 = Addr <*[256]byte> {p06popcount.pc} v3
    v33 = Const64 <uint> [16]
    v40 = Addr <*[256]byte> {p06popcount.pc} v3
    v41 = Const64 <uint> [24]
    v48 = Addr <*[256]byte> {p06popcount.pc} v3
    v49 = Const64 <uint> [32]
    v56 = Addr <*[256]byte> {p06popcount.pc} v3
    v57 = Const64 <uint> [40]
    v64 = Addr <*[256]byte> {p06popcount.pc} v3
    v65 = Const64 <uint> [48]
    v72 = Addr <*[256]byte> {p06popcount.pc} v3
    v73 = Const64 <uint> [56]
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v105 = ConstBool <bool> [true] DEAD
    v101 = ConstBool <bool> [false] DEAD
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v7 = Phi <*testing.B> v102 v7
    v8 = Phi <mem> v1 v8
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v7 v8
    Check v9 -> b6
  b3: <- b6
    v17 = Rsh64Ux64 <uint64> v14 v16
    v18 = Trunc64to8 <byte> v17
    v19 = ZeroExt8to64 <int> v18
    v21 = PtrIndex <*byte> v15 v19
    v23 = Load <byte> v21 v8
    v26 = Rsh64Ux64 <uint64> v14 v25
    v27 = Trunc64to8 <byte> v26
    v28 = ZeroExt8to64 <int> v27
    v29 = PtrIndex <*byte> v24 v28
    v30 = Load <byte> v29 v8
    v31 = Add8 <byte> v23 v30
    v34 = Rsh64Ux64 <uint64> v14 v33
    v35 = Trunc64to8 <byte> v34
    v36 = ZeroExt8to64 <int> v35
    v37 = PtrIndex <*byte> v32 v36
    v38 = Load <byte> v37 v8
    v39 = Add8 <byte> v31 v38
    v42 = Rsh64Ux64 <uint64> v14 v41
    v43 = Trunc64to8 <byte> v42
    v44 = ZeroExt8to64 <int> v43
    v45 = PtrIndex <*byte> v40 v44
    v46 = Load <byte> v45 v8
    v47 = Add8 <byte> v39 v46
    v50 = Rsh64Ux64 <uint64> v14 v49
    v51 = Trunc64to8 <byte> v50
    v52 = ZeroExt8to64 <int> v51
    v53 = PtrIndex <*byte> v48 v52
    v54 = Load <byte> v53 v8
    v55 = Add8 <byte> v47 v54
    v58 = Rsh64Ux64 <uint64> v14 v57
    v59 = Trunc64to8 <byte> v58
    v60 = ZeroExt8to64 <int> v59
    v61 = PtrIndex <*byte> v56 v60
    v62 = Load <byte> v61 v8
    v63 = Add8 <byte> v55 v62
    v66 = Rsh64Ux64 <uint64> v14 v65
    v67 = Trunc64to8 <byte> v66
    v68 = ZeroExt8to64 <int> v67
    v69 = PtrIndex <*byte> v64 v68
    v70 = Load <byte> v69 v8
    v71 = Add8 <byte> v63 v70
    v74 = Rsh64Ux64 <uint64> v14 v73
    v75 = Trunc64to8 <byte> v74
    v76 = ZeroExt8to64 <int> v75
    v77 = PtrIndex <*byte> v72 v76
    v78 = Load <byte> v77 v8
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v6 v84
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v8
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v7 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v7
    v12 = Load <int> v10 v8
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v7 v102]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v5 v80]
  pass opt begin
  pass opt end [67999 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695] DEAD
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v16 = Const64 <uint> [0] DEAD
    v24 = Addr <*[256]byte> {p06popcount.pc} v3
    v25 = Const64 <uint> [8] DEAD
    v32 = Addr <*[256]byte> {p06popcount.pc} v3
    v33 = Const64 <uint> [16] DEAD
    v40 = Addr <*[256]byte> {p06popcount.pc} v3
    v41 = Const64 <uint> [24] DEAD
    v48 = Addr <*[256]byte> {p06popcount.pc} v3
    v49 = Const64 <uint> [32] DEAD
    v56 = Addr <*[256]byte> {p06popcount.pc} v3
    v57 = Const64 <uint> [40] DEAD
    v64 = Addr <*[256]byte> {p06popcount.pc} v3
    v65 = Const64 <uint> [48] DEAD
    v72 = Addr <*[256]byte> {p06popcount.pc} v3
    v73 = Const64 <uint> [56] DEAD
    v84 = Const64 <int> [1] DEAD
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v105 = ConstBool <bool> [true] DEAD
    v101 = ConstBool <bool> [false] DEAD
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v17 = Const64 <uint64> [1311768467294899695] DEAD
    v18 = Const8 <byte> [-17]
    v19 = ZeroExt8to64 <int> v18
    v26 = Const64 <uint64> [5124095575370701] DEAD
    v27 = Const8 <byte> [-51]
    v28 = ZeroExt8to64 <int> v27
    v34 = Const64 <uint64> [20015998341291] DEAD
    v35 = Const8 <byte> [-85]
    v36 = ZeroExt8to64 <int> v35
    v42 = Const64 <uint64> [78187493520] DEAD
    v43 = Const8 <byte> [-112]
    v44 = ZeroExt8to64 <int> v43
    v50 = Const64 <uint64> [305419896] DEAD
    v51 = Const8 <byte> [120]
    v52 = ZeroExt8to64 <int> v51
    v58 = Const64 <uint64> [1193046] DEAD
    v59 = Const8 <byte> [86]
    v60 = ZeroExt8to64 <int> v59
    v66 = Const64 <uint64> [4660] DEAD
    v67 = Const8 <byte> [52]
    v68 = ZeroExt8to64 <int> v67
    v74 = Const64 <uint64> [18] DEAD
    v75 = Const8 <byte> [18]
    v76 = ZeroExt8to64 <int> v75
    v96 = Const64 <int> [1] DEAD
    v100 = Const64 <int> [1] DEAD
    v95 = Const64 <int> [1] DEAD
    v99 = Const64 <int> [1] DEAD
    v82 = Const64 <int> [1] DEAD
    v11 = Const64 <int> [1] DEAD
    v88 = Const64 <int> [1] DEAD
    v83 = Const64 <int> [1] DEAD
    v20 = Const64 <int> [1]
    v4 = Const64 <int> [1]
    v2 = Const64 <int> [1]
    v106 = Const64 <int> [1]
    v107 = Const64 <int> [1]
    v108 = Const64 <int> [1]
    v109 = Const64 <int> [1]
    v110 = Const64 <int> [1]
    v98 = Mul64 <int> v20 v19
    v104 = Mul64 <int> v4 v28
    v97 = Mul64 <int> v2 v36
    v103 = Mul64 <int> v106 v44
    v94 = Mul64 <int> v107 v52
    v81 = Mul64 <int> v108 v60
    v91 = Mul64 <int> v109 v68
    v86 = Mul64 <int> v110 v76
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v24 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v32 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v40 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v48 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v61 = AddPtr <*byte> v56 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v69 = AddPtr <*byte> v64 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v72 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v22 = Const64 <int> [1]
    v85 = Add64 <int> v22 v6
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v7 v102]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v5 v80]
  pass zero arg cse begin
  pass zero arg cse end [57519 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v14 = Const64 <uint64> [1311768467294899695] DEAD
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v16 = Const64 <uint> [0] DEAD
    v24 = Addr <*[256]byte> {p06popcount.pc} v3
    v25 = Const64 <uint> [8] DEAD
    v32 = Addr <*[256]byte> {p06popcount.pc} v3
    v33 = Const64 <uint> [16] DEAD
    v40 = Addr <*[256]byte> {p06popcount.pc} v3
    v41 = Const64 <uint> [24] DEAD
    v48 = Addr <*[256]byte> {p06popcount.pc} v3
    v49 = Const64 <uint> [32] DEAD
    v56 = Addr <*[256]byte> {p06popcount.pc} v3
    v57 = Const64 <uint> [40] DEAD
    v64 = Addr <*[256]byte> {p06popcount.pc} v3
    v65 = Const64 <uint> [48] DEAD
    v72 = Addr <*[256]byte> {p06popcount.pc} v3
    v73 = Const64 <uint> [56] DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v105 = ConstBool <bool> [true] DEAD
    v101 = ConstBool <bool> [false] DEAD
    v18 = Const8 <byte> [-17]
    v26 = Const64 <uint64> [5124095575370701] DEAD
    v27 = Const8 <byte> [-51]
    v34 = Const64 <uint64> [20015998341291] DEAD
    v35 = Const8 <byte> [-85]
    v42 = Const64 <uint64> [78187493520] DEAD
    v43 = Const8 <byte> [-112]
    v50 = Const64 <uint64> [305419896] DEAD
    v51 = Const8 <byte> [120]
    v58 = Const64 <uint64> [1193046] DEAD
    v59 = Const8 <byte> [86]
    v66 = Const64 <uint64> [4660] DEAD
    v67 = Const8 <byte> [52]
    v74 = Const64 <uint64> [18] DEAD
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v17 = Const64 <uint64> [1311768467294899695] DEAD
    v110 = Const64 <int> [1] DEAD
    v19 = ZeroExt8to64 <int> v18
    v109 = Const64 <int> [1] DEAD
    v108 = Const64 <int> [1] DEAD
    v28 = ZeroExt8to64 <int> v27
    v107 = Const64 <int> [1] DEAD
    v106 = Const64 <int> [1] DEAD
    v36 = ZeroExt8to64 <int> v35
    v2 = Const64 <int> [1] DEAD
    v4 = Const64 <int> [1] DEAD
    v44 = ZeroExt8to64 <int> v43
    v20 = Const64 <int> [1] DEAD
    v83 = Const64 <int> [1] DEAD
    v52 = ZeroExt8to64 <int> v51
    v88 = Const64 <int> [1] DEAD
    v60 = ZeroExt8to64 <int> v59
    v11 = Const64 <int> [1] DEAD
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v84 v60
    v82 = Const64 <int> [1] DEAD
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v84 v19
    v96 = Const64 <int> [1] DEAD
    v104 = Mul64 <int> v84 v28
    v100 = Const64 <int> [1] DEAD
    v97 = Mul64 <int> v84 v36
    v95 = Const64 <int> [1] DEAD
    v103 = Mul64 <int> v84 v44
    v99 = Const64 <int> [1] DEAD
    v94 = Mul64 <int> v84 v52
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v24 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v32 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v40 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v48 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v84 v76
    v61 = AddPtr <*byte> v56 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v84 v68
    v69 = AddPtr <*byte> v64 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v72 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v84 v6
    v22 = Const64 <int> [1] DEAD
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v7 v102]
name p06popcount.x·2[uint64]: [v14]
name ~r0[int]: [v5 v80]
  pass opt deadcode begin
  pass opt deadcode end [15117 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v24 = Addr <*[256]byte> {p06popcount.pc} v3
    v32 = Addr <*[256]byte> {p06popcount.pc} v3
    v40 = Addr <*[256]byte> {p06popcount.pc} v3
    v48 = Addr <*[256]byte> {p06popcount.pc} v3
    v56 = Addr <*[256]byte> {p06popcount.pc} v3
    v64 = Addr <*[256]byte> {p06popcount.pc} v3
    v72 = Addr <*[256]byte> {p06popcount.pc} v3
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v84 v60
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v84 v19
    v104 = Mul64 <int> v84 v28
    v97 = Mul64 <int> v84 v36
    v103 = Mul64 <int> v84 v44
    v94 = Mul64 <int> v84 v52
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v24 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v32 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v40 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v48 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v84 v76
    v61 = AddPtr <*byte> v56 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v84 v68
    v69 = AddPtr <*byte> v64 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v72 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v84 v6
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass generic domtree begin
  pass generic domtree end [33381 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v24 = Addr <*[256]byte> {p06popcount.pc} v3
    v32 = Addr <*[256]byte> {p06popcount.pc} v3
    v40 = Addr <*[256]byte> {p06popcount.pc} v3
    v48 = Addr <*[256]byte> {p06popcount.pc} v3
    v56 = Addr <*[256]byte> {p06popcount.pc} v3
    v64 = Addr <*[256]byte> {p06popcount.pc} v3
    v72 = Addr <*[256]byte> {p06popcount.pc} v3
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v84 v60
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v84 v19
    v104 = Mul64 <int> v84 v28
    v97 = Mul64 <int> v84 v36
    v103 = Mul64 <int> v84 v44
    v94 = Mul64 <int> v84 v52
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v24 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v32 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v40 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v48 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v84 v76
    v61 = AddPtr <*byte> v56 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v84 v68
    v69 = AddPtr <*byte> v64 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v72 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v84 v6
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass generic cse begin
  pass generic cse end [56915 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v24 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v60 v84
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v19 v84
    v104 = Mul64 <int> v28 v84
    v97 = Mul64 <int> v36 v84
    v103 = Mul64 <int> v44 v84
    v94 = Mul64 <int> v52 v84
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v76 v84
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v68 v84
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v6 v84
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass phiopt begin
  pass phiopt end [610 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v24 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v60 v84
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v19 v84
    v104 = Mul64 <int> v28 v84
    v97 = Mul64 <int> v36 v84
    v103 = Mul64 <int> v44 v84
    v94 = Mul64 <int> v52 v84
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v76 v84
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v68 v84
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v6 v84
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass nilcheckelim begin
  pass nilcheckelim end [23502 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v24 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v60 v84
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v19 v84
    v104 = Mul64 <int> v28 v84
    v97 = Mul64 <int> v36 v84
    v103 = Mul64 <int> v44 v84
    v94 = Mul64 <int> v52 v84
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v76 v84
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v68 v84
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v6 v84
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass prove begin
  pass prove end [13558 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v24 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v60 v84
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v19 v84
    v104 = Mul64 <int> v28 v84
    v97 = Mul64 <int> v36 v84
    v103 = Mul64 <int> v44 v84
    v94 = Mul64 <int> v52 v84
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v76 v84
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v68 v84
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v6 v84
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass loopbce begin
  pass loopbce end [7808 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v24 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v60 v84
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v19 v84
    v104 = Mul64 <int> v28 v84
    v97 = Mul64 <int> v36 v84
    v103 = Mul64 <int> v44 v84
    v94 = Mul64 <int> v52 v84
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v76 v84
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v68 v84
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v6 v84
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass decompose builtin begin
  pass decompose builtin end [15710 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v24 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v60 v84
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v19 v84
    v104 = Mul64 <int> v28 v84
    v97 = Mul64 <int> v36 v84
    v103 = Mul64 <int> v44 v84
    v94 = Mul64 <int> v52 v84
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v76 v84
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v68 v84
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v6 v84
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass dec begin
  pass dec end [7390 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v24 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1]
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v60 v84
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v19 v84
    v104 = Mul64 <int> v28 v84
    v97 = Mul64 <int> v36 v84
    v103 = Mul64 <int> v44 v84
    v94 = Mul64 <int> v52 v84
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v76 v84
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v68 v84
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v85 = Add64 <int> v6 v84
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass late opt begin
  pass late opt end [11180 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v24 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v32 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v40 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v48 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v56 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v64 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v72 = Addr <*[256]byte> {p06popcount.pc} v3 DEAD
    v84 = Const64 <int> [1] DEAD
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v76 = ZeroExt8to64 <int> v75
    v22 = Const64 <int> [1]
    v99 = Const64 <int> [1]
    v95 = Const64 <int> [1]
    v100 = Const64 <int> [1]
    v96 = Const64 <int> [1]
    v82 = Const64 <int> [1]
    v11 = Const64 <int> [1]
    v88 = Const64 <int> [1]
    v86 = Mul64 <int> v22 v76
    v91 = Mul64 <int> v99 v68
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v81 = Mul64 <int> v95 v60
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v98 = Mul64 <int> v100 v19
    v104 = Mul64 <int> v96 v28
    v97 = Mul64 <int> v82 v36
    v103 = Mul64 <int> v11 v44
    v94 = Mul64 <int> v88 v52
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v71 = Add8 <byte> v63 v70
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v83 = Const64 <int> [1]
    v85 = Add64 <int> v83 v6
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass generic deadcode begin
  pass generic deadcode end [9563 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v76 = ZeroExt8to64 <int> v75
    v22 = Const64 <int> [1]
    v99 = Const64 <int> [1]
    v95 = Const64 <int> [1]
    v100 = Const64 <int> [1]
    v96 = Const64 <int> [1]
    v82 = Const64 <int> [1]
    v11 = Const64 <int> [1]
    v88 = Const64 <int> [1]
    v86 = Mul64 <int> v22 v76
    v91 = Mul64 <int> v99 v68
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v81 = Mul64 <int> v95 v60
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v98 = Mul64 <int> v100 v19
    v104 = Mul64 <int> v96 v28
    v97 = Mul64 <int> v82 v36
    v103 = Mul64 <int> v11 v44
    v94 = Mul64 <int> v88 v52
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v71 = Add8 <byte> v63 v70
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v83 = Const64 <int> [1]
    v85 = Add64 <int> v83 v6
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass check bce begin
  pass check bce end [242 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: <- b6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v76 = ZeroExt8to64 <int> v75
    v22 = Const64 <int> [1]
    v99 = Const64 <int> [1]
    v95 = Const64 <int> [1]
    v100 = Const64 <int> [1]
    v96 = Const64 <int> [1]
    v82 = Const64 <int> [1]
    v11 = Const64 <int> [1]
    v88 = Const64 <int> [1]
    v86 = Mul64 <int> v22 v76
    v91 = Mul64 <int> v99 v68
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v81 = Mul64 <int> v95 v60
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v98 = Mul64 <int> v100 v19
    v104 = Mul64 <int> v96 v28
    v97 = Mul64 <int> v82 v36
    v103 = Mul64 <int> v11 v44
    v94 = Mul64 <int> v88 v52
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v71 = Add8 <byte> v63 v70
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b7
  b4: <- b7
    v83 = Const64 <int> [1]
    v85 = Add64 <int> v83 v6
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b3 b5 (likely)
  b7: <- b3
    Plain -> b4
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass fuse begin
  pass fuse end [3992 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: DEAD
    BlockInvalid
  b4: <- b6
    v83 = Const64 <int> [1]
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v76 = ZeroExt8to64 <int> v75
    v22 = Const64 <int> [1]
    v99 = Const64 <int> [1]
    v95 = Const64 <int> [1]
    v100 = Const64 <int> [1]
    v96 = Const64 <int> [1]
    v82 = Const64 <int> [1]
    v11 = Const64 <int> [1]
    v88 = Const64 <int> [1]
    v85 = Add64 <int> v83 v6
    v86 = Mul64 <int> v22 v76
    v91 = Mul64 <int> v99 v68
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v81 = Mul64 <int> v95 v60
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v98 = Mul64 <int> v100 v19
    v104 = Mul64 <int> v96 v28
    v97 = Mul64 <int> v82 v36
    v103 = Mul64 <int> v11 v44
    v94 = Mul64 <int> v88 v52
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v71 = Add8 <byte> v63 v70
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b4 b5 (likely)
  b7: DEAD
    BlockInvalid
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass dse begin
  pass dse end [9454 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v87 = Addr <*int> {benchResult} v3
    v102 = Arg <*testing.B> {b}
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v67 = Const8 <byte> [52]
    v75 = Const8 <byte> [18]
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: DEAD
    BlockInvalid
  b4: <- b6
    v83 = Const64 <int> [1]
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v76 = ZeroExt8to64 <int> v75
    v22 = Const64 <int> [1]
    v99 = Const64 <int> [1]
    v95 = Const64 <int> [1]
    v100 = Const64 <int> [1]
    v96 = Const64 <int> [1]
    v82 = Const64 <int> [1]
    v11 = Const64 <int> [1]
    v88 = Const64 <int> [1]
    v85 = Add64 <int> v83 v6
    v86 = Mul64 <int> v22 v76
    v91 = Mul64 <int> v99 v68
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v81 = Mul64 <int> v95 v60
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v98 = Mul64 <int> v100 v19
    v104 = Mul64 <int> v96 v28
    v97 = Mul64 <int> v82 v36
    v103 = Mul64 <int> v11 v44
    v94 = Mul64 <int> v88 v52
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v71 = Add8 <byte> v63 v70
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b4 b5 (likely)
  b7: DEAD
    BlockInvalid
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass tighten begin
  pass tighten end [14275 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = Const64 <int> [0]
    v15 = Addr <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = NilCheck <void> v102 v1
    Check v9 -> b6
  b3: DEAD
    BlockInvalid
  b4: <- b6
    v83 = Const64 <int> [1]
    v22 = Const64 <int> [1]
    v99 = Const64 <int> [1]
    v95 = Const64 <int> [1]
    v100 = Const64 <int> [1]
    v96 = Const64 <int> [1]
    v82 = Const64 <int> [1]
    v11 = Const64 <int> [1]
    v88 = Const64 <int> [1]
    v18 = Const8 <byte> [-17]
    v27 = Const8 <byte> [-51]
    v35 = Const8 <byte> [-85]
    v43 = Const8 <byte> [-112]
    v75 = Const8 <byte> [18]
    v67 = Const8 <byte> [52]
    v51 = Const8 <byte> [120]
    v59 = Const8 <byte> [86]
    v85 = Add64 <int> v83 v6
    v19 = ZeroExt8to64 <int> v18
    v28 = ZeroExt8to64 <int> v27
    v36 = ZeroExt8to64 <int> v35
    v44 = ZeroExt8to64 <int> v43
    v52 = ZeroExt8to64 <int> v51
    v60 = ZeroExt8to64 <int> v59
    v68 = ZeroExt8to64 <int> v67
    v81 = Mul64 <int> v95 v60
    v76 = ZeroExt8to64 <int> v75
    v98 = Mul64 <int> v100 v19
    v104 = Mul64 <int> v96 v28
    v97 = Mul64 <int> v82 v36
    v103 = Mul64 <int> v11 v44
    v94 = Mul64 <int> v88 v52
    v21 = AddPtr <*byte> v15 v98
    v23 = Load <byte> v21 v1
    v29 = AddPtr <*byte> v15 v104
    v30 = Load <byte> v29 v1
    v31 = Add8 <byte> v23 v30
    v37 = AddPtr <*byte> v15 v97
    v38 = Load <byte> v37 v1
    v39 = Add8 <byte> v31 v38
    v45 = AddPtr <*byte> v15 v103
    v46 = Load <byte> v45 v1
    v47 = Add8 <byte> v39 v46
    v53 = AddPtr <*byte> v15 v94
    v54 = Load <byte> v53 v1
    v55 = Add8 <byte> v47 v54
    v86 = Mul64 <int> v22 v76
    v61 = AddPtr <*byte> v15 v81
    v62 = Load <byte> v61 v1
    v63 = Add8 <byte> v55 v62
    v91 = Mul64 <int> v99 v68
    v69 = AddPtr <*byte> v15 v91
    v70 = Load <byte> v69 v1
    v71 = Add8 <byte> v63 v70
    v77 = AddPtr <*byte> v15 v86
    v78 = Load <byte> v77 v1
    v79 = Add8 <byte> v71 v78
    v80 = ZeroExt8to64 <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v87 = Addr <*int> {benchResult} v3
    v90 = Store <mem> [8] v87 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v10 = OffPtr <*testing.B> [184] v102
    v12 = Load <int> v10 v1
    v13 = Less64 <bool> v6 v12
    If v13 -> b4 b5 (likely)
  b7: DEAD
    BlockInvalid
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass lower begin
  pass lower end [118535 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b3: DEAD
    BlockInvalid
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v83 = MOVQconst <int> [1] DEAD
    v22 = MOVQconst <int> [1] DEAD
    v99 = MOVQconst <int> [1] DEAD
    v95 = MOVQconst <int> [1] DEAD
    v100 = MOVQconst <int> [1] DEAD
    v96 = MOVQconst <int> [1] DEAD
    v82 = MOVQconst <int> [1] DEAD
    v11 = MOVQconst <int> [1] DEAD
    v88 = MOVQconst <int> [1] DEAD
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v21 = ADDQ <*byte> v15 v19 DEAD
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v29 = ADDQ <*byte> v15 v28 DEAD
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v37 = ADDQ <*byte> v15 v36 DEAD
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v45 = ADDQ <*byte> v15 v44 DEAD
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v53 = ADDQ <*byte> v15 v52 DEAD
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v61 = ADDQ <*byte> v15 v60 DEAD
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v69 = ADDQ <*byte> v15 v68 DEAD
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v77 = ADDQ <*byte> v15 v76 DEAD
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    v87 = LEAQ <*int> {benchResult} v3 DEAD
    Ret v92
  b6: <- b2
    v10 = ADDQconst <*testing.B> [184] v102 DEAD
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    v13 = SETL <bool> v72 DEAD
    v84 = TESTB <flags> v13 v13 DEAD
    LT v72 -> b4 b5 (likely)
  b7: DEAD
    BlockInvalid
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass lowered cse begin
  pass lowered cse end [31644 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b3: DEAD
    BlockInvalid
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v83 = MOVQconst <int> [1] DEAD
    v22 = MOVQconst <int> [1] DEAD
    v99 = MOVQconst <int> [1] DEAD
    v95 = MOVQconst <int> [1] DEAD
    v100 = MOVQconst <int> [1] DEAD
    v96 = MOVQconst <int> [1] DEAD
    v82 = MOVQconst <int> [1] DEAD
    v11 = MOVQconst <int> [1] DEAD
    v88 = MOVQconst <int> [1] DEAD
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v21 = ADDQ <*byte> v15 v19 DEAD
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v29 = ADDQ <*byte> v15 v28 DEAD
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v37 = ADDQ <*byte> v15 v36 DEAD
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v45 = ADDQ <*byte> v15 v44 DEAD
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v53 = ADDQ <*byte> v15 v52 DEAD
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v61 = ADDQ <*byte> v15 v60 DEAD
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v69 = ADDQ <*byte> v15 v68 DEAD
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v77 = ADDQ <*byte> v15 v76 DEAD
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    v87 = LEAQ <*int> {benchResult} v3 DEAD
    Ret v92
  b6: <- b2
    v10 = ADDQconst <*testing.B> [184] v102 DEAD
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    v13 = SETL <bool> v72 DEAD
    v84 = TESTB <flags> v13 v13 DEAD
    LT v72 -> b4 b5 (likely)
  b7: DEAD
    BlockInvalid
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass lowered deadcode begin
  pass lowered deadcode end [10256 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass checkLower begin
  pass checkLower end [1350 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass late phielim begin
  pass late phielim end [1949 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass late copyelim begin
  pass late copyelim end [2217 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass phi tighten begin
  pass phi tighten end [6690 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass late deadcode begin
  pass late deadcode end [7237 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass critical begin
  pass critical end [1720 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass likelyadjust begin
  pass likelyadjust end [20625 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass layout begin
  pass layout end [3408 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    v102 = Arg <*testing.B> {b}
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v27 = MOVLconst <byte> [-51]
    v35 = MOVLconst <byte> [-85]
    v43 = MOVLconst <byte> [-112]
    v75 = MOVLconst <byte> [18]
    v67 = MOVLconst <byte> [52]
    v51 = MOVLconst <byte> [120]
    v59 = MOVLconst <byte> [86]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v31 = ADDL <byte> v23 v30
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v39 = ADDL <byte> v31 v38
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v47 = ADDL <byte> v39 v46
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v55 = ADDL <byte> v47 v54
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v63 = ADDL <byte> v55 v62
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v71 = ADDL <byte> v63 v70
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass schedule begin
  pass schedule end [45260 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v102 = Arg <*testing.B> {b}
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v27 = MOVLconst <byte> [-51]
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v35 = MOVLconst <byte> [-85]
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v43 = MOVLconst <byte> [-112]
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v51 = MOVLconst <byte> [120]
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v59 = MOVLconst <byte> [86]
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v67 = MOVLconst <byte> [52]
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v75 = MOVLconst <byte> [18]
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v31 = ADDL <byte> v23 v30
    v39 = ADDL <byte> v31 v38
    v47 = ADDL <byte> v39 v46
    v55 = ADDL <byte> v47 v54
    v63 = ADDL <byte> v55 v62
    v71 = ADDL <byte> v63 v70
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass flagalloc begin
  pass flagalloc end [7207 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr>
    v5 = MOVQconst <int> [0]
    v102 = Arg <*testing.B> {b}
    v15 = LEAQ <*[256]byte> {p06popcount.pc} v3
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v5 v85
    v93 = Phi <int> v5 v80
    v9 = LoweredNilCheck <void> v102 v1
    Check v9 -> b6
  b6: <- b2
    v12 = MOVQload <int> [184] v102 v1
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
  b4: <- b6
    v85 = ADDQconst <int> [1] v6
    v18 = MOVLconst <byte> [-17]
    v19 = MOVBQZX <int> v18
    v23 = MOVBloadidx1 <byte> v15 v19 v1
    v27 = MOVLconst <byte> [-51]
    v28 = MOVBQZX <int> v27
    v30 = MOVBloadidx1 <byte> v15 v28 v1
    v35 = MOVLconst <byte> [-85]
    v36 = MOVBQZX <int> v35
    v38 = MOVBloadidx1 <byte> v15 v36 v1
    v43 = MOVLconst <byte> [-112]
    v44 = MOVBQZX <int> v43
    v46 = MOVBloadidx1 <byte> v15 v44 v1
    v51 = MOVLconst <byte> [120]
    v52 = MOVBQZX <int> v51
    v54 = MOVBloadidx1 <byte> v15 v52 v1
    v59 = MOVLconst <byte> [86]
    v60 = MOVBQZX <int> v59
    v62 = MOVBloadidx1 <byte> v15 v60 v1
    v67 = MOVLconst <byte> [52]
    v68 = MOVBQZX <int> v67
    v70 = MOVBloadidx1 <byte> v15 v68 v1
    v75 = MOVLconst <byte> [18]
    v76 = MOVBQZX <int> v75
    v78 = MOVBloadidx1 <byte> v15 v76 v1
    v31 = ADDL <byte> v23 v30
    v39 = ADDL <byte> v31 v38
    v47 = ADDL <byte> v39 v46
    v55 = ADDL <byte> v47 v54
    v63 = ADDL <byte> v55 v62
    v71 = ADDL <byte> v63 v70
    v79 = ADDL <byte> v71 v78
    v80 = MOVBQZX <int> v79
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass regalloc begin
  pass regalloc end [173485 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr> : SB
    v102 = Arg <*testing.B> {b} : b[*testing.B]
    v84 = LoadReg <*testing.B> v102 : AX
    v13 = LEAQ <*[256]byte> {p06popcount.pc} v3 : CX
    v10 = MOVQconst <int> [0] : DX
    v88 = Copy <int> v10 : BX
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v10 v85 : DX
    v93 = Phi <int> v88 v80 : BX
    v9 = LoweredNilCheck <void> v84 v1
    Check v9 -> b6
  b6: <- b2
    v12 = MOVQload <int> [184] v84 v1 : SI
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
  b4: <- b6
    v85 = ADDQconst <int> [1] v6 : DX
    v96 = MOVLconst <byte> [-17] : SI
    v19 = MOVBQZX <int> v96 : SI
    v23 = MOVBloadidx1 <byte> v13 v19 v1 : SI
    v99 = MOVLconst <byte> [-51] : DI
    v28 = MOVBQZX <int> v99 : DI
    v30 = MOVBloadidx1 <byte> v13 v28 v1 : DI
    v69 = MOVLconst <byte> [-85] : R8
    v36 = MOVBQZX <int> v69 : R8
    v38 = MOVBloadidx1 <byte> v13 v36 v1 : R8
    v45 = MOVLconst <byte> [-112] : R9
    v44 = MOVBQZX <int> v45 : R9
    v46 = MOVBloadidx1 <byte> v13 v44 v1 : R9
    v21 = MOVLconst <byte> [120] : R10
    v52 = MOVBQZX <int> v21 : R10
    v54 = MOVBloadidx1 <byte> v13 v52 v1 : R10
    v103 = MOVLconst <byte> [86] : R11
    v60 = MOVBQZX <int> v103 : R11
    v62 = MOVBloadidx1 <byte> v13 v60 v1 : R11
    v98 = MOVLconst <byte> [52] : R12
    v68 = MOVBQZX <int> v98 : R12
    v70 = MOVBloadidx1 <byte> v13 v68 v1 : R12
    v86 = MOVLconst <byte> [18] : R13
    v76 = MOVBQZX <int> v86 : R13
    v78 = MOVBloadidx1 <byte> v13 v76 v1 : R13
    v31 = ADDL <byte> v23 v30 : SI
    v39 = ADDL <byte> v31 v38 : SI
    v47 = ADDL <byte> v39 v46 : SI
    v55 = ADDL <byte> v47 v54 : SI
    v63 = ADDL <byte> v55 v62 : SI
    v71 = ADDL <byte> v63 v70 : SI
    v79 = ADDL <byte> v71 v78 : SI
    v80 = MOVBQZX <int> v79 : BX
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
  pass trim begin
  pass trim end [435 ns]
BenchmarkPopCount2 <nil>
  b1:
    v1 = InitMem <mem>
    v3 = SB <uintptr> : SB
    v102 = Arg <*testing.B> {b} : b[*testing.B]
    v84 = LoadReg <*testing.B> v102 : AX
    v13 = LEAQ <*[256]byte> {p06popcount.pc} v3 : CX
    v10 = MOVQconst <int> [0] : DX
    v88 = Copy <int> v10 : BX
    Plain -> b2
  b2: <- b1 b4
    v6 = Phi <int> v10 v85 : DX
    v93 = Phi <int> v88 v80 : BX
    v9 = LoweredNilCheck <void> v84 v1
    Check v9 -> b6
  b6: <- b2
    v12 = MOVQload <int> [184] v84 v1 : SI
    v72 = CMPQ <flags> v6 v12
    LT v72 -> b4 b5 (likely)
  b4: <- b6
    v85 = ADDQconst <int> [1] v6 : DX
    v96 = MOVLconst <byte> [-17] : SI
    v19 = MOVBQZX <int> v96 : SI
    v23 = MOVBloadidx1 <byte> v13 v19 v1 : SI
    v99 = MOVLconst <byte> [-51] : DI
    v28 = MOVBQZX <int> v99 : DI
    v30 = MOVBloadidx1 <byte> v13 v28 v1 : DI
    v69 = MOVLconst <byte> [-85] : R8
    v36 = MOVBQZX <int> v69 : R8
    v38 = MOVBloadidx1 <byte> v13 v36 v1 : R8
    v45 = MOVLconst <byte> [-112] : R9
    v44 = MOVBQZX <int> v45 : R9
    v46 = MOVBloadidx1 <byte> v13 v44 v1 : R9
    v21 = MOVLconst <byte> [120] : R10
    v52 = MOVBQZX <int> v21 : R10
    v54 = MOVBloadidx1 <byte> v13 v52 v1 : R10
    v103 = MOVLconst <byte> [86] : R11
    v60 = MOVBQZX <int> v103 : R11
    v62 = MOVBloadidx1 <byte> v13 v60 v1 : R11
    v98 = MOVLconst <byte> [52] : R12
    v68 = MOVBQZX <int> v98 : R12
    v70 = MOVBloadidx1 <byte> v13 v68 v1 : R12
    v86 = MOVLconst <byte> [18] : R13
    v76 = MOVBQZX <int> v86 : R13
    v78 = MOVBloadidx1 <byte> v13 v76 v1 : R13
    v31 = ADDL <byte> v23 v30 : SI
    v39 = ADDL <byte> v31 v38 : SI
    v47 = ADDL <byte> v39 v46 : SI
    v55 = ADDL <byte> v47 v54 : SI
    v63 = ADDL <byte> v55 v62 : SI
    v71 = ADDL <byte> v63 v70 : SI
    v79 = ADDL <byte> v71 v78 : SI
    v80 = MOVBQZX <int> v79 : BX
    Plain -> b2
  b5: <- b6
    v89 = VarDef <mem> {benchResult} v1
    v90 = MOVQstore <mem> {benchResult} v3 v93 v89
    v92 = KeepAlive <mem> v102 v90
    Ret v92
name c[int]: [v5 v80 v93]
name i[int]: [v5 v6 v85]
name b[*testing.B]: [v102]
name ~r0[int]: [v5 v80]
genssa BenchmarkPopCount2
   	00236 (popcount_test.go:56)	TEXT	"".BenchmarkPopCount2(SB), $0
   	00237 (popcount_test.go:56)	FUNCDATA	$0, "".gcargs·8(SB)
   	00238 (popcount_test.go:56)	FUNCDATA	$1, "".gclocals·9(SB)
   	00239 (popcount_test.go:56)	TYPE	"".b(FP)type.*testing.B, $8
   	00240 (popcount_test.go:56)	TYPE	"".c(SP)type.int, $8
   	00241 (popcount_test.go:56)	TYPE	"".i(SP)type.int, $8
   	00242 (popcount_test.go:56)	TYPE	github.com/tooru/gopl/ch11/p06popcount.x·2(SP)type.uint64, $8
   	00243 (popcount_test.go:56)	TYPE	"".~r0(SP)type.int, $8
   	00244 (popcount_test.go:56)	TYPE	"".autotmp_5(SP)type.int, $8
   	00245 (popcount_test.go:56)	TYPE	"".autotmp_6(SP)type.int, $8
v84	00246 (popcount_test.go:58)	MOVQ	"".b(FP), AX
v13	00247 (popcount_test.go:59)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), CX
v10	00248 (popcount_test.go:57)	MOVQ	$0, DX
v88	00249 (popcount_test.go:57)	MOVQ	DX, BX
v12	00250 (popcount_test.go:58)	MOVQ	184(AX), SI
v72	00251 (popcount_test.go:58)	CMPQ	DX, SI
b6	00252 (popcount_test.go:58)	JGE	$0, 287
v85	00253 (popcount_test.go:58)	INCQ	DX
v96	00254 (popcount_test.go:59)	MOVL	$-17, SI
v19	00255 (popcount_test.go:59)	MOVBQZX	SI, SI
v23	00256 (popcount_test.go:59)	MOVBLZX	(CX)(SI*1), SI
v99	00257 (popcount_test.go:59)	MOVL	$-51, DI
v28	00258 (popcount_test.go:59)	MOVBQZX	DI, DI
v30	00259 (popcount_test.go:59)	MOVBLZX	(CX)(DI*1), DI
v69	00260 (popcount_test.go:59)	MOVL	$-85, R8
v36	00261 (popcount_test.go:59)	MOVBQZX	R8, R8
v38	00262 (popcount_test.go:59)	MOVBLZX	(CX)(R8*1), R8
v45	00263 (popcount_test.go:59)	MOVL	$-112, R9
v44	00264 (popcount_test.go:59)	MOVBQZX	R9, R9
v46	00265 (popcount_test.go:59)	MOVBLZX	(CX)(R9*1), R9
v21	00266 (popcount_test.go:59)	MOVL	$120, R10
v52	00267 (popcount_test.go:59)	MOVBQZX	R10, R10
v54	00268 (popcount_test.go:59)	MOVBLZX	(CX)(R10*1), R10
v103	00269 (popcount_test.go:59)	MOVL	$86, R11
v60	00270 (popcount_test.go:59)	MOVBQZX	R11, R11
v62	00271 (popcount_test.go:59)	MOVBLZX	(CX)(R11*1), R11
v98	00272 (popcount_test.go:59)	MOVL	$52, R12
v68	00273 (popcount_test.go:59)	MOVBQZX	R12, R12
v70	00274 (popcount_test.go:59)	MOVBLZX	(CX)(R12*1), R12
v86	00275 (popcount_test.go:59)	MOVL	$18, R13
v76	00276 (popcount_test.go:59)	MOVBQZX	R13, R13
v78	00277 (popcount_test.go:59)	MOVBLZX	(CX)(R13*1), R13
v31	00278 (popcount_test.go:59)	ADDL	DI, SI
v39	00279 (popcount_test.go:59)	ADDL	R8, SI
v47	00280 (popcount_test.go:59)	ADDL	R9, SI
v55	00281 (popcount_test.go:59)	ADDL	R10, SI
v63	00282 (popcount_test.go:59)	ADDL	R11, SI
v71	00283 (popcount_test.go:59)	ADDL	R12, SI
v79	00284 (popcount_test.go:59)	ADDL	R13, SI
v80	00285 (popcount_test.go:59)	MOVBQZX	SI, BX
b4	00286 (popcount_test.go:58)	JMP	250
v90	00287 (popcount_test.go:61)	MOVQ	BX, "".benchResult(SB)
v92	00288 (popcount_test.go:62)	VARLIVE	"".b(FP)
b5	00289 (popcount_test.go:62)	RET
   	00290 (<unknown line number>)	END
"".BitCount t=1 size=126 args=0x10 locals=0x0
	0x0000 00000 (popcount_test.go:14)	TEXT	"".BitCount(SB), $0-16
	0x0000 00000 (popcount_test.go:14)	NOP
	0x0000 00000 (popcount_test.go:14)	NOP
	0x0000 00000 (popcount_test.go:14)	MOVQ	"".x+8(FP), AX
	0x0005 00005 (popcount_test.go:14)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0005 00005 (popcount_test.go:14)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:16)	MOVQ	AX, BX
	0x0008 00008 (popcount_test.go:16)	SHRQ	$1, BX
	0x000b 00011 (popcount_test.go:16)	MOVQ	$6148914691236517205, R8
	0x0015 00021 (popcount_test.go:16)	ANDQ	R8, BX
	0x0018 00024 (popcount_test.go:16)	MOVQ	AX, R8
	0x001b 00027 (popcount_test.go:16)	SUBQ	BX, R8
	0x001e 00030 (popcount_test.go:17)	MOVQ	$3689348814741910323, AX
	0x0028 00040 (popcount_test.go:17)	ANDQ	R8, AX
	0x002b 00043 (popcount_test.go:17)	SHRQ	$2, R8
	0x002f 00047 (popcount_test.go:17)	MOVQ	$3689348814741910323, R9
	0x0039 00057 (popcount_test.go:17)	ANDQ	R9, R8
	0x003c 00060 (popcount_test.go:17)	ADDQ	R8, AX
	0x003f 00063 (popcount_test.go:18)	MOVQ	AX, BX
	0x0042 00066 (popcount_test.go:18)	SHRQ	$4, BX
	0x0046 00070 (popcount_test.go:18)	ADDQ	AX, BX
	0x0049 00073 (popcount_test.go:18)	MOVQ	$1085102592571150095, R8
	0x0053 00083 (popcount_test.go:18)	ANDQ	R8, BX
	0x0056 00086 (popcount_test.go:18)	MOVQ	BX, AX
	0x0059 00089 (popcount_test.go:19)	SHRQ	$8, BX
	0x005d 00093 (popcount_test.go:19)	ADDQ	AX, BX
	0x0060 00096 (popcount_test.go:19)	MOVQ	BX, AX
	0x0063 00099 (popcount_test.go:20)	SHRQ	$16, BX
	0x0067 00103 (popcount_test.go:20)	ADDQ	AX, BX
	0x006a 00106 (popcount_test.go:20)	MOVQ	BX, AX
	0x006d 00109 (popcount_test.go:21)	SHRQ	$32, BX
	0x0071 00113 (popcount_test.go:21)	ADDQ	AX, BX
	0x0074 00116 (popcount_test.go:22)	ANDQ	$127, BX
	0x0078 00120 (popcount_test.go:22)	MOVQ	BX, "".~r1+16(FP)
	0x007d 00125 (popcount_test.go:22)	RET
	0x0000 48 8b 44 24 08 48 89 c3 48 d1 eb 49 b8 55 55 55  H.D$.H..H..I.UUU
	0x0010 55 55 55 55 55 4c 21 c3 49 89 c0 49 29 d8 48 b8  UUUUUL!.I..I).H.
	0x0020 33 33 33 33 33 33 33 33 4c 21 c0 49 c1 e8 02 49  33333333L!.I...I
	0x0030 b9 33 33 33 33 33 33 33 33 4d 21 c8 4c 01 c0 48  .33333333M!.L..H
	0x0040 89 c3 48 c1 eb 04 48 01 c3 49 b8 0f 0f 0f 0f 0f  ..H...H..I......
	0x0050 0f 0f 0f 4c 21 c3 48 89 d8 48 c1 eb 08 48 01 c3  ...L!.H..H...H..
	0x0060 48 89 d8 48 c1 eb 10 48 01 c3 48 89 d8 48 c1 eb  H..H...H..H..H..
	0x0070 20 48 01 c3 48 83 e3 7f 48 89 5c 24 10 c3         H..H...H.\$..
"".PopCountByClearing t=1 size=40 args=0x10 locals=0x0
	0x0000 00000 (popcount_test.go:25)	TEXT	"".PopCountByClearing(SB), $0-16
	0x0000 00000 (popcount_test.go:25)	NOP
	0x0000 00000 (popcount_test.go:25)	NOP
	0x0000 00000 (popcount_test.go:25)	MOVQ	"".x+8(FP), AX
	0x0005 00005 (popcount_test.go:25)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0005 00005 (popcount_test.go:25)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:26)	MOVQ	$0, CX
	0x0007 00007 (popcount_test.go:27)	CMPQ	AX, $0
	0x000b 00011 (popcount_test.go:27)	JEQ	$0, 34
	0x000d 00013 (popcount_test.go:28)	MOVQ	AX, BX
	0x0010 00016 (popcount_test.go:28)	DECQ	BX
	0x0013 00019 (popcount_test.go:28)	ANDQ	AX, BX
	0x0016 00022 (popcount_test.go:28)	MOVQ	BX, AX
	0x0019 00025 (popcount_test.go:31)	INCQ	CX
	0x001c 00028 (popcount_test.go:31)	NOP
	0x001c 00028 (popcount_test.go:27)	CMPQ	AX, $0
	0x0020 00032 (popcount_test.go:27)	JNE	$0, 13
	0x0022 00034 (popcount_test.go:33)	MOVQ	CX, "".~r1+16(FP)
	0x0027 00039 (popcount_test.go:33)	RET
	0x0000 48 8b 44 24 08 31 c9 48 83 f8 00 74 15 48 89 c3  H.D$.1.H...t.H..
	0x0010 48 ff cb 48 21 c3 48 89 d8 48 ff c1 48 83 f8 00  H..H!.H..H..H...
	0x0020 75 eb 48 89 4c 24 10 c3                          u.H.L$..
"".PopCountByShifting t=1 size=71 args=0x10 locals=0x0
	0x0000 00000 (popcount_test.go:36)	TEXT	"".PopCountByShifting(SB), $0-16
	0x0000 00000 (popcount_test.go:36)	NOP
	0x0000 00000 (popcount_test.go:36)	NOP
	0x0000 00000 (popcount_test.go:36)	MOVQ	"".x+8(FP), SI
	0x0005 00005 (popcount_test.go:36)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0005 00005 (popcount_test.go:36)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:37)	MOVQ	$0, DX
	0x0007 00007 (popcount_test.go:38)	MOVQ	$0, AX
	0x0009 00009 (popcount_test.go:38)	CMPQ	AX, $64
	0x000d 00013 (popcount_test.go:38)	JCC	$0, 61
	0x000f 00015 (popcount_test.go:39)	MOVQ	CX, R8
	0x0012 00018 (popcount_test.go:39)	MOVQ	$1, BX
	0x0019 00025 (popcount_test.go:39)	MOVQ	AX, CX
	0x001c 00028 (popcount_test.go:39)	CMPQ	AX, $64
	0x0020 00032 (popcount_test.go:39)	JCC	$1, 67
	0x0022 00034 (popcount_test.go:39)	SHLQ	CX, BX
	0x0025 00037 (popcount_test.go:39)	MOVQ	R8, CX
	0x0028 00040 (popcount_test.go:39)	ANDQ	SI, BX
	0x002b 00043 (popcount_test.go:39)	CMPQ	BX, $0
	0x002f 00047 (popcount_test.go:39)	JEQ	52
	0x0031 00049 (popcount_test.go:40)	INCQ	DX
	0x0034 00052 (popcount_test.go:40)	NOP
	0x0034 00052 (popcount_test.go:38)	INCQ	AX
	0x0037 00055 (popcount_test.go:38)	NOP
	0x0037 00055 (popcount_test.go:38)	CMPQ	AX, $64
	0x003b 00059 (popcount_test.go:38)	JCS	$0, 15
	0x003d 00061 (popcount_test.go:43)	MOVQ	DX, "".~r1+16(FP)
	0x0042 00066 (popcount_test.go:43)	RET
	0x0043 00067 (popcount_test.go:39)	MOVQ	$0, BX
	0x0045 00069 (popcount_test.go:39)	JMP	34
	0x0000 48 8b 74 24 08 31 d2 31 c0 48 83 f8 40 73 2e 49  H.t$.1.1.H..@s.I
	0x0010 89 c8 48 c7 c3 01 00 00 00 48 89 c1 48 83 f8 40  ..H......H..H..@
	0x0020 73 21 48 d3 e3 4c 89 c1 48 21 f3 48 83 fb 00 74  s!H..L..H!.H...t
	0x0030 03 48 ff c2 48 ff c0 48 83 f8 40 72 d2 48 89 54  .H..H..H..@r.H.T
	0x0040 24 10 c3 31 db eb db                             $..1...
"".BenchmarkPopCount t=1 size=284 args=0x8 locals=0x0
	0x0000 00000 (popcount_test.go:48)	TEXT	"".BenchmarkPopCount(SB), $0-8
	0x0000 00000 (popcount_test.go:48)	NOP
	0x0000 00000 (popcount_test.go:48)	NOP
	0x0000 00000 (popcount_test.go:48)	MOVQ	"".b+8(FP), DX
	0x0005 00005 (popcount_test.go:48)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0005 00005 (popcount_test.go:48)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:49)	MOVQ	$0, CX
	0x0007 00007 (popcount_test.go:49)	NOP
	0x0007 00007 (popcount_test.go:49)	MOVQ	184(DX), BX
	0x000e 00014 (popcount_test.go:49)	CMPQ	BX, CX
	0x0011 00017 (popcount_test.go:49)	JLE	$0, 283
	0x0017 00023 (popcount_test.go:50)	MOVQ	$1311768467294899695, R8
	0x0021 00033 (popcount_test.go:50)	MOVQ	R8, R9
	0x0024 00036 (popcount_test.go:50)	SHRQ	$0, R8
	0x0028 00040 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BX
	0x002f 00047 (popcount_test.go:50)	MOVBQZX	R8B, R8
	0x0033 00051 (popcount_test.go:50)	LEAQ	(BX)(R8*1), BX
	0x0037 00055 (popcount_test.go:50)	MOVBQZX	(BX), BX
	0x003a 00058 (popcount_test.go:50)	MOVQ	R9, AX
	0x003d 00061 (popcount_test.go:50)	SHRQ	$8, R9
	0x0041 00065 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), R8
	0x0048 00072 (popcount_test.go:50)	MOVBQZX	R9B, R9
	0x004c 00076 (popcount_test.go:50)	LEAQ	(R8)(R9*1), R8
	0x0050 00080 (popcount_test.go:50)	MOVBQZX	(R8), R8
	0x0054 00084 (popcount_test.go:50)	ADDQ	R8, BX
	0x0057 00087 (popcount_test.go:50)	MOVQ	AX, R9
	0x005a 00090 (popcount_test.go:50)	SHRQ	$16, R9
	0x005e 00094 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), R8
	0x0065 00101 (popcount_test.go:50)	MOVBQZX	R9B, R9
	0x0069 00105 (popcount_test.go:50)	LEAQ	(R8)(R9*1), R8
	0x006d 00109 (popcount_test.go:50)	MOVBQZX	(R8), R8
	0x0071 00113 (popcount_test.go:50)	ADDQ	R8, BX
	0x0074 00116 (popcount_test.go:50)	MOVQ	AX, R9
	0x0077 00119 (popcount_test.go:50)	SHRQ	$24, R9
	0x007b 00123 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), R8
	0x0082 00130 (popcount_test.go:50)	MOVBQZX	R9B, R9
	0x0086 00134 (popcount_test.go:50)	LEAQ	(R8)(R9*1), R8
	0x008a 00138 (popcount_test.go:50)	MOVBQZX	(R8), R8
	0x008e 00142 (popcount_test.go:50)	ADDQ	R8, BX
	0x0091 00145 (popcount_test.go:50)	MOVQ	AX, R9
	0x0094 00148 (popcount_test.go:50)	SHRQ	$32, R9
	0x0098 00152 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), R8
	0x009f 00159 (popcount_test.go:50)	MOVBQZX	R9B, R9
	0x00a3 00163 (popcount_test.go:50)	LEAQ	(R8)(R9*1), R8
	0x00a7 00167 (popcount_test.go:50)	MOVBQZX	(R8), R8
	0x00ab 00171 (popcount_test.go:50)	ADDQ	R8, BX
	0x00ae 00174 (popcount_test.go:50)	MOVQ	AX, R9
	0x00b1 00177 (popcount_test.go:50)	SHRQ	$40, R9
	0x00b5 00181 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), R8
	0x00bc 00188 (popcount_test.go:50)	MOVBQZX	R9B, R9
	0x00c0 00192 (popcount_test.go:50)	LEAQ	(R8)(R9*1), R8
	0x00c4 00196 (popcount_test.go:50)	MOVBQZX	(R8), R8
	0x00c8 00200 (popcount_test.go:50)	ADDQ	R8, BX
	0x00cb 00203 (popcount_test.go:50)	MOVQ	AX, R9
	0x00ce 00206 (popcount_test.go:50)	SHRQ	$48, R9
	0x00d2 00210 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), R8
	0x00d9 00217 (popcount_test.go:50)	MOVBQZX	R9B, R9
	0x00dd 00221 (popcount_test.go:50)	LEAQ	(R8)(R9*1), R8
	0x00e1 00225 (popcount_test.go:50)	MOVBQZX	(R8), R8
	0x00e5 00229 (popcount_test.go:50)	ADDQ	R8, BX
	0x00e8 00232 (popcount_test.go:50)	MOVQ	AX, R9
	0x00eb 00235 (popcount_test.go:50)	SHRQ	$56, R9
	0x00ef 00239 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), R8
	0x00f6 00246 (popcount_test.go:50)	MOVBQZX	R9B, R9
	0x00fa 00250 (popcount_test.go:50)	LEAQ	(R8)(R9*1), R8
	0x00fe 00254 (popcount_test.go:50)	MOVBQZX	(R8), R8
	0x0102 00258 (popcount_test.go:50)	ADDQ	R8, BX
	0x0105 00261 (popcount_test.go:50)	MOVBQZX	BL, BX
	0x0108 00264 (popcount_test.go:49)	INCQ	CX
	0x010b 00267 (popcount_test.go:49)	NOP
	0x010b 00267 (popcount_test.go:49)	MOVQ	184(DX), BX
	0x0112 00274 (popcount_test.go:49)	CMPQ	BX, CX
	0x0115 00277 (popcount_test.go:49)	JGT	$0, 23
	0x011b 00283 (popcount_test.go:52)	RET
	0x0000 48 8b 54 24 08 31 c9 48 8b 9a b8 00 00 00 48 39  H.T$.1.H......H9
	0x0010 cb 0f 8e 04 01 00 00 49 b8 ef cd ab 90 78 56 34  .......I.....xV4
	0x0020 12 4d 89 c1 49 c1 e8 00 48 8d 1d 00 00 00 00 45  .M..I...H......E
	0x0030 0f b6 c0 4a 8d 1c 03 0f b6 1b 4c 89 c8 49 c1 e9  ...J......L..I..
	0x0040 08 4c 8d 05 00 00 00 00 45 0f b6 c9 4f 8d 04 08  .L......E...O...
	0x0050 45 0f b6 00 4c 01 c3 49 89 c1 49 c1 e9 10 4c 8d  E...L..I..I...L.
	0x0060 05 00 00 00 00 45 0f b6 c9 4f 8d 04 08 45 0f b6  .....E...O...E..
	0x0070 00 4c 01 c3 49 89 c1 49 c1 e9 18 4c 8d 05 00 00  .L..I..I...L....
	0x0080 00 00 45 0f b6 c9 4f 8d 04 08 45 0f b6 00 4c 01  ..E...O...E...L.
	0x0090 c3 49 89 c1 49 c1 e9 20 4c 8d 05 00 00 00 00 45  .I..I.. L......E
	0x00a0 0f b6 c9 4f 8d 04 08 45 0f b6 00 4c 01 c3 49 89  ...O...E...L..I.
	0x00b0 c1 49 c1 e9 28 4c 8d 05 00 00 00 00 45 0f b6 c9  .I..(L......E...
	0x00c0 4f 8d 04 08 45 0f b6 00 4c 01 c3 49 89 c1 49 c1  O...E...L..I..I.
	0x00d0 e9 30 4c 8d 05 00 00 00 00 45 0f b6 c9 4f 8d 04  .0L......E...O..
	0x00e0 08 45 0f b6 00 4c 01 c3 49 89 c1 49 c1 e9 38 4c  .E...L..I..I..8L
	0x00f0 8d 05 00 00 00 00 45 0f b6 c9 4f 8d 04 08 45 0f  ......E...O...E.
	0x0100 b6 00 4c 01 c3 0f b6 db 48 ff c1 48 8b 9a b8 00  ..L.....H..H....
	0x0110 00 00 48 39 cb 0f 8f fc fe ff ff c3              ..H9........
	rel 43+4 t=14 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 68+4 t=14 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 97+4 t=14 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 126+4 t=14 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 155+4 t=14 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 184+4 t=14 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 213+4 t=14 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 242+4 t=14 github.com/tooru/gopl/ch11/p06popcount.pc+0
"".BenchmarkPopCount2 t=1 size=200 args=0x8 locals=0x0
	0x0000 00000 (popcount_test.go:56)	TEXT	"".BenchmarkPopCount2(SB), $0-8
	0x0000 00000 (popcount_test.go:56)	NOP
	0x0000 00000 (popcount_test.go:56)	NOP
	0x0000 00000 (popcount_test.go:56)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0000 00000 (popcount_test.go:56)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (popcount_test.go:58)	MOVQ	"".b+8(FP), AX
	0x0005 00005 (popcount_test.go:59)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), CX
	0x000c 00012 (popcount_test.go:57)	MOVQ	$0, DX
	0x000e 00014 (popcount_test.go:57)	MOVQ	DX, BX
	0x0011 00017 (popcount_test.go:58)	MOVQ	184(AX), SI
	0x0018 00024 (popcount_test.go:58)	CMPQ	DX, SI
	0x001b 00027 (popcount_test.go:58)	JGE	$0, 192
	0x0021 00033 (popcount_test.go:58)	INCQ	DX
	0x0024 00036 (popcount_test.go:59)	MOVL	$-17, SI
	0x0029 00041 (popcount_test.go:59)	MOVBQZX	SIB, SI
	0x002d 00045 (popcount_test.go:59)	MOVBLZX	(CX)(SI*1), SI
	0x0031 00049 (popcount_test.go:59)	MOVL	$-51, DI
	0x0036 00054 (popcount_test.go:59)	MOVBQZX	DIB, DI
	0x003a 00058 (popcount_test.go:59)	MOVBLZX	(CX)(DI*1), DI
	0x003e 00062 (popcount_test.go:59)	MOVL	$-85, R8
	0x0044 00068 (popcount_test.go:59)	MOVBQZX	R8B, R8
	0x0048 00072 (popcount_test.go:59)	MOVBLZX	(CX)(R8*1), R8
	0x004d 00077 (popcount_test.go:59)	MOVL	$-112, R9
	0x0053 00083 (popcount_test.go:59)	MOVBQZX	R9B, R9
	0x0057 00087 (popcount_test.go:59)	MOVBLZX	(CX)(R9*1), R9
	0x005c 00092 (popcount_test.go:59)	MOVL	$120, R10
	0x0062 00098 (popcount_test.go:59)	MOVBQZX	R10B, R10
	0x0066 00102 (popcount_test.go:59)	MOVBLZX	(CX)(R10*1), R10
	0x006b 00107 (popcount_test.go:59)	MOVL	$86, R11
	0x0071 00113 (popcount_test.go:59)	MOVBQZX	R11B, R11
	0x0075 00117 (popcount_test.go:59)	MOVBLZX	(CX)(R11*1), R11
	0x007a 00122 (popcount_test.go:59)	MOVL	$52, R12
	0x0080 00128 (popcount_test.go:59)	MOVBQZX	R12B, R12
	0x0084 00132 (popcount_test.go:59)	MOVBLZX	(CX)(R12*1), R12
	0x0089 00137 (popcount_test.go:59)	MOVL	$18, R13
	0x008f 00143 (popcount_test.go:59)	MOVBQZX	R13B, R13
	0x0093 00147 (popcount_test.go:59)	MOVBLZX	(CX)(R13*1), R13
	0x0098 00152 (popcount_test.go:59)	ADDL	DI, SI
	0x009a 00154 (popcount_test.go:59)	ADDL	R8, SI
	0x009d 00157 (popcount_test.go:59)	ADDL	R9, SI
	0x00a0 00160 (popcount_test.go:59)	ADDL	R10, SI
	0x00a3 00163 (popcount_test.go:59)	ADDL	R11, SI
	0x00a6 00166 (popcount_test.go:59)	ADDL	R12, SI
	0x00a9 00169 (popcount_test.go:59)	ADDL	R13, SI
	0x00ac 00172 (popcount_test.go:59)	MOVBQZX	SIB, BX
	0x00b0 00176 (popcount_test.go:58)	MOVQ	184(AX), SI
	0x00b7 00183 (popcount_test.go:58)	CMPQ	DX, SI
	0x00ba 00186 (popcount_test.go:58)	JLT	$0, 33
	0x00c0 00192 (popcount_test.go:61)	MOVQ	BX, "".benchResult(SB)
	0x00c7 00199 (popcount_test.go:62)	RET
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
"".BenchmarkBitCount t=1 size=168 args=0x8 locals=0x0
	0x0000 00000 (popcount_test.go:64)	TEXT	"".BenchmarkBitCount(SB), $0-8
	0x0000 00000 (popcount_test.go:64)	NOP
	0x0000 00000 (popcount_test.go:64)	NOP
	0x0000 00000 (popcount_test.go:64)	MOVQ	"".b+8(FP), DX
	0x0005 00005 (popcount_test.go:64)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0005 00005 (popcount_test.go:64)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:65)	MOVQ	$0, AX
	0x0007 00007 (popcount_test.go:65)	NOP
	0x0007 00007 (popcount_test.go:65)	MOVQ	184(DX), BX
	0x000e 00014 (popcount_test.go:65)	CMPQ	BX, AX
	0x0011 00017 (popcount_test.go:65)	JLE	$0, 167
	0x0017 00023 (popcount_test.go:66)	MOVQ	$1311768467294899695, BX
	0x0021 00033 (popcount_test.go:66)	MOVQ	BX, CX
	0x0024 00036 (popcount_test.go:66)	SHRQ	$1, BX
	0x0027 00039 (popcount_test.go:66)	MOVQ	$6148914691236517205, R8
	0x0031 00049 (popcount_test.go:66)	ANDQ	R8, BX
	0x0034 00052 (popcount_test.go:66)	MOVQ	CX, R8
	0x0037 00055 (popcount_test.go:66)	SUBQ	BX, R8
	0x003a 00058 (popcount_test.go:66)	MOVQ	$3689348814741910323, BX
	0x0044 00068 (popcount_test.go:66)	ANDQ	R8, BX
	0x0047 00071 (popcount_test.go:66)	SHRQ	$2, R8
	0x004b 00075 (popcount_test.go:66)	MOVQ	$3689348814741910323, R9
	0x0055 00085 (popcount_test.go:66)	ANDQ	R9, R8
	0x0058 00088 (popcount_test.go:66)	ADDQ	R8, BX
	0x005b 00091 (popcount_test.go:66)	MOVQ	BX, CX
	0x005e 00094 (popcount_test.go:66)	SHRQ	$4, BX
	0x0062 00098 (popcount_test.go:66)	ADDQ	CX, BX
	0x0065 00101 (popcount_test.go:66)	MOVQ	$1085102592571150095, R8
	0x006f 00111 (popcount_test.go:66)	ANDQ	R8, BX
	0x0072 00114 (popcount_test.go:66)	MOVQ	BX, CX
	0x0075 00117 (popcount_test.go:66)	SHRQ	$8, BX
	0x0079 00121 (popcount_test.go:66)	ADDQ	CX, BX
	0x007c 00124 (popcount_test.go:66)	MOVQ	BX, CX
	0x007f 00127 (popcount_test.go:66)	SHRQ	$16, BX
	0x0083 00131 (popcount_test.go:66)	ADDQ	CX, BX
	0x0086 00134 (popcount_test.go:66)	MOVQ	BX, CX
	0x0089 00137 (popcount_test.go:66)	SHRQ	$32, BX
	0x008d 00141 (popcount_test.go:66)	ADDQ	CX, BX
	0x0090 00144 (popcount_test.go:66)	ANDQ	$127, BX
	0x0094 00148 (popcount_test.go:65)	INCQ	AX
	0x0097 00151 (popcount_test.go:65)	NOP
	0x0097 00151 (popcount_test.go:65)	MOVQ	184(DX), BX
	0x009e 00158 (popcount_test.go:65)	CMPQ	BX, AX
	0x00a1 00161 (popcount_test.go:65)	JGT	$0, 23
	0x00a7 00167 (popcount_test.go:68)	RET
	0x0000 48 8b 54 24 08 31 c0 48 8b 9a b8 00 00 00 48 39  H.T$.1.H......H9
	0x0010 c3 0f 8e 90 00 00 00 48 bb ef cd ab 90 78 56 34  .......H.....xV4
	0x0020 12 48 89 d9 48 d1 eb 49 b8 55 55 55 55 55 55 55  .H..H..I.UUUUUUU
	0x0030 55 4c 21 c3 49 89 c8 49 29 d8 48 bb 33 33 33 33  UL!.I..I).H.3333
	0x0040 33 33 33 33 4c 21 c3 49 c1 e8 02 49 b9 33 33 33  3333L!.I...I.333
	0x0050 33 33 33 33 33 4d 21 c8 4c 01 c3 48 89 d9 48 c1  33333M!.L..H..H.
	0x0060 eb 04 48 01 cb 49 b8 0f 0f 0f 0f 0f 0f 0f 0f 4c  ..H..I.........L
	0x0070 21 c3 48 89 d9 48 c1 eb 08 48 01 cb 48 89 d9 48  !.H..H...H..H..H
	0x0080 c1 eb 10 48 01 cb 48 89 d9 48 c1 eb 20 48 01 cb  ...H..H..H.. H..
	0x0090 48 83 e3 7f 48 ff c0 48 8b 9a b8 00 00 00 48 39  H...H..H......H9
	0x00a0 c3 0f 8f 70 ff ff ff c3                          ...p....
"".BenchmarkBitCount2 t=1 size=180 args=0x8 locals=0x0
	0x0000 00000 (popcount_test.go:70)	TEXT	"".BenchmarkBitCount2(SB), $0-8
	0x0000 00000 (popcount_test.go:70)	NOP
	0x0000 00000 (popcount_test.go:70)	NOP
	0x0000 00000 (popcount_test.go:70)	MOVQ	"".b+8(FP), DX
	0x0005 00005 (popcount_test.go:70)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0005 00005 (popcount_test.go:70)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:71)	MOVQ	$0, CX
	0x0007 00007 (popcount_test.go:72)	MOVQ	$0, AX
	0x0009 00009 (popcount_test.go:72)	NOP
	0x0009 00009 (popcount_test.go:72)	MOVQ	184(DX), BX
	0x0010 00016 (popcount_test.go:72)	CMPQ	BX, AX
	0x0013 00019 (popcount_test.go:72)	JLE	$0, 172
	0x0019 00025 (popcount_test.go:73)	MOVQ	$1311768467294899695, BX
	0x0023 00035 (popcount_test.go:73)	MOVQ	BX, CX
	0x0026 00038 (popcount_test.go:73)	SHRQ	$1, BX
	0x0029 00041 (popcount_test.go:73)	MOVQ	$6148914691236517205, R8
	0x0033 00051 (popcount_test.go:73)	ANDQ	R8, BX
	0x0036 00054 (popcount_test.go:73)	MOVQ	CX, R8
	0x0039 00057 (popcount_test.go:73)	SUBQ	BX, R8
	0x003c 00060 (popcount_test.go:73)	MOVQ	$3689348814741910323, BX
	0x0046 00070 (popcount_test.go:73)	ANDQ	R8, BX
	0x0049 00073 (popcount_test.go:73)	SHRQ	$2, R8
	0x004d 00077 (popcount_test.go:73)	MOVQ	$3689348814741910323, R9
	0x0057 00087 (popcount_test.go:73)	ANDQ	R9, R8
	0x005a 00090 (popcount_test.go:73)	ADDQ	R8, BX
	0x005d 00093 (popcount_test.go:73)	MOVQ	BX, CX
	0x0060 00096 (popcount_test.go:73)	SHRQ	$4, BX
	0x0064 00100 (popcount_test.go:73)	ADDQ	CX, BX
	0x0067 00103 (popcount_test.go:73)	MOVQ	$1085102592571150095, R8
	0x0071 00113 (popcount_test.go:73)	ANDQ	R8, BX
	0x0074 00116 (popcount_test.go:73)	MOVQ	BX, CX
	0x0077 00119 (popcount_test.go:73)	SHRQ	$8, BX
	0x007b 00123 (popcount_test.go:73)	ADDQ	CX, BX
	0x007e 00126 (popcount_test.go:73)	MOVQ	BX, CX
	0x0081 00129 (popcount_test.go:73)	SHRQ	$16, BX
	0x0085 00133 (popcount_test.go:73)	ADDQ	CX, BX
	0x0088 00136 (popcount_test.go:73)	MOVQ	BX, CX
	0x008b 00139 (popcount_test.go:73)	SHRQ	$32, BX
	0x008f 00143 (popcount_test.go:73)	ADDQ	CX, BX
	0x0092 00146 (popcount_test.go:73)	ANDQ	$127, BX
	0x0096 00150 (popcount_test.go:73)	MOVQ	BX, CX
	0x0099 00153 (popcount_test.go:72)	INCQ	AX
	0x009c 00156 (popcount_test.go:72)	NOP
	0x009c 00156 (popcount_test.go:72)	MOVQ	184(DX), BX
	0x00a3 00163 (popcount_test.go:72)	CMPQ	BX, AX
	0x00a6 00166 (popcount_test.go:72)	JGT	$0, 25
	0x00ac 00172 (popcount_test.go:75)	MOVQ	CX, "".benchResult(SB)
	0x00b3 00179 (popcount_test.go:76)	RET
	0x0000 48 8b 54 24 08 31 c9 31 c0 48 8b 9a b8 00 00 00  H.T$.1.1.H......
	0x0010 48 39 c3 0f 8e 93 00 00 00 48 bb ef cd ab 90 78  H9.......H.....x
	0x0020 56 34 12 48 89 d9 48 d1 eb 49 b8 55 55 55 55 55  V4.H..H..I.UUUUU
	0x0030 55 55 55 4c 21 c3 49 89 c8 49 29 d8 48 bb 33 33  UUUL!.I..I).H.33
	0x0040 33 33 33 33 33 33 4c 21 c3 49 c1 e8 02 49 b9 33  333333L!.I...I.3
	0x0050 33 33 33 33 33 33 33 4d 21 c8 4c 01 c3 48 89 d9  3333333M!.L..H..
	0x0060 48 c1 eb 04 48 01 cb 49 b8 0f 0f 0f 0f 0f 0f 0f  H...H..I........
	0x0070 0f 4c 21 c3 48 89 d9 48 c1 eb 08 48 01 cb 48 89  .L!.H..H...H..H.
	0x0080 d9 48 c1 eb 10 48 01 cb 48 89 d9 48 c1 eb 20 48  .H...H..H..H.. H
	0x0090 01 cb 48 83 e3 7f 48 89 d9 48 ff c0 48 8b 9a b8  ..H...H..H..H...
	0x00a0 00 00 00 48 39 c3 0f 8f 6d ff ff ff 48 89 0d 00  ...H9...m...H...
	0x00b0 00 00 00 c3                                      ....
	rel 175+4 t=14 "".benchResult+0
"".BenchmarkPopCountByClearing t=1 size=99 args=0x8 locals=0x20
	0x0000 00000 (popcount_test.go:78)	TEXT	"".BenchmarkPopCountByClearing(SB), $32-8
	0x0000 00000 (popcount_test.go:78)	MOVQ	(TLS), CX
	0x0009 00009 (popcount_test.go:78)	CMPQ	SP, 16(CX)
	0x000d 00013 (popcount_test.go:78)	JLS	92
	0x000f 00015 (popcount_test.go:78)	SUBQ	$32, SP
	0x0013 00019 (popcount_test.go:78)	MOVQ	BP, 24(SP)
	0x0018 00024 (popcount_test.go:78)	LEAQ	24(SP), BP
	0x001d 00029 (popcount_test.go:78)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x001d 00029 (popcount_test.go:78)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (popcount_test.go:79)	MOVQ	$0, AX
	0x001f 00031 (popcount_test.go:79)	MOVQ	"".b+40(FP), R8
	0x0024 00036 (popcount_test.go:79)	NOP
	0x0024 00036 (popcount_test.go:79)	MOVQ	184(R8), BX
	0x002b 00043 (popcount_test.go:79)	MOVQ	AX, "".i+16(SP)
	0x0030 00048 (popcount_test.go:79)	CMPQ	BX, AX
	0x0033 00051 (popcount_test.go:79)	JLE	$0, 82
	0x0035 00053 (popcount_test.go:80)	MOVQ	$1311768467294899695, BX
	0x003f 00063 (popcount_test.go:80)	MOVQ	BX, (SP)
	0x0043 00067 (popcount_test.go:80)	PCDATA	$0, $0
	0x0043 00067 (popcount_test.go:80)	CALL	"".PopCountByClearing(SB)
	0x0048 00072 (popcount_test.go:79)	MOVQ	"".i+16(SP), AX
	0x004d 00077 (popcount_test.go:79)	INCQ	AX
	0x0050 00080 (popcount_test.go:79)	NOP
	0x0050 00080 (popcount_test.go:79)	JMP	31
	0x0052 00082 (popcount_test.go:82)	MOVQ	24(SP), BP
	0x0057 00087 (popcount_test.go:82)	ADDQ	$32, SP
	0x005b 00091 (popcount_test.go:82)	RET
	0x005c 00092 (popcount_test.go:82)	NOP
	0x005c 00092 (popcount_test.go:78)	CALL	runtime.morestack_noctxt(SB)
	0x0061 00097 (popcount_test.go:78)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 4d 48  dH..%....H;a.vMH
	0x0010 83 ec 20 48 89 6c 24 18 48 8d 6c 24 18 31 c0 4c  .. H.l$.H.l$.1.L
	0x0020 8b 44 24 28 49 8b 98 b8 00 00 00 48 89 44 24 10  .D$(I......H.D$.
	0x0030 48 39 c3 7e 1d 48 bb ef cd ab 90 78 56 34 12 48  H9.~.H.....xV4.H
	0x0040 89 1c 24 e8 00 00 00 00 48 8b 44 24 10 48 ff c0  ..$.....H.D$.H..
	0x0050 eb cd 48 8b 6c 24 18 48 83 c4 20 c3 e8 00 00 00  ..H.l$.H.. .....
	0x0060 00 eb 9d                                         ...
	rel 5+4 t=15 TLS+0
	rel 68+4 t=7 "".PopCountByClearing+0
	rel 93+4 t=7 runtime.morestack_noctxt+0
"".BenchmarkPopCountByShifting t=1 size=99 args=0x8 locals=0x20
	0x0000 00000 (popcount_test.go:84)	TEXT	"".BenchmarkPopCountByShifting(SB), $32-8
	0x0000 00000 (popcount_test.go:84)	MOVQ	(TLS), CX
	0x0009 00009 (popcount_test.go:84)	CMPQ	SP, 16(CX)
	0x000d 00013 (popcount_test.go:84)	JLS	92
	0x000f 00015 (popcount_test.go:84)	SUBQ	$32, SP
	0x0013 00019 (popcount_test.go:84)	MOVQ	BP, 24(SP)
	0x0018 00024 (popcount_test.go:84)	LEAQ	24(SP), BP
	0x001d 00029 (popcount_test.go:84)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x001d 00029 (popcount_test.go:84)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (popcount_test.go:85)	MOVQ	$0, AX
	0x001f 00031 (popcount_test.go:85)	MOVQ	"".b+40(FP), R8
	0x0024 00036 (popcount_test.go:85)	NOP
	0x0024 00036 (popcount_test.go:85)	MOVQ	184(R8), BX
	0x002b 00043 (popcount_test.go:85)	MOVQ	AX, "".i+16(SP)
	0x0030 00048 (popcount_test.go:85)	CMPQ	BX, AX
	0x0033 00051 (popcount_test.go:85)	JLE	$0, 82
	0x0035 00053 (popcount_test.go:86)	MOVQ	$1311768467294899695, BX
	0x003f 00063 (popcount_test.go:86)	MOVQ	BX, (SP)
	0x0043 00067 (popcount_test.go:86)	PCDATA	$0, $0
	0x0043 00067 (popcount_test.go:86)	CALL	"".PopCountByShifting(SB)
	0x0048 00072 (popcount_test.go:85)	MOVQ	"".i+16(SP), AX
	0x004d 00077 (popcount_test.go:85)	INCQ	AX
	0x0050 00080 (popcount_test.go:85)	NOP
	0x0050 00080 (popcount_test.go:85)	JMP	31
	0x0052 00082 (popcount_test.go:88)	MOVQ	24(SP), BP
	0x0057 00087 (popcount_test.go:88)	ADDQ	$32, SP
	0x005b 00091 (popcount_test.go:88)	RET
	0x005c 00092 (popcount_test.go:88)	NOP
	0x005c 00092 (popcount_test.go:84)	CALL	runtime.morestack_noctxt(SB)
	0x0061 00097 (popcount_test.go:84)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 4d 48  dH..%....H;a.vMH
	0x0010 83 ec 20 48 89 6c 24 18 48 8d 6c 24 18 31 c0 4c  .. H.l$.H.l$.1.L
	0x0020 8b 44 24 28 49 8b 98 b8 00 00 00 48 89 44 24 10  .D$(I......H.D$.
	0x0030 48 39 c3 7e 1d 48 bb ef cd ab 90 78 56 34 12 48  H9.~.H.....xV4.H
	0x0040 89 1c 24 e8 00 00 00 00 48 8b 44 24 10 48 ff c0  ..$.....H.D$.H..
	0x0050 eb cd 48 8b 6c 24 18 48 83 c4 20 c3 e8 00 00 00  ..H.l$.H.. .....
	0x0060 00 eb 9d                                         ...
	rel 5+4 t=15 TLS+0
	rel 68+4 t=7 "".PopCountByShifting+0
	rel 93+4 t=7 runtime.morestack_noctxt+0
"".BenchmarkEmptyFunction t=1 size=35 args=0x8 locals=0x0
	0x0000 00000 (popcount_test.go:90)	TEXT	"".BenchmarkEmptyFunction(SB), $0-8
	0x0000 00000 (popcount_test.go:90)	NOP
	0x0000 00000 (popcount_test.go:90)	NOP
	0x0000 00000 (popcount_test.go:90)	MOVQ	"".b+8(FP), CX
	0x0005 00005 (popcount_test.go:90)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0005 00005 (popcount_test.go:90)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:91)	MOVQ	$0, AX
	0x0007 00007 (popcount_test.go:91)	NOP
	0x0007 00007 (popcount_test.go:91)	MOVQ	184(CX), BX
	0x000e 00014 (popcount_test.go:91)	CMPQ	BX, AX
	0x0011 00017 (popcount_test.go:91)	JLE	$0, 34
	0x0013 00019 (popcount_test.go:91)	INCQ	AX
	0x0016 00022 (popcount_test.go:91)	NOP
	0x0016 00022 (popcount_test.go:91)	MOVQ	184(CX), BX
	0x001d 00029 (popcount_test.go:91)	CMPQ	BX, AX
	0x0020 00032 (popcount_test.go:91)	JGT	$0, 19
	0x0022 00034 (popcount_test.go:94)	RET
	0x0000 48 8b 4c 24 08 31 c0 48 8b 99 b8 00 00 00 48 39  H.L$.1.H......H9
	0x0010 c3 7e 0f 48 ff c0 48 8b 99 b8 00 00 00 48 39 c3  .~.H..H......H9.
	0x0020 7f f1 c3                                         ...
"".empty t=1 size=1 args=0x0 locals=0x0
	0x0000 00000 (popcount_test.go:96)	TEXT	"".empty(SB), $0-0
	0x0000 00000 (popcount_test.go:96)	NOP
	0x0000 00000 (popcount_test.go:96)	NOP
	0x0000 00000 (popcount_test.go:96)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (popcount_test.go:96)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (popcount_test.go:97)	RET
	0x0000 c3                                               .
"".init t=1 size=79 args=0x0 locals=0x0
	0x0000 00000 (popcount_test.go:122)	TEXT	"".init(SB), $0-0
	0x0000 00000 (popcount_test.go:122)	MOVQ	(TLS), CX
	0x0009 00009 (popcount_test.go:122)	CMPQ	SP, 16(CX)
	0x000d 00013 (popcount_test.go:122)	JLS	72
	0x000f 00015 (popcount_test.go:122)	NOP
	0x000f 00015 (popcount_test.go:122)	NOP
	0x000f 00015 (popcount_test.go:122)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount_test.go:122)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount_test.go:122)	MOVBQZX	"".initdone·(SB), BX
	0x0016 00022 (popcount_test.go:122)	CMPB	BL, $1
	0x0019 00025 (popcount_test.go:122)	JLS	$0, 28
	0x001b 00027 (popcount_test.go:122)	RET
	0x001c 00028 (popcount_test.go:122)	MOVBQZX	"".initdone·(SB), BX
	0x0023 00035 (popcount_test.go:122)	CMPB	BL, $1
	0x0026 00038 (popcount_test.go:122)	JNE	$0, 47
	0x0028 00040 (popcount_test.go:122)	PCDATA	$0, $0
	0x0028 00040 (popcount_test.go:122)	CALL	runtime.throwinit(SB)
	0x002d 00045 (popcount_test.go:122)	UNDEF
	0x002f 00047 (popcount_test.go:122)	MOVB	$1, "".initdone·(SB)
	0x0036 00054 (popcount_test.go:122)	PCDATA	$0, $0
	0x0036 00054 (popcount_test.go:122)	CALL	testing.init(SB)
	0x003b 00059 (popcount_test.go:122)	PCDATA	$0, $0
	0x003b 00059 (popcount_test.go:122)	CALL	github.com/tooru/gopl/ch11/p06popcount.init(SB)
	0x0040 00064 (popcount_test.go:122)	MOVB	$2, "".initdone·(SB)
	0x0047 00071 (popcount_test.go:122)	RET
	0x0048 00072 (popcount_test.go:122)	NOP
	0x0048 00072 (popcount_test.go:122)	CALL	runtime.morestack_noctxt(SB)
	0x004d 00077 (popcount_test.go:122)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 39 0f  dH..%....H;a.v9.
	0x0010 b6 1d 00 00 00 00 80 fb 01 76 01 c3 0f b6 1d 00  .........v......
	0x0020 00 00 00 80 fb 01 75 07 e8 00 00 00 00 0f 0b c6  ......u.........
	0x0030 05 00 00 00 00 01 e8 00 00 00 00 e8 00 00 00 00  ................
	0x0040 c6 05 00 00 00 00 02 c3 e8 00 00 00 00 eb b1     ...............
	rel 5+4 t=15 TLS+0
	rel 18+4 t=14 "".initdone·+0
	rel 31+4 t=14 "".initdone·+0
	rel 41+4 t=7 runtime.throwinit+0
	rel 49+4 t=14 "".initdone·+-1
	rel 55+4 t=7 testing.init+0
	rel 60+4 t=7 github.com/tooru/gopl/ch11/p06popcount.init+0
	rel 66+4 t=14 "".initdone·+-1
	rel 73+4 t=7 runtime.morestack_noctxt+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=9 dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·23e8278e2b69a3a75fa59b23c49ed6ad t=9 dupok size=12
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·87d20ce1b58390b294df80b886db78bf t=9 dupok size=12
	0x0000 01 00 00 00 01 00 00 00 01 00 00 00              ............
"".benchResult t=34 size=8
"".initdone· t=34 size=1
"".BitCount·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BitCount+0
"".PopCountByClearing·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".PopCountByClearing+0
"".PopCountByShifting·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".PopCountByShifting+0
"".BenchmarkPopCount·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkPopCount+0
"".BenchmarkPopCount2·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkPopCount2+0
"".BenchmarkBitCount·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkBitCount+0
"".BenchmarkBitCount2·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkBitCount2+0
"".BenchmarkPopCountByClearing·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkPopCountByClearing+0
"".BenchmarkPopCountByShifting·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkPopCountByShifting+0
"".BenchmarkEmptyFunction·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkEmptyFunction+0
"".empty·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".empty+0
"".init·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init+0
type..importpath.github.com/tooru/gopl/ch11/p06popcount. t=9 dupok size=41
	0x0000 00 00 26 67 69 74 68 75 62 2e 63 6f 6d 2f 74 6f  ..&github.com/to
	0x0010 6f 72 75 2f 67 6f 70 6c 2f 63 68 31 31 2f 70 30  oru/gopl/ch11/p0
	0x0020 36 70 6f 70 63 6f 75 6e 74                       6popcount
type..importpath.testing. t=9 dupok size=10
	0x0000 00 00 07 74 65 73 74 69 6e 67                    ...testing
# testmain
"".matchString t=1 size=394 args=0x38 locals=0x30
	0x0000 00000 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	TEXT	"".matchString(SB), $48-56
	0x0000 00000 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	(TLS), CX
	0x0009 00009 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	CMPQ	SP, 16(CX)
	0x000d 00013 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	JLS	384
	0x0013 00019 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	SUBQ	$48, SP
	0x0017 00023 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	BP, 40(SP)
	0x001c 00028 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	LEAQ	40(SP), BP
	0x0021 00033 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	"".pat+64(FP), AX
	0x0026 00038 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	FUNCDATA	$0, gclocals·e005ea8c128fdd2cbe053ee4ba8a4b6e(SB)
	0x0026 00038 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0026 00038 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	$0, BX
	0x0028 00040 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	$0, BX
	0x002a 00042 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	BX, "".err+96(FP)
	0x002f 00047 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	BX, "".err+104(FP)
	0x0034 00052 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVB	$0, "".result+88(FP)
	0x0039 00057 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".matchRe(SB), BX
	0x0040 00064 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	$0, R8
	0x0043 00067 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	CMPQ	BX, R8
	0x0046 00070 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	JEQ	213
	0x004c 00076 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".matchPat+8(SB), BX
	0x0053 00083 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	CMPQ	BX, AX
	0x0056 00086 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	JNE	213
	0x0058 00088 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".matchPat(SB), R8
	0x005f 00095 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	R8, (SP)
	0x0063 00099 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".matchPat+8(SB), R8
	0x006a 00106 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	R8, 8(SP)
	0x006f 00111 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".pat+56(FP), R8
	0x0074 00116 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	R8, 16(SP)
	0x0079 00121 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	AX, 24(SP)
	0x007e 00126 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	PCDATA	$0, $0
	0x007e 00126 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	CALL	runtime.eqstring(SB)
	0x0083 00131 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".pat+64(FP), AX
	0x0088 00136 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVBQZX	32(SP), BX
	0x008d 00141 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	CMPB	BL, $0
	0x0090 00144 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	JEQ	213
	0x0092 00146 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	"".matchRe(SB), BX
	0x0099 00153 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	BX, (SP)
	0x009d 00157 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	"".str+72(FP), BX
	0x00a2 00162 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	BX, 8(SP)
	0x00a7 00167 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	"".str+80(FP), BX
	0x00ac 00172 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	BX, 16(SP)
	0x00b1 00177 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	PCDATA	$0, $0
	0x00b1 00177 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	CALL	regexp.(*Regexp).MatchString(SB)
	0x00b6 00182 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVBQZX	24(SP), BX
	0x00bb 00187 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVB	BL, "".result+88(FP)
	0x00bf 00191 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	$0, BX
	0x00c1 00193 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	BX, "".err+96(FP)
	0x00c6 00198 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	BX, "".err+104(FP)
	0x00cb 00203 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	40(SP), BP
	0x00d0 00208 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	ADDQ	$48, SP
	0x00d4 00212 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	RET
	0x00d5 00213 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	MOVQ	AX, "".matchPat+8(SB)
	0x00dc 00220 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	MOVQ	"".pat+56(FP), BX
	0x00e1 00225 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	CMPB	runtime.writeBarrier(SB), $0
	0x00e8 00232 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	JNE	$0, 358
	0x00ea 00234 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	MOVQ	BX, "".matchPat(SB)
	0x00f1 00241 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	"".matchPat(SB), BX
	0x00f8 00248 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	BX, (SP)
	0x00fc 00252 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	"".matchPat+8(SB), BX
	0x0103 00259 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	BX, 8(SP)
	0x0108 00264 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	PCDATA	$0, $0
	0x0108 00264 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	CALL	regexp.Compile(SB)
	0x010d 00269 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	16(SP), AX
	0x0112 00274 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	24(SP), BX
	0x0117 00279 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	BX, "".err+96(FP)
	0x011c 00284 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	32(SP), BX
	0x0121 00289 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	BX, "".err+104(FP)
	0x0126 00294 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	CMPB	runtime.writeBarrier(SB), $0
	0x012d 00301 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	JNE	$0, 335
	0x012f 00303 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	AX, "".matchRe(SB)
	0x0136 00310 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:55)	MOVQ	"".err+96(FP), BX
	0x013b 00315 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:55)	CMPQ	BX, $0
	0x013f 00319 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:55)	JEQ	146
	0x0145 00325 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)	MOVQ	40(SP), BP
	0x014a 00330 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)	ADDQ	$48, SP
	0x014e 00334 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)	RET
	0x014f 00335 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	LEAQ	"".matchRe(SB), R8
	0x0156 00342 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	R8, (SP)
	0x015a 00346 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	AX, 8(SP)
	0x015f 00351 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	PCDATA	$0, $1
	0x015f 00351 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	CALL	runtime.writebarrierptr(SB)
	0x0164 00356 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:55)	JMP	310
	0x0166 00358 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	LEAQ	"".matchPat(SB), R8
	0x016d 00365 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	MOVQ	R8, (SP)
	0x0171 00369 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	MOVQ	BX, 8(SP)
	0x0176 00374 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	PCDATA	$0, $0
	0x0176 00374 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	CALL	runtime.writebarrierptr(SB)
	0x017b 00379 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	JMP	241
	0x0180 00384 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	NOP
	0x0180 00384 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	CALL	runtime.morestack_noctxt(SB)
	0x0185 00389 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 6d  dH..%....H;a...m
	0x0010 01 00 00 48 83 ec 30 48 89 6c 24 28 48 8d 6c 24  ...H..0H.l$(H.l$
	0x0020 28 48 8b 44 24 40 31 db 31 db 48 89 5c 24 60 48  (H.D$@1.1.H.\$`H
	0x0030 89 5c 24 68 c6 44 24 58 00 48 8b 1d 00 00 00 00  .\$h.D$X.H......
	0x0040 45 31 c0 4c 39 c3 0f 84 89 00 00 00 48 8b 1d 00  E1.L9.......H...
	0x0050 00 00 00 48 39 c3 75 7d 4c 8b 05 00 00 00 00 4c  ...H9.u}L......L
	0x0060 89 04 24 4c 8b 05 00 00 00 00 4c 89 44 24 08 4c  ..$L......L.D$.L
	0x0070 8b 44 24 38 4c 89 44 24 10 48 89 44 24 18 e8 00  .D$8L.D$.H.D$...
	0x0080 00 00 00 48 8b 44 24 40 0f b6 5c 24 20 80 fb 00  ...H.D$@..\$ ...
	0x0090 74 43 48 8b 1d 00 00 00 00 48 89 1c 24 48 8b 5c  tCH......H..$H.\
	0x00a0 24 48 48 89 5c 24 08 48 8b 5c 24 50 48 89 5c 24  $HH.\$.H.\$PH.\$
	0x00b0 10 e8 00 00 00 00 0f b6 5c 24 18 88 5c 24 58 31  ........\$..\$X1
	0x00c0 db 48 89 5c 24 60 48 89 5c 24 68 48 8b 6c 24 28  .H.\$`H.\$hH.l$(
	0x00d0 48 83 c4 30 c3 48 89 05 00 00 00 00 48 8b 5c 24  H..0.H......H.\$
	0x00e0 38 80 3d 00 00 00 00 00 75 7c 48 89 1d 00 00 00  8.=.....u|H.....
	0x00f0 00 48 8b 1d 00 00 00 00 48 89 1c 24 48 8b 1d 00  .H......H..$H...
	0x0100 00 00 00 48 89 5c 24 08 e8 00 00 00 00 48 8b 44  ...H.\$......H.D
	0x0110 24 10 48 8b 5c 24 18 48 89 5c 24 60 48 8b 5c 24  $.H.\$.H.\$`H.\$
	0x0120 20 48 89 5c 24 68 80 3d 00 00 00 00 00 75 20 48   H.\$h.=.....u H
	0x0130 89 05 00 00 00 00 48 8b 5c 24 60 48 83 fb 00 0f  ......H.\$`H....
	0x0140 84 4d ff ff ff 48 8b 6c 24 28 48 83 c4 30 c3 4c  .M...H.l$(H..0.L
	0x0150 8d 05 00 00 00 00 4c 89 04 24 48 89 44 24 08 e8  ......L..$H.D$..
	0x0160 00 00 00 00 eb d0 4c 8d 05 00 00 00 00 4c 89 04  ......L......L..
	0x0170 24 48 89 5c 24 08 e8 00 00 00 00 e9 71 ff ff ff  $H.\$.......q...
	0x0180 e8 00 00 00 00 e9 76 fe ff ff                    ......v...
	rel 5+4 t=15 TLS+0
	rel 60+4 t=14 "".matchRe+0
	rel 79+4 t=14 "".matchPat+8
	rel 91+4 t=14 "".matchPat+0
	rel 102+4 t=14 "".matchPat+8
	rel 127+4 t=7 runtime.eqstring+0
	rel 149+4 t=14 "".matchRe+0
	rel 178+4 t=7 regexp.(*Regexp).MatchString+0
	rel 216+4 t=14 "".matchPat+8
	rel 227+4 t=14 runtime.writeBarrier+-1
	rel 237+4 t=14 "".matchPat+0
	rel 244+4 t=14 "".matchPat+0
	rel 255+4 t=14 "".matchPat+8
	rel 265+4 t=7 regexp.Compile+0
	rel 296+4 t=14 runtime.writeBarrier+-1
	rel 306+4 t=14 "".matchRe+0
	rel 338+4 t=14 "".matchRe+0
	rel 352+4 t=7 runtime.writebarrierptr+0
	rel 361+4 t=14 "".matchPat+0
	rel 375+4 t=7 runtime.writebarrierptr+0
	rel 385+4 t=7 runtime.morestack_noctxt+0
"".main t=1 size=349 args=0x0 locals=0xf8
	0x0000 00000 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	TEXT	"".main(SB), $248-0
	0x0000 00000 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	MOVQ	(TLS), CX
	0x0009 00009 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	LEAQ	-120(SP), AX
	0x000e 00014 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	CMPQ	AX, 16(CX)
	0x0012 00018 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	JLS	339
	0x0018 00024 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	SUBQ	$248, SP
	0x001f 00031 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	MOVQ	BP, 240(SP)
	0x0027 00039 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	LEAQ	240(SP), BP
	0x002f 00047 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x002f 00047 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	FUNCDATA	$1, gclocals·94afc8ed222301d39438d08ea66ea8e4(SB)
	0x002f 00047 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".tests(SB), R15
	0x0036 00054 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".tests+8(SB), R14
	0x003d 00061 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".tests+16(SB), R13
	0x0044 00068 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".benchmarks(SB), R12
	0x004b 00075 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".benchmarks+8(SB), R11
	0x0052 00082 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".benchmarks+16(SB), R10
	0x0059 00089 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".examples(SB), R9
	0x0060 00096 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".examples+8(SB), SI
	0x0067 00103 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".examples+16(SB), DX
	0x006e 00110 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	LEAQ	"".matchString·f(SB), CX
	0x0075 00117 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R15, "".autotmp_3+136(SP)
	0x007d 00125 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R14, "".autotmp_3+144(SP)
	0x0085 00133 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R13, "".autotmp_3+152(SP)
	0x008d 00141 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R12, "".autotmp_4+112(SP)
	0x0092 00146 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R11, "".autotmp_4+120(SP)
	0x0097 00151 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R10, "".autotmp_4+128(SP)
	0x009f 00159 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R9, "".autotmp_5+88(SP)
	0x00a4 00164 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	SI, "".autotmp_5+96(SP)
	0x00a9 00169 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	DX, "".autotmp_5+104(SP)
	0x00ae 00174 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	LEAQ	"".autotmp_8+160(SP), DI
	0x00b6 00182 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	XORPS	X0, X0
	0x00b9 00185 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	ADDQ	$-48, DI
	0x00bd 00189 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	DUFFZERO	$277
	0x00d0 00208 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	LEAQ	"".autotmp_8+160(SP), BX
	0x00d8 00216 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	NOP
	0x00d8 00216 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	CX, (BX)
	0x00db 00219 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	NOP
	0x00db 00219 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R15, testing.tests·3+16(SP)
	0x00e0 00224 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R15, 8(BX)
	0x00e4 00228 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R14, testing.tests·3+24(SP)
	0x00e9 00233 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R14, 16(BX)
	0x00ed 00237 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R13, testing.tests·3+32(SP)
	0x00f2 00242 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R13, 24(BX)
	0x00f6 00246 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	NOP
	0x00f6 00246 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R12, testing.benchmarks·4+64(SP)
	0x00fb 00251 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R12, 32(BX)
	0x00ff 00255 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R11, testing.benchmarks·4+72(SP)
	0x0104 00260 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R11, 40(BX)
	0x0108 00264 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R10, testing.benchmarks·4+80(SP)
	0x010d 00269 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R10, 48(BX)
	0x0111 00273 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	NOP
	0x0111 00273 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R9, testing.examples·5+40(SP)
	0x0116 00278 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R9, 56(BX)
	0x011a 00282 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	SI, testing.examples·5+48(SP)
	0x011f 00287 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	SI, 64(BX)
	0x0123 00291 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	DX, testing.examples·5+56(SP)
	0x0128 00296 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	DX, 72(BX)
	0x012c 00300 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	MOVQ	BX, (SP)
	0x0130 00304 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	PCDATA	$0, $1
	0x0130 00304 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	CALL	testing.(*M).Run(SB)
	0x0135 00309 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	MOVQ	8(SP), BX
	0x013a 00314 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	MOVQ	BX, (SP)
	0x013e 00318 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	PCDATA	$0, $1
	0x013e 00318 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	CALL	os.Exit(SB)
	0x0143 00323 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	NOP
	0x0143 00323 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	MOVQ	240(SP), BP
	0x014b 00331 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	ADDQ	$248, SP
	0x0152 00338 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	RET
	0x0153 00339 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	NOP
	0x0153 00339 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	CALL	runtime.morestack_noctxt(SB)
	0x0158 00344 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 8d 44 24 88 48 3b  dH..%....H.D$.H;
	0x0010 41 10 0f 86 3b 01 00 00 48 81 ec f8 00 00 00 48  A...;...H......H
	0x0020 89 ac 24 f0 00 00 00 48 8d ac 24 f0 00 00 00 4c  ..$....H..$....L
	0x0030 8b 3d 00 00 00 00 4c 8b 35 00 00 00 00 4c 8b 2d  .=....L.5....L.-
	0x0040 00 00 00 00 4c 8b 25 00 00 00 00 4c 8b 1d 00 00  ....L.%....L....
	0x0050 00 00 4c 8b 15 00 00 00 00 4c 8b 0d 00 00 00 00  ..L......L......
	0x0060 48 8b 35 00 00 00 00 48 8b 15 00 00 00 00 48 8d  H.5....H......H.
	0x0070 0d 00 00 00 00 4c 89 bc 24 88 00 00 00 4c 89 b4  .....L..$....L..
	0x0080 24 90 00 00 00 4c 89 ac 24 98 00 00 00 4c 89 64  $....L..$....L.d
	0x0090 24 70 4c 89 5c 24 78 4c 89 94 24 80 00 00 00 4c  $pL.\$xL..$....L
	0x00a0 89 4c 24 58 48 89 74 24 60 48 89 54 24 68 48 8d  .L$XH.t$`H.T$hH.
	0x00b0 bc 24 a0 00 00 00 0f 57 c0 48 83 c7 d0 48 89 6c  .$.....W.H...H.l
	0x00c0 24 f0 48 8d 6c 24 f0 e8 00 00 00 00 48 8b 6d 00  $.H.l$......H.m.
	0x00d0 48 8d 9c 24 a0 00 00 00 48 89 0b 4c 89 7c 24 10  H..$....H..L.|$.
	0x00e0 4c 89 7b 08 4c 89 74 24 18 4c 89 73 10 4c 89 6c  L.{.L.t$.L.s.L.l
	0x00f0 24 20 4c 89 6b 18 4c 89 64 24 40 4c 89 63 20 4c  $ L.k.L.d$@L.c L
	0x0100 89 5c 24 48 4c 89 5b 28 4c 89 54 24 50 4c 89 53  .\$HL.[(L.T$PL.S
	0x0110 30 4c 89 4c 24 28 4c 89 4b 38 48 89 74 24 30 48  0L.L$(L.K8H.t$0H
	0x0120 89 73 40 48 89 54 24 38 48 89 53 48 48 89 1c 24  .s@H.T$8H.SHH..$
	0x0130 e8 00 00 00 00 48 8b 5c 24 08 48 89 1c 24 e8 00  .....H.\$.H..$..
	0x0140 00 00 00 48 8b ac 24 f0 00 00 00 48 81 c4 f8 00  ...H..$....H....
	0x0150 00 00 c3 e8 00 00 00 00 e9 a3 fe ff ff           .............
	rel 5+4 t=15 TLS+0
	rel 50+4 t=14 "".tests+0
	rel 57+4 t=14 "".tests+8
	rel 64+4 t=14 "".tests+16
	rel 71+4 t=14 "".benchmarks+0
	rel 78+4 t=14 "".benchmarks+8
	rel 85+4 t=14 "".benchmarks+16
	rel 92+4 t=14 "".examples+0
	rel 99+4 t=14 "".examples+8
	rel 106+4 t=14 "".examples+16
	rel 113+4 t=14 "".matchString·f+0
	rel 200+4 t=7 runtime.duffzero+277
	rel 305+4 t=7 testing.(*M).Run+0
	rel 319+4 t=7 os.Exit+0
	rel 340+4 t=7 runtime.morestack_noctxt+0
"".init t=1 size=94 args=0x0 locals=0x0
	0x0000 00000 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	TEXT	"".init(SB), $0-0
	0x0000 00000 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	MOVQ	(TLS), CX
	0x0009 00009 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	CMPQ	SP, 16(CX)
	0x000d 00013 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	JLS	87
	0x000f 00015 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	NOP
	0x000f 00015 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	NOP
	0x000f 00015 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	MOVBQZX	"".initdone·(SB), BX
	0x0016 00022 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	CMPB	BL, $1
	0x0019 00025 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	JLS	$0, 28
	0x001b 00027 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	RET
	0x001c 00028 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	MOVBQZX	"".initdone·(SB), BX
	0x0023 00035 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	CMPB	BL, $1
	0x0026 00038 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	JNE	$0, 47
	0x0028 00040 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	PCDATA	$0, $0
	0x0028 00040 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	CALL	runtime.throwinit(SB)
	0x002d 00045 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	UNDEF
	0x002f 00047 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	MOVB	$1, "".initdone·(SB)
	0x0036 00054 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	PCDATA	$0, $0
	0x0036 00054 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	CALL	os.init(SB)
	0x003b 00059 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	PCDATA	$0, $0
	0x003b 00059 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	CALL	regexp.init(SB)
	0x0040 00064 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	PCDATA	$0, $0
	0x0040 00064 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	CALL	testing.init(SB)
	0x0045 00069 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	PCDATA	$0, $0
	0x0045 00069 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	CALL	github.com/tooru/gopl/ch11/p06popcount.init(SB)
	0x004a 00074 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	PCDATA	$0, $0
	0x004a 00074 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	CALL	github.com/tooru/gopl/ch11/p06popcount_test.init(SB)
	0x004f 00079 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	MOVB	$2, "".initdone·(SB)
	0x0056 00086 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	RET
	0x0057 00087 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	NOP
	0x0057 00087 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	CALL	runtime.morestack_noctxt(SB)
	0x005c 00092 (/tmp/go-build638170669/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:72)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 48 0f  dH..%....H;a.vH.
	0x0010 b6 1d 00 00 00 00 80 fb 01 76 01 c3 0f b6 1d 00  .........v......
	0x0020 00 00 00 80 fb 01 75 07 e8 00 00 00 00 0f 0b c6  ......u.........
	0x0030 05 00 00 00 00 01 e8 00 00 00 00 e8 00 00 00 00  ................
	0x0040 e8 00 00 00 00 e8 00 00 00 00 e8 00 00 00 00 c6  ................
	0x0050 05 00 00 00 00 02 c3 e8 00 00 00 00 eb a2        ..............
	rel 5+4 t=15 TLS+0
	rel 18+4 t=14 "".initdone·+0
	rel 31+4 t=14 "".initdone·+0
	rel 41+4 t=7 runtime.throwinit+0
	rel 49+4 t=14 "".initdone·+-1
	rel 55+4 t=7 os.init+0
	rel 60+4 t=7 regexp.init+0
	rel 65+4 t=7 testing.init+0
	rel 70+4 t=7 github.com/tooru/gopl/ch11/p06popcount.init+0
	rel 75+4 t=7 github.com/tooru/gopl/ch11/p06popcount_test.init+0
	rel 81+4 t=14 "".initdone·+-1
	rel 88+4 t=7 runtime.morestack_noctxt+0
gclocals·69c1753bd5f81501d95132d08af04464 t=9 dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·e005ea8c128fdd2cbe053ee4ba8a4b6e t=9 dupok size=16
	0x0000 02 00 00 00 07 00 00 00 05 00 00 00 65 00 00 00  ............e...
gclocals·94afc8ed222301d39438d08ea66ea8e4 t=9 dupok size=16
	0x0000 02 00 00 00 1c 00 00 00 00 00 00 00 00 00 4c 02  ..............L.
go.string.hdr."BenchmarkPopCount" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkPopCount"+0
go.string."BenchmarkPopCount" t=9 dupok size=17
	0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
	0x0010 74                                               t
go.string.hdr."BenchmarkPopCount2" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 12 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkPopCount2"+0
go.string."BenchmarkPopCount2" t=9 dupok size=18
	0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
	0x0010 74 32                                            t2
go.string.hdr."BenchmarkBitCount" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkBitCount"+0
go.string."BenchmarkBitCount" t=9 dupok size=17
	0x0000 42 65 6e 63 68 6d 61 72 6b 42 69 74 43 6f 75 6e  BenchmarkBitCoun
	0x0010 74                                               t
go.string.hdr."BenchmarkBitCount2" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 12 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkBitCount2"+0
go.string."BenchmarkBitCount2" t=9 dupok size=18
	0x0000 42 65 6e 63 68 6d 61 72 6b 42 69 74 43 6f 75 6e  BenchmarkBitCoun
	0x0010 74 32                                            t2
go.string.hdr."BenchmarkPopCountByClearing" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 1b 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkPopCountByClearing"+0
go.string."BenchmarkPopCountByClearing" t=9 dupok size=27
	0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
	0x0010 74 42 79 43 6c 65 61 72 69 6e 67                 tByClearing
go.string.hdr."BenchmarkPopCountByShifting" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 1b 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkPopCountByShifting"+0
go.string."BenchmarkPopCountByShifting" t=9 dupok size=27
	0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
	0x0010 74 42 79 53 68 69 66 74 69 6e 67                 tByShifting
go.string.hdr."BenchmarkEmptyFunction" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkEmptyFunction"+0
go.string."BenchmarkEmptyFunction" t=9 dupok size=22
	0x0000 42 65 6e 63 68 6d 61 72 6b 45 6d 70 74 79 46 75  BenchmarkEmptyFu
	0x0010 6e 63 74 69 6f 6e                                nction
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=9 dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
"".tests t=33 size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".statictmp_9+0
"".benchmarks t=33 size=24
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	0x0010 07 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".statictmp_10+0
"".examples t=33 size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".statictmp_11+0
"".matchPat t=33 size=16
"".matchRe t=33 size=8
"".statictmp_9 t=34 size=0
"".statictmp_10 t=33 size=168
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
"".statictmp_11 t=34 size=0
"".initdone· t=34 size=1
"".matchString·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".matchString+0
"".main·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".main+0
"".init·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init+0
runtime.gcbits.01 t=9 dupok size=1
	0x0000 01                                               .
type..namedata.*func(string, string) (bool, error). t=9 dupok size=38
	0x0000 00 00 23 2a 66 75 6e 63 28 73 74 72 69 6e 67 2c  ..#*func(string,
	0x0010 20 73 74 72 69 6e 67 29 20 28 62 6f 6f 6c 2c 20   string) (bool, 
	0x0020 65 72 72 6f 72 29                                error)
type.func(string, string) (bool, error) t=9 dupok size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 42 80 37 23 02 08 08 33 00 00 00 00 00 00 00 00  B.7#...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(string, string) (bool, error).+0
	rel 56+8 t=1 type.string+0
	rel 64+8 t=1 type.string+0
	rel 72+8 t=1 type.bool+0
	rel 80+8 t=1 type.error+0
go.typelink.func(string, string) (bool, error) t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.func(string, string) (bool, error)+0
type..namedata.*[]testing.InternalTest. t=9 dupok size=26
	0x0000 00 00 17 2a 5b 5d 74 65 73 74 69 6e 67 2e 49 6e  ...*[]testing.In
	0x0010 74 65 72 6e 61 6c 54 65 73 74                    ternalTest
type.[]testing.InternalTest t=9 dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 9b 85 d1 58 02 08 08 17 00 00 00 00 00 00 00 00  ...X............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]testing.InternalTest.+0
	rel 48+8 t=1 type.testing.InternalTest+0
go.typelink.[]testing.InternalTest t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.[]testing.InternalTest+0
type..namedata.*[]testing.InternalBenchmark. t=9 dupok size=31
	0x0000 00 00 1c 2a 5b 5d 74 65 73 74 69 6e 67 2e 49 6e  ...*[]testing.In
	0x0010 74 65 72 6e 61 6c 42 65 6e 63 68 6d 61 72 6b     ternalBenchmark
type.[]testing.InternalBenchmark t=9 dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 27 c0 28 56 02 08 08 17 00 00 00 00 00 00 00 00  '.(V............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]testing.InternalBenchmark.+0
	rel 48+8 t=1 type.testing.InternalBenchmark+0
go.typelink.[]testing.InternalBenchmark t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.[]testing.InternalBenchmark+0
type..namedata.*[]testing.InternalExample. t=9 dupok size=29
	0x0000 00 00 1a 2a 5b 5d 74 65 73 74 69 6e 67 2e 49 6e  ...*[]testing.In
	0x0010 74 65 72 6e 61 6c 45 78 61 6d 70 6c 65           ternalExample
type.[]testing.InternalExample t=9 dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 6f c1 a3 4a 02 08 08 17 00 00 00 00 00 00 00 00  o..J............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]testing.InternalExample.+0
	rel 48+8 t=1 type.testing.InternalExample+0
go.typelink.[]testing.InternalExample t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.[]testing.InternalExample+0
runtime.gcbits. t=9 dupok size=0
type..namedata.*[0]testing.InternalTest. t=9 dupok size=27
	0x0000 00 00 18 2a 5b 30 5d 74 65 73 74 69 6e 67 2e 49  ...*[0]testing.I
	0x0010 6e 74 65 72 6e 61 6c 54 65 73 74                 nternalTest
type.[0]testing.InternalTest t=9 dupok size=72
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 4f 5b 8d 04 02 08 08 91 00 00 00 00 00 00 00 00  O[..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[0]testing.InternalTest.+0
	rel 48+8 t=1 type.testing.InternalTest+0
	rel 56+8 t=1 type.[]testing.InternalTest+0
go.typelink.[0]testing.InternalTest t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.[0]testing.InternalTest+0
runtime.gcbits.6ddb16 t=9 dupok size=3
	0x0000 6d db 16                                         m..
type..namedata.*[7]testing.InternalBenchmark. t=9 dupok size=32
	0x0000 00 00 1d 2a 5b 37 5d 74 65 73 74 69 6e 67 2e 49  ...*[7]testing.I
	0x0010 6e 74 65 72 6e 61 6c 42 65 6e 63 68 6d 61 72 6b  nternalBenchmark
type.[7]testing.InternalBenchmark t=9 dupok size=72
	0x0000 a8 00 00 00 00 00 00 00 a8 00 00 00 00 00 00 00  ................
	0x0010 24 27 1c c1 02 08 08 11 00 00 00 00 00 00 00 00  $'..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 07 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.6ddb16+0
	rel 40+4 t=5 type..namedata.*[7]testing.InternalBenchmark.+0
	rel 48+8 t=1 type.testing.InternalBenchmark+0
	rel 56+8 t=1 type.[]testing.InternalBenchmark+0
go.typelink.[7]testing.InternalBenchmark t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.[7]testing.InternalBenchmark+0
type..namedata.*[0]testing.InternalExample. t=9 dupok size=30
	0x0000 00 00 1b 2a 5b 30 5d 74 65 73 74 69 6e 67 2e 49  ...*[0]testing.I
	0x0010 6e 74 65 72 6e 61 6c 45 78 61 6d 70 6c 65        nternalExample
type.[0]testing.InternalExample t=9 dupok size=72
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 6a ae b6 6c 02 08 08 91 00 00 00 00 00 00 00 00  j..l............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[0]testing.InternalExample.+0
	rel 48+8 t=1 type.testing.InternalExample+0
	rel 56+8 t=1 type.[]testing.InternalExample+0
go.typelink.[0]testing.InternalExample t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.[0]testing.InternalExample+0
type..importpath.github.com/tooru/gopl/ch11/p06popcount. t=9 dupok size=41
	0x0000 00 00 26 67 69 74 68 75 62 2e 63 6f 6d 2f 74 6f  ..&github.com/to
	0x0010 6f 72 75 2f 67 6f 70 6c 2f 63 68 31 31 2f 70 30  oru/gopl/ch11/p0
	0x0020 36 70 6f 70 63 6f 75 6e 74                       6popcount
type..importpath.github.com/tooru/gopl/ch11/p06popcount_test. t=9 dupok size=46
	0x0000 00 00 2b 67 69 74 68 75 62 2e 63 6f 6d 2f 74 6f  ..+github.com/to
	0x0010 6f 72 75 2f 67 6f 70 6c 2f 63 68 31 31 2f 70 30  oru/gopl/ch11/p0
	0x0020 36 70 6f 70 63 6f 75 6e 74 5f 74 65 73 74        6popcount_test
type..importpath.os. t=9 dupok size=5
	0x0000 00 00 02 6f 73                                   ...os
type..importpath.regexp. t=9 dupok size=9
	0x0000 00 00 06 72 65 67 65 78 70                       ...regexp
type..importpath.testing. t=9 dupok size=10
	0x0000 00 00 07 74 65 73 74 69 6e 67                    ...testing
testing: warning: no tests to run
BenchmarkPopCount           	200000000	         6.84 ns/op
BenchmarkPopCount2          	500000000	         3.65 ns/op
BenchmarkBitCount           	500000000	         3.41 ns/op
BenchmarkBitCount2          	500000000	         3.59 ns/op
BenchmarkPopCountByClearing 	50000000	        29.6 ns/op
BenchmarkPopCountByShifting 	20000000	       112 ns/op
BenchmarkEmptyFunction      	2000000000	         0.39 ns/op
PASS
ok  	github.com/tooru/gopl/ch11/p06popcount	13.135s
