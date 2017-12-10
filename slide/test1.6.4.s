# github.com/tooru/gopl/ch11/p06popcount
"".init.1 t=1 size=144 value=0 args=0x0 locals=0x0
	0x0000 00000 (popcount.go:6)	TEXT	"".init.1(SB), $0-0
	0x0000 00000 (popcount.go:6)	MOVQ	(TLS), CX
	0x0009 00009 (popcount.go:6)	CMPQ	SP, 16(CX)
	0x000d 00013 (popcount.go:6)	JLS	128
	0x000f 00015 (popcount.go:6)	NOP
	0x000f 00015 (popcount.go:6)	NOP
	0x000f 00015 (popcount.go:6)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount.go:6)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount.go:7)	MOVQ	$0, CX
	0x0011 00017 (popcount.go:7)	MOVQ	$256, DX
	0x0018 00024 (popcount.go:7)	CMPQ	CX, DX
	0x001b 00027 (popcount.go:7)	JGE	$0, 113
	0x001d 00029 (popcount.go:8)	MOVQ	CX, BP
	0x0020 00032 (popcount.go:8)	SARQ	$63, BP
	0x0024 00036 (popcount.go:8)	MOVQ	CX, R8
	0x0027 00039 (popcount.go:8)	SUBQ	BP, R8
	0x002a 00042 (popcount.go:8)	MOVQ	R8, BP
	0x002d 00045 (popcount.go:8)	SARQ	$1, BP
	0x0030 00048 (popcount.go:8)	LEAQ	"".pc(SB), BX
	0x0037 00055 (popcount.go:8)	CMPQ	BP, $256
	0x003e 00062 (popcount.go:8)	JCC	$1, 121
	0x0040 00064 (popcount.go:8)	LEAQ	(BX)(BP*1), BX
	0x0044 00068 (popcount.go:8)	MOVBQZX	(BX), BX
	0x0047 00071 (popcount.go:8)	MOVQ	CX, BP
	0x004a 00074 (popcount.go:8)	ANDQ	$1, BP
	0x004e 00078 (popcount.go:8)	ADDQ	BP, BX
	0x0051 00081 (popcount.go:8)	LEAQ	"".pc(SB), BP
	0x0058 00088 (popcount.go:8)	CMPQ	CX, $256
	0x005f 00095 (popcount.go:8)	JCC	$1, 114
	0x0061 00097 (popcount.go:8)	LEAQ	(BP)(CX*1), BP
	0x0066 00102 (popcount.go:8)	MOVB	BL, (BP)
	0x0069 00105 (popcount.go:7)	INCQ	CX
	0x006c 00108 (popcount.go:7)	CMPQ	CX, DX
	0x006f 00111 (popcount.go:7)	JLT	$0, 29
	0x0071 00113 (popcount.go:10)	RET
	0x0072 00114 (popcount.go:8)	PCDATA	$0, $0
	0x0072 00114 (popcount.go:8)	CALL	runtime.panicindex(SB)
	0x0077 00119 (popcount.go:8)	UNDEF
	0x0079 00121 (popcount.go:8)	PCDATA	$0, $0
	0x0079 00121 (popcount.go:8)	CALL	runtime.panicindex(SB)
	0x007e 00126 (popcount.go:8)	UNDEF
	0x0080 00128 (popcount.go:8)	NOP
	0x0080 00128 (popcount.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x0085 00133 (popcount.go:6)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 71 31  dH..%....H;a.vq1
	0x0010 c9 48 c7 c2 00 01 00 00 48 39 d1 7d 54 48 89 cd  .H......H9.}TH..
	0x0020 48 c1 fd 3f 49 89 c8 49 29 e8 4c 89 c5 48 d1 fd  H..?I..I).L..H..
	0x0030 48 8d 1d 00 00 00 00 48 81 fd 00 01 00 00 73 39  H......H......s9
	0x0040 48 8d 1c 2b 0f b6 1b 48 89 cd 48 83 e5 01 48 01  H..+...H..H...H.
	0x0050 eb 48 8d 2d 00 00 00 00 48 81 f9 00 01 00 00 73  .H.-....H......s
	0x0060 11 48 8d 6c 0d 00 88 5d 00 48 ff c1 48 39 d1 7c  .H.l...].H..H9.|
	0x0070 ac c3 e8 00 00 00 00 0f 0b e8 00 00 00 00 0f 0b  ................
	0x0080 e8 00 00 00 00 e9 76 ff ff ff cc cc cc cc cc cc  ......v.........
	rel 5+4 t=14 +0
	rel 51+4 t=13 "".pc+0
	rel 84+4 t=13 "".pc+0
	rel 115+4 t=6 runtime.panicindex+0
	rel 122+4 t=6 runtime.panicindex+0
	rel 129+4 t=6 runtime.morestack_noctxt+0
"".PopCount t=1 size=256 value=0 args=0x10 locals=0x0
	0x0000 00000 (popcount.go:13)	TEXT	"".PopCount(SB), $0-16
	0x0000 00000 (popcount.go:13)	NOP
	0x0000 00000 (popcount.go:13)	NOP
	0x0000 00000 (popcount.go:13)	MOVQ	"".x+8(FP), BP
	0x0005 00005 (popcount.go:13)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0005 00005 (popcount.go:13)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount.go:21)	MOVQ	BP, R8
	0x0008 00008 (popcount.go:21)	SHRQ	$0, BP
	0x000c 00012 (popcount.go:21)	LEAQ	"".pc(SB), BX
	0x0013 00019 (popcount.go:21)	MOVBQZX	BPB, BP
	0x0017 00023 (popcount.go:21)	LEAQ	(BX)(BP*1), BX
	0x001b 00027 (popcount.go:21)	MOVBQZX	(BX), BX
	0x001e 00030 (popcount.go:21)	MOVQ	R8, AX
	0x0021 00033 (popcount.go:21)	SHRQ	$8, R8
	0x0025 00037 (popcount.go:21)	LEAQ	"".pc(SB), BP
	0x002c 00044 (popcount.go:21)	MOVBQZX	R8B, R8
	0x0030 00048 (popcount.go:21)	LEAQ	(BP)(R8*1), BP
	0x0035 00053 (popcount.go:21)	MOVBQZX	(BP), BP
	0x0039 00057 (popcount.go:21)	ADDQ	BP, BX
	0x003c 00060 (popcount.go:21)	MOVQ	AX, R8
	0x003f 00063 (popcount.go:21)	SHRQ	$16, R8
	0x0043 00067 (popcount.go:21)	LEAQ	"".pc(SB), BP
	0x004a 00074 (popcount.go:21)	MOVBQZX	R8B, R8
	0x004e 00078 (popcount.go:21)	LEAQ	(BP)(R8*1), BP
	0x0053 00083 (popcount.go:21)	MOVBQZX	(BP), BP
	0x0057 00087 (popcount.go:21)	ADDQ	BP, BX
	0x005a 00090 (popcount.go:21)	MOVQ	AX, R8
	0x005d 00093 (popcount.go:21)	SHRQ	$24, R8
	0x0061 00097 (popcount.go:21)	LEAQ	"".pc(SB), BP
	0x0068 00104 (popcount.go:21)	MOVBQZX	R8B, R8
	0x006c 00108 (popcount.go:21)	LEAQ	(BP)(R8*1), BP
	0x0071 00113 (popcount.go:21)	MOVBQZX	(BP), BP
	0x0075 00117 (popcount.go:21)	ADDQ	BP, BX
	0x0078 00120 (popcount.go:21)	MOVQ	AX, R8
	0x007b 00123 (popcount.go:21)	SHRQ	$32, R8
	0x007f 00127 (popcount.go:21)	LEAQ	"".pc(SB), BP
	0x0086 00134 (popcount.go:21)	MOVBQZX	R8B, R8
	0x008a 00138 (popcount.go:21)	LEAQ	(BP)(R8*1), BP
	0x008f 00143 (popcount.go:21)	MOVBQZX	(BP), BP
	0x0093 00147 (popcount.go:21)	ADDQ	BP, BX
	0x0096 00150 (popcount.go:21)	MOVQ	AX, R8
	0x0099 00153 (popcount.go:21)	SHRQ	$40, R8
	0x009d 00157 (popcount.go:21)	LEAQ	"".pc(SB), BP
	0x00a4 00164 (popcount.go:21)	MOVBQZX	R8B, R8
	0x00a8 00168 (popcount.go:21)	LEAQ	(BP)(R8*1), BP
	0x00ad 00173 (popcount.go:21)	MOVBQZX	(BP), BP
	0x00b1 00177 (popcount.go:21)	ADDQ	BP, BX
	0x00b4 00180 (popcount.go:21)	MOVQ	AX, R8
	0x00b7 00183 (popcount.go:21)	SHRQ	$48, R8
	0x00bb 00187 (popcount.go:21)	LEAQ	"".pc(SB), BP
	0x00c2 00194 (popcount.go:21)	MOVBQZX	R8B, R8
	0x00c6 00198 (popcount.go:21)	LEAQ	(BP)(R8*1), BP
	0x00cb 00203 (popcount.go:21)	MOVBQZX	(BP), BP
	0x00cf 00207 (popcount.go:21)	ADDQ	BP, BX
	0x00d2 00210 (popcount.go:21)	MOVQ	AX, R8
	0x00d5 00213 (popcount.go:21)	SHRQ	$56, R8
	0x00d9 00217 (popcount.go:21)	LEAQ	"".pc(SB), BP
	0x00e0 00224 (popcount.go:21)	MOVBQZX	R8B, R8
	0x00e4 00228 (popcount.go:21)	LEAQ	(BP)(R8*1), BP
	0x00e9 00233 (popcount.go:21)	MOVBQZX	(BP), BP
	0x00ed 00237 (popcount.go:21)	ADDQ	BP, BX
	0x00f0 00240 (popcount.go:21)	MOVBQZX	BL, BX
	0x00f3 00243 (popcount.go:21)	MOVQ	BX, "".~r1+16(FP)
	0x00f8 00248 (popcount.go:21)	RET
	0x0000 48 8b 6c 24 08 49 89 e8 48 c1 ed 00 48 8d 1d 00  H.l$.I..H...H...
	0x0010 00 00 00 40 0f b6 ed 48 8d 1c 2b 0f b6 1b 4c 89  ...@...H..+...L.
	0x0020 c0 49 c1 e8 08 48 8d 2d 00 00 00 00 45 0f b6 c0  .I...H.-....E...
	0x0030 4a 8d 6c 05 00 0f b6 6d 00 48 01 eb 49 89 c0 49  J.l....m.H..I..I
	0x0040 c1 e8 10 48 8d 2d 00 00 00 00 45 0f b6 c0 4a 8d  ...H.-....E...J.
	0x0050 6c 05 00 0f b6 6d 00 48 01 eb 49 89 c0 49 c1 e8  l....m.H..I..I..
	0x0060 18 48 8d 2d 00 00 00 00 45 0f b6 c0 4a 8d 6c 05  .H.-....E...J.l.
	0x0070 00 0f b6 6d 00 48 01 eb 49 89 c0 49 c1 e8 20 48  ...m.H..I..I.. H
	0x0080 8d 2d 00 00 00 00 45 0f b6 c0 4a 8d 6c 05 00 0f  .-....E...J.l...
	0x0090 b6 6d 00 48 01 eb 49 89 c0 49 c1 e8 28 48 8d 2d  .m.H..I..I..(H.-
	0x00a0 00 00 00 00 45 0f b6 c0 4a 8d 6c 05 00 0f b6 6d  ....E...J.l....m
	0x00b0 00 48 01 eb 49 89 c0 49 c1 e8 30 48 8d 2d 00 00  .H..I..I..0H.-..
	0x00c0 00 00 45 0f b6 c0 4a 8d 6c 05 00 0f b6 6d 00 48  ..E...J.l....m.H
	0x00d0 01 eb 49 89 c0 49 c1 e8 38 48 8d 2d 00 00 00 00  ..I..I..8H.-....
	0x00e0 45 0f b6 c0 4a 8d 6c 05 00 0f b6 6d 00 48 01 eb  E...J.l....m.H..
	0x00f0 0f b6 db 48 89 5c 24 10 c3 cc cc cc cc cc cc cc  ...H.\$.........
	rel 15+4 t=13 "".pc+0
	rel 40+4 t=13 "".pc+0
	rel 70+4 t=13 "".pc+0
	rel 100+4 t=13 "".pc+0
	rel 130+4 t=13 "".pc+0
	rel 160+4 t=13 "".pc+0
	rel 190+4 t=13 "".pc+0
	rel 220+4 t=13 "".pc+0
"".bitCount t=1 size=128 value=0 args=0x10 locals=0x0
	0x0000 00000 (popcount.go:24)	TEXT	"".bitCount(SB), $0-16
	0x0000 00000 (popcount.go:24)	NOP
	0x0000 00000 (popcount.go:24)	NOP
	0x0000 00000 (popcount.go:24)	MOVQ	"".x+8(FP), AX
	0x0005 00005 (popcount.go:24)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0005 00005 (popcount.go:24)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount.go:26)	MOVQ	AX, BX
	0x0008 00008 (popcount.go:26)	SHRQ	$1, BX
	0x000b 00011 (popcount.go:26)	MOVQ	$6148914691236517205, BP
	0x0015 00021 (popcount.go:26)	ANDQ	BP, BX
	0x0018 00024 (popcount.go:26)	MOVQ	AX, BP
	0x001b 00027 (popcount.go:26)	SUBQ	BX, BP
	0x001e 00030 (popcount.go:27)	MOVQ	$3689348814741910323, AX
	0x0028 00040 (popcount.go:27)	ANDQ	BP, AX
	0x002b 00043 (popcount.go:27)	SHRQ	$2, BP
	0x002f 00047 (popcount.go:27)	MOVQ	$3689348814741910323, R8
	0x0039 00057 (popcount.go:27)	ANDQ	R8, BP
	0x003c 00060 (popcount.go:27)	ADDQ	BP, AX
	0x003f 00063 (popcount.go:28)	MOVQ	AX, BX
	0x0042 00066 (popcount.go:28)	SHRQ	$4, BX
	0x0046 00070 (popcount.go:28)	ADDQ	AX, BX
	0x0049 00073 (popcount.go:28)	MOVQ	$1085102592571150095, BP
	0x0053 00083 (popcount.go:28)	ANDQ	BP, BX
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
	0x0000 48 8b 44 24 08 48 89 c3 48 d1 eb 48 bd 55 55 55  H.D$.H..H..H.UUU
	0x0010 55 55 55 55 55 48 21 eb 48 89 c5 48 29 dd 48 b8  UUUUUH!.H..H).H.
	0x0020 33 33 33 33 33 33 33 33 48 21 e8 48 c1 ed 02 49  33333333H!.H...I
	0x0030 b8 33 33 33 33 33 33 33 33 4c 21 c5 48 01 e8 48  .33333333L!.H..H
	0x0040 89 c3 48 c1 eb 04 48 01 c3 48 bd 0f 0f 0f 0f 0f  ..H...H..H......
	0x0050 0f 0f 0f 48 21 eb 48 89 d8 48 c1 eb 08 48 01 c3  ...H!.H..H...H..
	0x0060 48 89 d8 48 c1 eb 10 48 01 c3 48 89 d8 48 c1 eb  H..H...H..H..H..
	0x0070 20 48 01 c3 48 83 e3 7f 48 89 5c 24 10 c3 cc cc   H..H...H.\$....
"".popCountByClearing t=1 size=48 value=0 args=0x10 locals=0x0
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
	0x0020 75 eb 48 89 4c 24 10 c3 cc cc cc cc cc cc cc cc  u.H.L$..........
"".popCountByShifting t=1 size=80 value=0 args=0x10 locals=0x0
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
	0x000f 00015 (popcount.go:49)	MOVQ	CX, BP
	0x0012 00018 (popcount.go:49)	MOVQ	$1, BX
	0x0019 00025 (popcount.go:49)	MOVQ	AX, CX
	0x001c 00028 (popcount.go:49)	CMPQ	AX, $64
	0x0020 00032 (popcount.go:49)	JCC	$1, 67
	0x0022 00034 (popcount.go:49)	SHLQ	CX, BX
	0x0025 00037 (popcount.go:49)	MOVQ	BP, CX
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
	0x0000 48 8b 74 24 08 31 d2 31 c0 48 83 f8 40 73 2e 48  H.t$.1.1.H..@s.H
	0x0010 89 cd 48 c7 c3 01 00 00 00 48 89 c1 48 83 f8 40  ..H......H..H..@
	0x0020 73 21 48 d3 e3 48 89 e9 48 21 f3 48 83 fb 00 74  s!H..H..H!.H...t
	0x0030 03 48 ff c2 48 ff c0 48 83 f8 40 72 d2 48 89 54  .H..H..H..@r.H.T
	0x0040 24 10 c3 31 db eb db cc cc cc cc cc cc cc cc cc  $..1............
"".emtpy t=1 size=16 value=0 args=0x10 locals=0x0
	0x0000 00000 (popcount.go:56)	TEXT	"".emtpy(SB), $0-16
	0x0000 00000 (popcount.go:56)	NOP
	0x0000 00000 (popcount.go:56)	NOP
	0x0000 00000 (popcount.go:56)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0000 00000 (popcount.go:56)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (popcount.go:57)	MOVQ	$0, "".~r1+16(FP)
	0x0009 00009 (popcount.go:57)	RET
	0x0000 48 c7 44 24 10 00 00 00 00 c3 cc cc cc cc cc cc  H.D$............
"".init t=1 size=80 value=0 args=0x0 locals=0x0
	0x0000 00000 (popcount.go:58)	TEXT	"".init(SB), $0-0
	0x0000 00000 (popcount.go:58)	MOVQ	(TLS), CX
	0x0009 00009 (popcount.go:58)	CMPQ	SP, 16(CX)
	0x000d 00013 (popcount.go:58)	JLS	67
	0x000f 00015 (popcount.go:58)	NOP
	0x000f 00015 (popcount.go:58)	NOP
	0x000f 00015 (popcount.go:58)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount.go:58)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount.go:58)	MOVBQZX	"".initdone·(SB), BX
	0x0016 00022 (popcount.go:58)	CMPB	BL, $0
	0x0019 00025 (popcount.go:58)	JEQ	47
	0x001b 00027 (popcount.go:58)	MOVBQZX	"".initdone·(SB), BX
	0x0022 00034 (popcount.go:58)	CMPB	BL, $2
	0x0025 00037 (popcount.go:58)	JNE	40
	0x0027 00039 (popcount.go:58)	RET
	0x0028 00040 (popcount.go:58)	PCDATA	$0, $0
	0x0028 00040 (popcount.go:58)	CALL	runtime.throwinit(SB)
	0x002d 00045 (popcount.go:58)	UNDEF
	0x002f 00047 (popcount.go:58)	MOVB	$1, "".initdone·(SB)
	0x0036 00054 (popcount.go:58)	PCDATA	$0, $0
	0x0036 00054 (popcount.go:58)	CALL	"".init.1(SB)
	0x003b 00059 (popcount.go:58)	MOVB	$2, "".initdone·(SB)
	0x0042 00066 (popcount.go:58)	RET
	0x0043 00067 (popcount.go:58)	NOP
	0x0043 00067 (popcount.go:58)	CALL	runtime.morestack_noctxt(SB)
	0x0048 00072 (popcount.go:58)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 34 0f  dH..%....H;a.v4.
	0x0010 b6 1d 00 00 00 00 80 fb 00 74 14 0f b6 1d 00 00  .........t......
	0x0020 00 00 80 fb 02 75 01 c3 e8 00 00 00 00 0f 0b c6  .....u..........
	0x0030 05 00 00 00 00 01 e8 00 00 00 00 c6 05 00 00 00  ................
	0x0040 00 02 c3 e8 00 00 00 00 eb b6 cc cc cc cc cc cc  ................
	rel 5+4 t=14 +0
	rel 18+4 t=13 "".initdone·+0
	rel 30+4 t=13 "".initdone·+0
	rel 41+4 t=6 runtime.throwinit+0
	rel 49+4 t=13 "".initdone·+-1
	rel 55+4 t=6 "".init.1+0
	rel 61+4 t=13 "".initdone·+-1
	rel 68+4 t=6 runtime.morestack_noctxt+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·23e8278e2b69a3a75fa59b23c49ed6ad t=8 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·23e8278e2b69a3a75fa59b23c49ed6ad t=8 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·23e8278e2b69a3a75fa59b23c49ed6ad t=8 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·23e8278e2b69a3a75fa59b23c49ed6ad t=8 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·23e8278e2b69a3a75fa59b23c49ed6ad t=8 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
"".pc t=31 size=256 value=0
"".initdone· t=31 size=1 value=0
"".init.1·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init.1+0
"".PopCount·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".PopCount+0
"".bitCount·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".bitCount+0
"".popCountByClearing·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".popCountByClearing+0
"".popCountByShifting·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".popCountByShifting+0
"".emtpy·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".emtpy+0
"".init·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init+0
runtime.gcbits.01 t=8 dupok size=1 value=0
	0x0000 01                                               .
go.string.hdr."[]uint8" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."[]uint8"+0
go.string."[]uint8" t=8 dupok size=8 value=0
	0x0000 5b 5d 75 69 6e 74 38 00                          []uint8.
type.[]uint8 t=8 dupok size=72 value=0
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 df 7e 2e 38 00 08 08 17 00 00 00 00 00 00 00 00  .~.8............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+272
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+8 t=1 go.string.hdr."[]uint8"+0
	rel 56+8 t=1 go.weak.type.*[]uint8+0
	rel 64+8 t=1 type.uint8+0
go.typelink.[]uint8	[]uint8 t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.[]uint8+0
type..hashfunc256 t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00  ................
	rel 0+8 t=1 runtime.memhash_varlen+0
type..eqfunc256 t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00  ................
	rel 0+8 t=1 runtime.memequal_varlen+0
type..alg256 t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc256+0
	rel 8+8 t=1 type..eqfunc256+0
runtime.gcbits. t=8 dupok size=0 value=0
go.string.hdr."[256]uint8" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 0a 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."[256]uint8"+0
go.string."[256]uint8" t=8 dupok size=16 value=0
	0x0000 5b 32 35 36 5d 75 69 6e 74 38 00                 [256]uint8.
type.[256]uint8 t=8 dupok size=88 value=0
	0x0000 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 9e 9d b0 ff 00 01 01 91 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 01 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..alg256+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+8 t=1 go.string.hdr."[256]uint8"+0
	rel 56+8 t=1 go.weak.type.*[256]uint8+0
	rel 64+8 t=1 type.uint8+0
	rel 72+8 t=1 type.[]uint8+0
go.typelink.[256]uint8	[256]uint8 t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.[256]uint8+0
# github.com/tooru/gopl/ch11/p06popcount_test
"".BitCount t=1 size=128 value=0 args=0x10 locals=0x0
	0x0000 00000 (popcount_test.go:14)	TEXT	"".BitCount(SB), $0-16
	0x0000 00000 (popcount_test.go:14)	NOP
	0x0000 00000 (popcount_test.go:14)	NOP
	0x0000 00000 (popcount_test.go:14)	MOVQ	"".x+8(FP), AX
	0x0005 00005 (popcount_test.go:14)	FUNCDATA	$0, gclocals·23e8278e2b69a3a75fa59b23c49ed6ad(SB)
	0x0005 00005 (popcount_test.go:14)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:16)	MOVQ	AX, BX
	0x0008 00008 (popcount_test.go:16)	SHRQ	$1, BX
	0x000b 00011 (popcount_test.go:16)	MOVQ	$6148914691236517205, BP
	0x0015 00021 (popcount_test.go:16)	ANDQ	BP, BX
	0x0018 00024 (popcount_test.go:16)	MOVQ	AX, BP
	0x001b 00027 (popcount_test.go:16)	SUBQ	BX, BP
	0x001e 00030 (popcount_test.go:17)	MOVQ	$3689348814741910323, AX
	0x0028 00040 (popcount_test.go:17)	ANDQ	BP, AX
	0x002b 00043 (popcount_test.go:17)	SHRQ	$2, BP
	0x002f 00047 (popcount_test.go:17)	MOVQ	$3689348814741910323, R8
	0x0039 00057 (popcount_test.go:17)	ANDQ	R8, BP
	0x003c 00060 (popcount_test.go:17)	ADDQ	BP, AX
	0x003f 00063 (popcount_test.go:18)	MOVQ	AX, BX
	0x0042 00066 (popcount_test.go:18)	SHRQ	$4, BX
	0x0046 00070 (popcount_test.go:18)	ADDQ	AX, BX
	0x0049 00073 (popcount_test.go:18)	MOVQ	$1085102592571150095, BP
	0x0053 00083 (popcount_test.go:18)	ANDQ	BP, BX
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
	0x0000 48 8b 44 24 08 48 89 c3 48 d1 eb 48 bd 55 55 55  H.D$.H..H..H.UUU
	0x0010 55 55 55 55 55 48 21 eb 48 89 c5 48 29 dd 48 b8  UUUUUH!.H..H).H.
	0x0020 33 33 33 33 33 33 33 33 48 21 e8 48 c1 ed 02 49  33333333H!.H...I
	0x0030 b8 33 33 33 33 33 33 33 33 4c 21 c5 48 01 e8 48  .33333333L!.H..H
	0x0040 89 c3 48 c1 eb 04 48 01 c3 48 bd 0f 0f 0f 0f 0f  ..H...H..H......
	0x0050 0f 0f 0f 48 21 eb 48 89 d8 48 c1 eb 08 48 01 c3  ...H!.H..H...H..
	0x0060 48 89 d8 48 c1 eb 10 48 01 c3 48 89 d8 48 c1 eb  H..H...H..H..H..
	0x0070 20 48 01 c3 48 83 e3 7f 48 89 5c 24 10 c3 cc cc   H..H...H.\$....
"".PopCountByClearing t=1 size=48 value=0 args=0x10 locals=0x0
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
	0x0020 75 eb 48 89 4c 24 10 c3 cc cc cc cc cc cc cc cc  u.H.L$..........
"".PopCountByShifting t=1 size=80 value=0 args=0x10 locals=0x0
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
	0x000f 00015 (popcount_test.go:39)	MOVQ	CX, BP
	0x0012 00018 (popcount_test.go:39)	MOVQ	$1, BX
	0x0019 00025 (popcount_test.go:39)	MOVQ	AX, CX
	0x001c 00028 (popcount_test.go:39)	CMPQ	AX, $64
	0x0020 00032 (popcount_test.go:39)	JCC	$1, 67
	0x0022 00034 (popcount_test.go:39)	SHLQ	CX, BX
	0x0025 00037 (popcount_test.go:39)	MOVQ	BP, CX
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
	0x0000 48 8b 74 24 08 31 d2 31 c0 48 83 f8 40 73 2e 48  H.t$.1.1.H..@s.H
	0x0010 89 cd 48 c7 c3 01 00 00 00 48 89 c1 48 83 f8 40  ..H......H..H..@
	0x0020 73 21 48 d3 e3 48 89 e9 48 21 f3 48 83 fb 00 74  s!H..H..H!.H...t
	0x0030 03 48 ff c2 48 ff c0 48 83 f8 40 72 d2 48 89 54  .H..H..H..@r.H.T
	0x0040 24 10 c3 31 db eb db cc cc cc cc cc cc cc cc cc  $..1............
"".BenchmarkPopCount t=1 size=288 value=0 args=0x8 locals=0x0
	0x0000 00000 (popcount_test.go:48)	TEXT	"".BenchmarkPopCount(SB), $0-8
	0x0000 00000 (popcount_test.go:48)	NOP
	0x0000 00000 (popcount_test.go:48)	NOP
	0x0000 00000 (popcount_test.go:48)	MOVQ	"".b+8(FP), DX
	0x0005 00005 (popcount_test.go:48)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0005 00005 (popcount_test.go:48)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:49)	MOVQ	$0, CX
	0x0007 00007 (popcount_test.go:49)	NOP
	0x0007 00007 (popcount_test.go:49)	MOVQ	112(DX), BX
	0x000b 00011 (popcount_test.go:49)	CMPQ	BX, CX
	0x000e 00014 (popcount_test.go:49)	JLE	$0, 284
	0x0014 00020 (popcount_test.go:50)	MOVQ	$1311768467294899695, BP
	0x001e 00030 (popcount_test.go:50)	MOVQ	BP, R8
	0x0021 00033 (popcount_test.go:50)	SHRQ	$0, BP
	0x0025 00037 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BX
	0x002c 00044 (popcount_test.go:50)	MOVBQZX	BPB, BP
	0x0030 00048 (popcount_test.go:50)	LEAQ	(BX)(BP*1), BX
	0x0034 00052 (popcount_test.go:50)	MOVBQZX	(BX), BX
	0x0037 00055 (popcount_test.go:50)	MOVQ	R8, AX
	0x003a 00058 (popcount_test.go:50)	SHRQ	$8, R8
	0x003e 00062 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x0045 00069 (popcount_test.go:50)	MOVBQZX	R8B, R8
	0x0049 00073 (popcount_test.go:50)	LEAQ	(BP)(R8*1), BP
	0x004e 00078 (popcount_test.go:50)	MOVBQZX	(BP), BP
	0x0052 00082 (popcount_test.go:50)	ADDQ	BP, BX
	0x0055 00085 (popcount_test.go:50)	MOVQ	AX, R8
	0x0058 00088 (popcount_test.go:50)	SHRQ	$16, R8
	0x005c 00092 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x0063 00099 (popcount_test.go:50)	MOVBQZX	R8B, R8
	0x0067 00103 (popcount_test.go:50)	LEAQ	(BP)(R8*1), BP
	0x006c 00108 (popcount_test.go:50)	MOVBQZX	(BP), BP
	0x0070 00112 (popcount_test.go:50)	ADDQ	BP, BX
	0x0073 00115 (popcount_test.go:50)	MOVQ	AX, R8
	0x0076 00118 (popcount_test.go:50)	SHRQ	$24, R8
	0x007a 00122 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x0081 00129 (popcount_test.go:50)	MOVBQZX	R8B, R8
	0x0085 00133 (popcount_test.go:50)	LEAQ	(BP)(R8*1), BP
	0x008a 00138 (popcount_test.go:50)	MOVBQZX	(BP), BP
	0x008e 00142 (popcount_test.go:50)	ADDQ	BP, BX
	0x0091 00145 (popcount_test.go:50)	MOVQ	AX, R8
	0x0094 00148 (popcount_test.go:50)	SHRQ	$32, R8
	0x0098 00152 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x009f 00159 (popcount_test.go:50)	MOVBQZX	R8B, R8
	0x00a3 00163 (popcount_test.go:50)	LEAQ	(BP)(R8*1), BP
	0x00a8 00168 (popcount_test.go:50)	MOVBQZX	(BP), BP
	0x00ac 00172 (popcount_test.go:50)	ADDQ	BP, BX
	0x00af 00175 (popcount_test.go:50)	MOVQ	AX, R8
	0x00b2 00178 (popcount_test.go:50)	SHRQ	$40, R8
	0x00b6 00182 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x00bd 00189 (popcount_test.go:50)	MOVBQZX	R8B, R8
	0x00c1 00193 (popcount_test.go:50)	LEAQ	(BP)(R8*1), BP
	0x00c6 00198 (popcount_test.go:50)	MOVBQZX	(BP), BP
	0x00ca 00202 (popcount_test.go:50)	ADDQ	BP, BX
	0x00cd 00205 (popcount_test.go:50)	MOVQ	AX, R8
	0x00d0 00208 (popcount_test.go:50)	SHRQ	$48, R8
	0x00d4 00212 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x00db 00219 (popcount_test.go:50)	MOVBQZX	R8B, R8
	0x00df 00223 (popcount_test.go:50)	LEAQ	(BP)(R8*1), BP
	0x00e4 00228 (popcount_test.go:50)	MOVBQZX	(BP), BP
	0x00e8 00232 (popcount_test.go:50)	ADDQ	BP, BX
	0x00eb 00235 (popcount_test.go:50)	MOVQ	AX, R8
	0x00ee 00238 (popcount_test.go:50)	SHRQ	$56, R8
	0x00f2 00242 (popcount_test.go:50)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x00f9 00249 (popcount_test.go:50)	MOVBQZX	R8B, R8
	0x00fd 00253 (popcount_test.go:50)	LEAQ	(BP)(R8*1), BP
	0x0102 00258 (popcount_test.go:50)	MOVBQZX	(BP), BP
	0x0106 00262 (popcount_test.go:50)	ADDQ	BP, BX
	0x0109 00265 (popcount_test.go:50)	MOVBQZX	BL, BX
	0x010c 00268 (popcount_test.go:49)	INCQ	CX
	0x010f 00271 (popcount_test.go:49)	NOP
	0x010f 00271 (popcount_test.go:49)	MOVQ	112(DX), BX
	0x0113 00275 (popcount_test.go:49)	CMPQ	BX, CX
	0x0116 00278 (popcount_test.go:49)	JGT	$0, 20
	0x011c 00284 (popcount_test.go:52)	RET
	0x0000 48 8b 54 24 08 31 c9 48 8b 5a 70 48 39 cb 0f 8e  H.T$.1.H.ZpH9...
	0x0010 08 01 00 00 48 bd ef cd ab 90 78 56 34 12 49 89  ....H.....xV4.I.
	0x0020 e8 48 c1 ed 00 48 8d 1d 00 00 00 00 40 0f b6 ed  .H...H......@...
	0x0030 48 8d 1c 2b 0f b6 1b 4c 89 c0 49 c1 e8 08 48 8d  H..+...L..I...H.
	0x0040 2d 00 00 00 00 45 0f b6 c0 4a 8d 6c 05 00 0f b6  -....E...J.l....
	0x0050 6d 00 48 01 eb 49 89 c0 49 c1 e8 10 48 8d 2d 00  m.H..I..I...H.-.
	0x0060 00 00 00 45 0f b6 c0 4a 8d 6c 05 00 0f b6 6d 00  ...E...J.l....m.
	0x0070 48 01 eb 49 89 c0 49 c1 e8 18 48 8d 2d 00 00 00  H..I..I...H.-...
	0x0080 00 45 0f b6 c0 4a 8d 6c 05 00 0f b6 6d 00 48 01  .E...J.l....m.H.
	0x0090 eb 49 89 c0 49 c1 e8 20 48 8d 2d 00 00 00 00 45  .I..I.. H.-....E
	0x00a0 0f b6 c0 4a 8d 6c 05 00 0f b6 6d 00 48 01 eb 49  ...J.l....m.H..I
	0x00b0 89 c0 49 c1 e8 28 48 8d 2d 00 00 00 00 45 0f b6  ..I..(H.-....E..
	0x00c0 c0 4a 8d 6c 05 00 0f b6 6d 00 48 01 eb 49 89 c0  .J.l....m.H..I..
	0x00d0 49 c1 e8 30 48 8d 2d 00 00 00 00 45 0f b6 c0 4a  I..0H.-....E...J
	0x00e0 8d 6c 05 00 0f b6 6d 00 48 01 eb 49 89 c0 49 c1  .l....m.H..I..I.
	0x00f0 e8 38 48 8d 2d 00 00 00 00 45 0f b6 c0 4a 8d 6c  .8H.-....E...J.l
	0x0100 05 00 0f b6 6d 00 48 01 eb 0f b6 db 48 ff c1 48  ....m.H.....H..H
	0x0110 8b 5a 70 48 39 cb 0f 8f f8 fe ff ff c3 cc cc cc  .ZpH9...........
	rel 40+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 65+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 95+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 125+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 155+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 185+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 215+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 245+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
"".BenchmarkPopCount2 t=1 size=304 value=0 args=0x8 locals=0x0
	0x0000 00000 (popcount_test.go:56)	TEXT	"".BenchmarkPopCount2(SB), $0-8
	0x0000 00000 (popcount_test.go:56)	NOP
	0x0000 00000 (popcount_test.go:56)	NOP
	0x0000 00000 (popcount_test.go:56)	MOVQ	"".b+8(FP), SI
	0x0005 00005 (popcount_test.go:56)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0005 00005 (popcount_test.go:56)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:57)	MOVQ	$0, DX
	0x0007 00007 (popcount_test.go:58)	MOVQ	$0, CX
	0x0009 00009 (popcount_test.go:58)	NOP
	0x0009 00009 (popcount_test.go:58)	MOVQ	112(SI), BX
	0x000d 00013 (popcount_test.go:58)	CMPQ	BX, CX
	0x0010 00016 (popcount_test.go:58)	JLE	$0, 289
	0x0016 00022 (popcount_test.go:59)	MOVQ	$1311768467294899695, BP
	0x0020 00032 (popcount_test.go:59)	MOVQ	BP, R8
	0x0023 00035 (popcount_test.go:59)	SHRQ	$0, BP
	0x0027 00039 (popcount_test.go:59)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BX
	0x002e 00046 (popcount_test.go:59)	MOVBQZX	BPB, BP
	0x0032 00050 (popcount_test.go:59)	LEAQ	(BX)(BP*1), BX
	0x0036 00054 (popcount_test.go:59)	MOVBQZX	(BX), BX
	0x0039 00057 (popcount_test.go:59)	MOVQ	R8, AX
	0x003c 00060 (popcount_test.go:59)	SHRQ	$8, R8
	0x0040 00064 (popcount_test.go:59)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x0047 00071 (popcount_test.go:59)	MOVBQZX	R8B, R8
	0x004b 00075 (popcount_test.go:59)	LEAQ	(BP)(R8*1), BP
	0x0050 00080 (popcount_test.go:59)	MOVBQZX	(BP), BP
	0x0054 00084 (popcount_test.go:59)	ADDQ	BP, BX
	0x0057 00087 (popcount_test.go:59)	MOVQ	AX, R8
	0x005a 00090 (popcount_test.go:59)	SHRQ	$16, R8
	0x005e 00094 (popcount_test.go:59)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x0065 00101 (popcount_test.go:59)	MOVBQZX	R8B, R8
	0x0069 00105 (popcount_test.go:59)	LEAQ	(BP)(R8*1), BP
	0x006e 00110 (popcount_test.go:59)	MOVBQZX	(BP), BP
	0x0072 00114 (popcount_test.go:59)	ADDQ	BP, BX
	0x0075 00117 (popcount_test.go:59)	MOVQ	AX, R8
	0x0078 00120 (popcount_test.go:59)	SHRQ	$24, R8
	0x007c 00124 (popcount_test.go:59)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x0083 00131 (popcount_test.go:59)	MOVBQZX	R8B, R8
	0x0087 00135 (popcount_test.go:59)	LEAQ	(BP)(R8*1), BP
	0x008c 00140 (popcount_test.go:59)	MOVBQZX	(BP), BP
	0x0090 00144 (popcount_test.go:59)	ADDQ	BP, BX
	0x0093 00147 (popcount_test.go:59)	MOVQ	AX, R8
	0x0096 00150 (popcount_test.go:59)	SHRQ	$32, R8
	0x009a 00154 (popcount_test.go:59)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x00a1 00161 (popcount_test.go:59)	MOVBQZX	R8B, R8
	0x00a5 00165 (popcount_test.go:59)	LEAQ	(BP)(R8*1), BP
	0x00aa 00170 (popcount_test.go:59)	MOVBQZX	(BP), BP
	0x00ae 00174 (popcount_test.go:59)	ADDQ	BP, BX
	0x00b1 00177 (popcount_test.go:59)	MOVQ	AX, R8
	0x00b4 00180 (popcount_test.go:59)	SHRQ	$40, R8
	0x00b8 00184 (popcount_test.go:59)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x00bf 00191 (popcount_test.go:59)	MOVBQZX	R8B, R8
	0x00c3 00195 (popcount_test.go:59)	LEAQ	(BP)(R8*1), BP
	0x00c8 00200 (popcount_test.go:59)	MOVBQZX	(BP), BP
	0x00cc 00204 (popcount_test.go:59)	ADDQ	BP, BX
	0x00cf 00207 (popcount_test.go:59)	MOVQ	AX, R8
	0x00d2 00210 (popcount_test.go:59)	SHRQ	$48, R8
	0x00d6 00214 (popcount_test.go:59)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x00dd 00221 (popcount_test.go:59)	MOVBQZX	R8B, R8
	0x00e1 00225 (popcount_test.go:59)	LEAQ	(BP)(R8*1), BP
	0x00e6 00230 (popcount_test.go:59)	MOVBQZX	(BP), BP
	0x00ea 00234 (popcount_test.go:59)	ADDQ	BP, BX
	0x00ed 00237 (popcount_test.go:59)	MOVQ	AX, R8
	0x00f0 00240 (popcount_test.go:59)	SHRQ	$56, R8
	0x00f4 00244 (popcount_test.go:59)	LEAQ	github.com/tooru/gopl/ch11/p06popcount.pc(SB), BP
	0x00fb 00251 (popcount_test.go:59)	MOVBQZX	R8B, R8
	0x00ff 00255 (popcount_test.go:59)	LEAQ	(BP)(R8*1), BP
	0x0104 00260 (popcount_test.go:59)	MOVBQZX	(BP), BP
	0x0108 00264 (popcount_test.go:59)	ADDQ	BP, BX
	0x010b 00267 (popcount_test.go:59)	MOVBQZX	BL, BX
	0x010e 00270 (popcount_test.go:59)	MOVQ	BX, DX
	0x0111 00273 (popcount_test.go:58)	INCQ	CX
	0x0114 00276 (popcount_test.go:58)	NOP
	0x0114 00276 (popcount_test.go:58)	MOVQ	112(SI), BX
	0x0118 00280 (popcount_test.go:58)	CMPQ	BX, CX
	0x011b 00283 (popcount_test.go:58)	JGT	$0, 22
	0x0121 00289 (popcount_test.go:61)	MOVQ	DX, "".benchResult(SB)
	0x0128 00296 (popcount_test.go:62)	RET
	0x0000 48 8b 74 24 08 31 d2 31 c9 48 8b 5e 70 48 39 cb  H.t$.1.1.H.^pH9.
	0x0010 0f 8e 0b 01 00 00 48 bd ef cd ab 90 78 56 34 12  ......H.....xV4.
	0x0020 49 89 e8 48 c1 ed 00 48 8d 1d 00 00 00 00 40 0f  I..H...H......@.
	0x0030 b6 ed 48 8d 1c 2b 0f b6 1b 4c 89 c0 49 c1 e8 08  ..H..+...L..I...
	0x0040 48 8d 2d 00 00 00 00 45 0f b6 c0 4a 8d 6c 05 00  H.-....E...J.l..
	0x0050 0f b6 6d 00 48 01 eb 49 89 c0 49 c1 e8 10 48 8d  ..m.H..I..I...H.
	0x0060 2d 00 00 00 00 45 0f b6 c0 4a 8d 6c 05 00 0f b6  -....E...J.l....
	0x0070 6d 00 48 01 eb 49 89 c0 49 c1 e8 18 48 8d 2d 00  m.H..I..I...H.-.
	0x0080 00 00 00 45 0f b6 c0 4a 8d 6c 05 00 0f b6 6d 00  ...E...J.l....m.
	0x0090 48 01 eb 49 89 c0 49 c1 e8 20 48 8d 2d 00 00 00  H..I..I.. H.-...
	0x00a0 00 45 0f b6 c0 4a 8d 6c 05 00 0f b6 6d 00 48 01  .E...J.l....m.H.
	0x00b0 eb 49 89 c0 49 c1 e8 28 48 8d 2d 00 00 00 00 45  .I..I..(H.-....E
	0x00c0 0f b6 c0 4a 8d 6c 05 00 0f b6 6d 00 48 01 eb 49  ...J.l....m.H..I
	0x00d0 89 c0 49 c1 e8 30 48 8d 2d 00 00 00 00 45 0f b6  ..I..0H.-....E..
	0x00e0 c0 4a 8d 6c 05 00 0f b6 6d 00 48 01 eb 49 89 c0  .J.l....m.H..I..
	0x00f0 49 c1 e8 38 48 8d 2d 00 00 00 00 45 0f b6 c0 4a  I..8H.-....E...J
	0x0100 8d 6c 05 00 0f b6 6d 00 48 01 eb 0f b6 db 48 89  .l....m.H.....H.
	0x0110 da 48 ff c1 48 8b 5e 70 48 39 cb 0f 8f f5 fe ff  .H..H.^pH9......
	0x0120 ff 48 89 15 00 00 00 00 c3 cc cc cc cc cc cc cc  .H..............
	rel 42+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 67+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 97+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 127+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 157+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 187+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 217+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 247+4 t=13 github.com/tooru/gopl/ch11/p06popcount.pc+0
	rel 292+4 t=13 "".benchResult+0
"".BenchmarkBitCount t=1 size=176 value=0 args=0x8 locals=0x0
	0x0000 00000 (popcount_test.go:64)	TEXT	"".BenchmarkBitCount(SB), $0-8
	0x0000 00000 (popcount_test.go:64)	NOP
	0x0000 00000 (popcount_test.go:64)	NOP
	0x0000 00000 (popcount_test.go:64)	MOVQ	"".b+8(FP), DX
	0x0005 00005 (popcount_test.go:64)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0005 00005 (popcount_test.go:64)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:65)	MOVQ	$0, AX
	0x0007 00007 (popcount_test.go:65)	NOP
	0x0007 00007 (popcount_test.go:65)	MOVQ	112(DX), BX
	0x000b 00011 (popcount_test.go:65)	CMPQ	BX, AX
	0x000e 00014 (popcount_test.go:65)	JLE	$0, 161
	0x0014 00020 (popcount_test.go:66)	MOVQ	$1311768467294899695, BX
	0x001e 00030 (popcount_test.go:66)	MOVQ	BX, CX
	0x0021 00033 (popcount_test.go:66)	SHRQ	$1, BX
	0x0024 00036 (popcount_test.go:66)	MOVQ	$6148914691236517205, BP
	0x002e 00046 (popcount_test.go:66)	ANDQ	BP, BX
	0x0031 00049 (popcount_test.go:66)	MOVQ	CX, BP
	0x0034 00052 (popcount_test.go:66)	SUBQ	BX, BP
	0x0037 00055 (popcount_test.go:66)	MOVQ	$3689348814741910323, BX
	0x0041 00065 (popcount_test.go:66)	ANDQ	BP, BX
	0x0044 00068 (popcount_test.go:66)	SHRQ	$2, BP
	0x0048 00072 (popcount_test.go:66)	MOVQ	$3689348814741910323, R8
	0x0052 00082 (popcount_test.go:66)	ANDQ	R8, BP
	0x0055 00085 (popcount_test.go:66)	ADDQ	BP, BX
	0x0058 00088 (popcount_test.go:66)	MOVQ	BX, CX
	0x005b 00091 (popcount_test.go:66)	SHRQ	$4, BX
	0x005f 00095 (popcount_test.go:66)	ADDQ	CX, BX
	0x0062 00098 (popcount_test.go:66)	MOVQ	$1085102592571150095, BP
	0x006c 00108 (popcount_test.go:66)	ANDQ	BP, BX
	0x006f 00111 (popcount_test.go:66)	MOVQ	BX, CX
	0x0072 00114 (popcount_test.go:66)	SHRQ	$8, BX
	0x0076 00118 (popcount_test.go:66)	ADDQ	CX, BX
	0x0079 00121 (popcount_test.go:66)	MOVQ	BX, CX
	0x007c 00124 (popcount_test.go:66)	SHRQ	$16, BX
	0x0080 00128 (popcount_test.go:66)	ADDQ	CX, BX
	0x0083 00131 (popcount_test.go:66)	MOVQ	BX, CX
	0x0086 00134 (popcount_test.go:66)	SHRQ	$32, BX
	0x008a 00138 (popcount_test.go:66)	ADDQ	CX, BX
	0x008d 00141 (popcount_test.go:66)	ANDQ	$127, BX
	0x0091 00145 (popcount_test.go:65)	INCQ	AX
	0x0094 00148 (popcount_test.go:65)	NOP
	0x0094 00148 (popcount_test.go:65)	MOVQ	112(DX), BX
	0x0098 00152 (popcount_test.go:65)	CMPQ	BX, AX
	0x009b 00155 (popcount_test.go:65)	JGT	$0, 20
	0x00a1 00161 (popcount_test.go:68)	RET
	0x0000 48 8b 54 24 08 31 c0 48 8b 5a 70 48 39 c3 0f 8e  H.T$.1.H.ZpH9...
	0x0010 8d 00 00 00 48 bb ef cd ab 90 78 56 34 12 48 89  ....H.....xV4.H.
	0x0020 d9 48 d1 eb 48 bd 55 55 55 55 55 55 55 55 48 21  .H..H.UUUUUUUUH!
	0x0030 eb 48 89 cd 48 29 dd 48 bb 33 33 33 33 33 33 33  .H..H).H.3333333
	0x0040 33 48 21 eb 48 c1 ed 02 49 b8 33 33 33 33 33 33  3H!.H...I.333333
	0x0050 33 33 4c 21 c5 48 01 eb 48 89 d9 48 c1 eb 04 48  33L!.H..H..H...H
	0x0060 01 cb 48 bd 0f 0f 0f 0f 0f 0f 0f 0f 48 21 eb 48  ..H.........H!.H
	0x0070 89 d9 48 c1 eb 08 48 01 cb 48 89 d9 48 c1 eb 10  ..H...H..H..H...
	0x0080 48 01 cb 48 89 d9 48 c1 eb 20 48 01 cb 48 83 e3  H..H..H.. H..H..
	0x0090 7f 48 ff c0 48 8b 5a 70 48 39 c3 0f 8f 73 ff ff  .H..H.ZpH9...s..
	0x00a0 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc  ................
"".BenchmarkBitCount2 t=1 size=176 value=0 args=0x8 locals=0x0
	0x0000 00000 (popcount_test.go:70)	TEXT	"".BenchmarkBitCount2(SB), $0-8
	0x0000 00000 (popcount_test.go:70)	NOP
	0x0000 00000 (popcount_test.go:70)	NOP
	0x0000 00000 (popcount_test.go:70)	MOVQ	"".b+8(FP), DX
	0x0005 00005 (popcount_test.go:70)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0005 00005 (popcount_test.go:70)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:71)	MOVQ	$0, CX
	0x0007 00007 (popcount_test.go:72)	MOVQ	$0, AX
	0x0009 00009 (popcount_test.go:72)	NOP
	0x0009 00009 (popcount_test.go:72)	MOVQ	112(DX), BX
	0x000d 00013 (popcount_test.go:72)	CMPQ	BX, AX
	0x0010 00016 (popcount_test.go:72)	JLE	$0, 166
	0x0016 00022 (popcount_test.go:73)	MOVQ	$1311768467294899695, BX
	0x0020 00032 (popcount_test.go:73)	MOVQ	BX, CX
	0x0023 00035 (popcount_test.go:73)	SHRQ	$1, BX
	0x0026 00038 (popcount_test.go:73)	MOVQ	$6148914691236517205, BP
	0x0030 00048 (popcount_test.go:73)	ANDQ	BP, BX
	0x0033 00051 (popcount_test.go:73)	MOVQ	CX, BP
	0x0036 00054 (popcount_test.go:73)	SUBQ	BX, BP
	0x0039 00057 (popcount_test.go:73)	MOVQ	$3689348814741910323, BX
	0x0043 00067 (popcount_test.go:73)	ANDQ	BP, BX
	0x0046 00070 (popcount_test.go:73)	SHRQ	$2, BP
	0x004a 00074 (popcount_test.go:73)	MOVQ	$3689348814741910323, R8
	0x0054 00084 (popcount_test.go:73)	ANDQ	R8, BP
	0x0057 00087 (popcount_test.go:73)	ADDQ	BP, BX
	0x005a 00090 (popcount_test.go:73)	MOVQ	BX, CX
	0x005d 00093 (popcount_test.go:73)	SHRQ	$4, BX
	0x0061 00097 (popcount_test.go:73)	ADDQ	CX, BX
	0x0064 00100 (popcount_test.go:73)	MOVQ	$1085102592571150095, BP
	0x006e 00110 (popcount_test.go:73)	ANDQ	BP, BX
	0x0071 00113 (popcount_test.go:73)	MOVQ	BX, CX
	0x0074 00116 (popcount_test.go:73)	SHRQ	$8, BX
	0x0078 00120 (popcount_test.go:73)	ADDQ	CX, BX
	0x007b 00123 (popcount_test.go:73)	MOVQ	BX, CX
	0x007e 00126 (popcount_test.go:73)	SHRQ	$16, BX
	0x0082 00130 (popcount_test.go:73)	ADDQ	CX, BX
	0x0085 00133 (popcount_test.go:73)	MOVQ	BX, CX
	0x0088 00136 (popcount_test.go:73)	SHRQ	$32, BX
	0x008c 00140 (popcount_test.go:73)	ADDQ	CX, BX
	0x008f 00143 (popcount_test.go:73)	ANDQ	$127, BX
	0x0093 00147 (popcount_test.go:73)	MOVQ	BX, CX
	0x0096 00150 (popcount_test.go:72)	INCQ	AX
	0x0099 00153 (popcount_test.go:72)	NOP
	0x0099 00153 (popcount_test.go:72)	MOVQ	112(DX), BX
	0x009d 00157 (popcount_test.go:72)	CMPQ	BX, AX
	0x00a0 00160 (popcount_test.go:72)	JGT	$0, 22
	0x00a6 00166 (popcount_test.go:75)	MOVQ	CX, "".benchResult(SB)
	0x00ad 00173 (popcount_test.go:76)	RET
	0x0000 48 8b 54 24 08 31 c9 31 c0 48 8b 5a 70 48 39 c3  H.T$.1.1.H.ZpH9.
	0x0010 0f 8e 90 00 00 00 48 bb ef cd ab 90 78 56 34 12  ......H.....xV4.
	0x0020 48 89 d9 48 d1 eb 48 bd 55 55 55 55 55 55 55 55  H..H..H.UUUUUUUU
	0x0030 48 21 eb 48 89 cd 48 29 dd 48 bb 33 33 33 33 33  H!.H..H).H.33333
	0x0040 33 33 33 48 21 eb 48 c1 ed 02 49 b8 33 33 33 33  333H!.H...I.3333
	0x0050 33 33 33 33 4c 21 c5 48 01 eb 48 89 d9 48 c1 eb  3333L!.H..H..H..
	0x0060 04 48 01 cb 48 bd 0f 0f 0f 0f 0f 0f 0f 0f 48 21  .H..H.........H!
	0x0070 eb 48 89 d9 48 c1 eb 08 48 01 cb 48 89 d9 48 c1  .H..H...H..H..H.
	0x0080 eb 10 48 01 cb 48 89 d9 48 c1 eb 20 48 01 cb 48  ..H..H..H.. H..H
	0x0090 83 e3 7f 48 89 d9 48 ff c0 48 8b 5a 70 48 39 c3  ...H..H..H.ZpH9.
	0x00a0 0f 8f 70 ff ff ff 48 89 0d 00 00 00 00 c3 cc cc  ..p...H.........
	rel 169+4 t=13 "".benchResult+0
"".BenchmarkPopCountByClearing t=1 size=96 value=0 args=0x8 locals=0x18
	0x0000 00000 (popcount_test.go:78)	TEXT	"".BenchmarkPopCountByClearing(SB), $24-8
	0x0000 00000 (popcount_test.go:78)	MOVQ	(TLS), CX
	0x0009 00009 (popcount_test.go:78)	CMPQ	SP, 16(CX)
	0x000d 00013 (popcount_test.go:78)	JLS	74
	0x000f 00015 (popcount_test.go:78)	SUBQ	$24, SP
	0x0013 00019 (popcount_test.go:78)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0013 00019 (popcount_test.go:78)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0013 00019 (popcount_test.go:79)	MOVQ	$0, AX
	0x0015 00021 (popcount_test.go:79)	MOVQ	"".b+32(FP), BP
	0x001a 00026 (popcount_test.go:79)	NOP
	0x001a 00026 (popcount_test.go:79)	MOVQ	112(BP), BX
	0x001e 00030 (popcount_test.go:79)	MOVQ	AX, "".i+16(SP)
	0x0023 00035 (popcount_test.go:79)	CMPQ	BX, AX
	0x0026 00038 (popcount_test.go:79)	JLE	$0, 69
	0x0028 00040 (popcount_test.go:80)	MOVQ	$1311768467294899695, BX
	0x0032 00050 (popcount_test.go:80)	MOVQ	BX, (SP)
	0x0036 00054 (popcount_test.go:80)	PCDATA	$0, $0
	0x0036 00054 (popcount_test.go:80)	CALL	"".PopCountByClearing(SB)
	0x003b 00059 (popcount_test.go:79)	MOVQ	"".i+16(SP), AX
	0x0040 00064 (popcount_test.go:79)	INCQ	AX
	0x0043 00067 (popcount_test.go:79)	NOP
	0x0043 00067 (popcount_test.go:79)	JMP	21
	0x0045 00069 (popcount_test.go:82)	ADDQ	$24, SP
	0x0049 00073 (popcount_test.go:82)	RET
	0x004a 00074 (popcount_test.go:82)	NOP
	0x004a 00074 (popcount_test.go:78)	CALL	runtime.morestack_noctxt(SB)
	0x004f 00079 (popcount_test.go:78)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 3b 48  dH..%....H;a.v;H
	0x0010 83 ec 18 31 c0 48 8b 6c 24 20 48 8b 5d 70 48 89  ...1.H.l$ H.]pH.
	0x0020 44 24 10 48 39 c3 7e 1d 48 bb ef cd ab 90 78 56  D$.H9.~.H.....xV
	0x0030 34 12 48 89 1c 24 e8 00 00 00 00 48 8b 44 24 10  4.H..$.....H.D$.
	0x0040 48 ff c0 eb d0 48 83 c4 18 c3 e8 00 00 00 00 eb  H....H..........
	0x0050 af cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc  ................
	rel 5+4 t=14 +0
	rel 55+4 t=6 "".PopCountByClearing+0
	rel 75+4 t=6 runtime.morestack_noctxt+0
"".BenchmarkPopCountByShifting t=1 size=96 value=0 args=0x8 locals=0x18
	0x0000 00000 (popcount_test.go:84)	TEXT	"".BenchmarkPopCountByShifting(SB), $24-8
	0x0000 00000 (popcount_test.go:84)	MOVQ	(TLS), CX
	0x0009 00009 (popcount_test.go:84)	CMPQ	SP, 16(CX)
	0x000d 00013 (popcount_test.go:84)	JLS	74
	0x000f 00015 (popcount_test.go:84)	SUBQ	$24, SP
	0x0013 00019 (popcount_test.go:84)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0013 00019 (popcount_test.go:84)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0013 00019 (popcount_test.go:85)	MOVQ	$0, AX
	0x0015 00021 (popcount_test.go:85)	MOVQ	"".b+32(FP), BP
	0x001a 00026 (popcount_test.go:85)	NOP
	0x001a 00026 (popcount_test.go:85)	MOVQ	112(BP), BX
	0x001e 00030 (popcount_test.go:85)	MOVQ	AX, "".i+16(SP)
	0x0023 00035 (popcount_test.go:85)	CMPQ	BX, AX
	0x0026 00038 (popcount_test.go:85)	JLE	$0, 69
	0x0028 00040 (popcount_test.go:86)	MOVQ	$1311768467294899695, BX
	0x0032 00050 (popcount_test.go:86)	MOVQ	BX, (SP)
	0x0036 00054 (popcount_test.go:86)	PCDATA	$0, $0
	0x0036 00054 (popcount_test.go:86)	CALL	"".PopCountByShifting(SB)
	0x003b 00059 (popcount_test.go:85)	MOVQ	"".i+16(SP), AX
	0x0040 00064 (popcount_test.go:85)	INCQ	AX
	0x0043 00067 (popcount_test.go:85)	NOP
	0x0043 00067 (popcount_test.go:85)	JMP	21
	0x0045 00069 (popcount_test.go:88)	ADDQ	$24, SP
	0x0049 00073 (popcount_test.go:88)	RET
	0x004a 00074 (popcount_test.go:88)	NOP
	0x004a 00074 (popcount_test.go:84)	CALL	runtime.morestack_noctxt(SB)
	0x004f 00079 (popcount_test.go:84)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 3b 48  dH..%....H;a.v;H
	0x0010 83 ec 18 31 c0 48 8b 6c 24 20 48 8b 5d 70 48 89  ...1.H.l$ H.]pH.
	0x0020 44 24 10 48 39 c3 7e 1d 48 bb ef cd ab 90 78 56  D$.H9.~.H.....xV
	0x0030 34 12 48 89 1c 24 e8 00 00 00 00 48 8b 44 24 10  4.H..$.....H.D$.
	0x0040 48 ff c0 eb d0 48 83 c4 18 c3 e8 00 00 00 00 eb  H....H..........
	0x0050 af cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc  ................
	rel 5+4 t=14 +0
	rel 55+4 t=6 "".PopCountByShifting+0
	rel 75+4 t=6 runtime.morestack_noctxt+0
"".BenchmarkEmptyFunction t=1 size=32 value=0 args=0x8 locals=0x0
	0x0000 00000 (popcount_test.go:90)	TEXT	"".BenchmarkEmptyFunction(SB), $0-8
	0x0000 00000 (popcount_test.go:90)	NOP
	0x0000 00000 (popcount_test.go:90)	NOP
	0x0000 00000 (popcount_test.go:90)	MOVQ	"".b+8(FP), CX
	0x0005 00005 (popcount_test.go:90)	FUNCDATA	$0, gclocals·87d20ce1b58390b294df80b886db78bf(SB)
	0x0005 00005 (popcount_test.go:90)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0005 00005 (popcount_test.go:91)	MOVQ	$0, AX
	0x0007 00007 (popcount_test.go:91)	NOP
	0x0007 00007 (popcount_test.go:91)	MOVQ	112(CX), BX
	0x000b 00011 (popcount_test.go:91)	CMPQ	BX, AX
	0x000e 00014 (popcount_test.go:91)	JLE	$0, 28
	0x0010 00016 (popcount_test.go:91)	INCQ	AX
	0x0013 00019 (popcount_test.go:91)	NOP
	0x0013 00019 (popcount_test.go:91)	MOVQ	112(CX), BX
	0x0017 00023 (popcount_test.go:91)	CMPQ	BX, AX
	0x001a 00026 (popcount_test.go:91)	JGT	$0, 16
	0x001c 00028 (popcount_test.go:94)	RET
	0x0000 48 8b 4c 24 08 31 c0 48 8b 59 70 48 39 c3 7e 0c  H.L$.1.H.YpH9.~.
	0x0010 48 ff c0 48 8b 59 70 48 39 c3 7f f4 c3 cc cc cc  H..H.YpH9.......
"".empty t=1 size=16 value=0 args=0x0 locals=0x0
	0x0000 00000 (popcount_test.go:96)	TEXT	"".empty(SB), $0-0
	0x0000 00000 (popcount_test.go:96)	NOP
	0x0000 00000 (popcount_test.go:96)	NOP
	0x0000 00000 (popcount_test.go:96)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (popcount_test.go:96)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (popcount_test.go:97)	RET
	0x0000 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc  ................
"".init t=1 size=80 value=0 args=0x0 locals=0x0
	0x0000 00000 (popcount_test.go:97)	TEXT	"".init(SB), $0-0
	0x0000 00000 (popcount_test.go:97)	MOVQ	(TLS), CX
	0x0009 00009 (popcount_test.go:97)	CMPQ	SP, 16(CX)
	0x000d 00013 (popcount_test.go:97)	JLS	72
	0x000f 00015 (popcount_test.go:97)	NOP
	0x000f 00015 (popcount_test.go:97)	NOP
	0x000f 00015 (popcount_test.go:97)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount_test.go:97)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (popcount_test.go:97)	MOVBQZX	"".initdone·(SB), BX
	0x0016 00022 (popcount_test.go:97)	CMPB	BL, $0
	0x0019 00025 (popcount_test.go:97)	JEQ	47
	0x001b 00027 (popcount_test.go:97)	MOVBQZX	"".initdone·(SB), BX
	0x0022 00034 (popcount_test.go:97)	CMPB	BL, $2
	0x0025 00037 (popcount_test.go:97)	JNE	40
	0x0027 00039 (popcount_test.go:97)	RET
	0x0028 00040 (popcount_test.go:97)	PCDATA	$0, $0
	0x0028 00040 (popcount_test.go:97)	CALL	runtime.throwinit(SB)
	0x002d 00045 (popcount_test.go:97)	UNDEF
	0x002f 00047 (popcount_test.go:97)	MOVB	$1, "".initdone·(SB)
	0x0036 00054 (popcount_test.go:97)	PCDATA	$0, $0
	0x0036 00054 (popcount_test.go:97)	CALL	testing.init(SB)
	0x003b 00059 (popcount_test.go:97)	PCDATA	$0, $0
	0x003b 00059 (popcount_test.go:97)	CALL	github.com/tooru/gopl/ch11/p06popcount.init(SB)
	0x0040 00064 (popcount_test.go:97)	MOVB	$2, "".initdone·(SB)
	0x0047 00071 (popcount_test.go:97)	RET
	0x0048 00072 (popcount_test.go:97)	NOP
	0x0048 00072 (popcount_test.go:97)	CALL	runtime.morestack_noctxt(SB)
	0x004d 00077 (popcount_test.go:97)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 39 0f  dH..%....H;a.v9.
	0x0010 b6 1d 00 00 00 00 80 fb 00 74 14 0f b6 1d 00 00  .........t......
	0x0020 00 00 80 fb 02 75 01 c3 e8 00 00 00 00 0f 0b c6  .....u..........
	0x0030 05 00 00 00 00 01 e8 00 00 00 00 e8 00 00 00 00  ................
	0x0040 c6 05 00 00 00 00 02 c3 e8 00 00 00 00 eb b1 cc  ................
	rel 5+4 t=14 +0
	rel 18+4 t=13 "".initdone·+0
	rel 30+4 t=13 "".initdone·+0
	rel 41+4 t=6 runtime.throwinit+0
	rel 49+4 t=13 "".initdone·+-1
	rel 55+4 t=6 testing.init+0
	rel 60+4 t=6 github.com/tooru/gopl/ch11/p06popcount.init+0
	rel 66+4 t=13 "".initdone·+-1
	rel 73+4 t=6 runtime.morestack_noctxt+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·23e8278e2b69a3a75fa59b23c49ed6ad t=8 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·23e8278e2b69a3a75fa59b23c49ed6ad t=8 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·23e8278e2b69a3a75fa59b23c49ed6ad t=8 dupok size=12 value=0
	0x0000 01 00 00 00 02 00 00 00 00 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·87d20ce1b58390b294df80b886db78bf t=8 dupok size=12 value=0
	0x0000 01 00 00 00 01 00 00 00 01 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·87d20ce1b58390b294df80b886db78bf t=8 dupok size=12 value=0
	0x0000 01 00 00 00 01 00 00 00 01 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·87d20ce1b58390b294df80b886db78bf t=8 dupok size=12 value=0
	0x0000 01 00 00 00 01 00 00 00 01 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·87d20ce1b58390b294df80b886db78bf t=8 dupok size=12 value=0
	0x0000 01 00 00 00 01 00 00 00 01 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·87d20ce1b58390b294df80b886db78bf t=8 dupok size=12 value=0
	0x0000 01 00 00 00 01 00 00 00 01 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·87d20ce1b58390b294df80b886db78bf t=8 dupok size=12 value=0
	0x0000 01 00 00 00 01 00 00 00 01 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·87d20ce1b58390b294df80b886db78bf t=8 dupok size=12 value=0
	0x0000 01 00 00 00 01 00 00 00 01 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
"".benchResult t=31 size=8 value=0
"".initdone· t=31 size=1 value=0
"".BitCount·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BitCount+0
"".PopCountByClearing·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".PopCountByClearing+0
"".PopCountByShifting·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".PopCountByShifting+0
"".BenchmarkPopCount·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkPopCount+0
"".BenchmarkPopCount2·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkPopCount2+0
"".BenchmarkBitCount·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkBitCount+0
"".BenchmarkBitCount2·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkBitCount2+0
"".BenchmarkPopCountByClearing·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkPopCountByClearing+0
"".BenchmarkPopCountByShifting·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkPopCountByShifting+0
"".BenchmarkEmptyFunction·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".BenchmarkEmptyFunction+0
"".empty·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".empty+0
"".init·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init+0
go.string.hdr."testing" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."testing"+0
go.string."testing" t=8 dupok size=8 value=0
	0x0000 74 65 73 74 69 6e 67 00                          testing.
go.importpath.testing. t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."testing"+0
go.string.hdr."github.com/tooru/gopl/ch11/p06popcount" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 26 00 00 00 00 00 00 00  ........&.......
	rel 0+8 t=1 go.string."github.com/tooru/gopl/ch11/p06popcount"+0
go.string."github.com/tooru/gopl/ch11/p06popcount" t=8 dupok size=40 value=0
	0x0000 67 69 74 68 75 62 2e 63 6f 6d 2f 74 6f 6f 72 75  github.com/tooru
	0x0010 2f 67 6f 70 6c 2f 63 68 31 31 2f 70 30 36 70 6f  /gopl/ch11/p06po
	0x0020 70 63 6f 75 6e 74 00                             pcount.
go.importpath.github.com/tooru/gopl/ch11/p06popcount. t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 26 00 00 00 00 00 00 00  ........&.......
	rel 0+8 t=1 go.string."github.com/tooru/gopl/ch11/p06popcount"+0
# testmain
"".matchString t=1 size=384 value=0 args=0x38 locals=0x28
	0x0000 00000 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	TEXT	"".matchString(SB), $40-56
	0x0000 00000 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	(TLS), CX
	0x0009 00009 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	CMPQ	SP, 16(CX)
	0x000d 00013 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	JLS	363
	0x0013 00019 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	SUBQ	$40, SP
	0x0017 00023 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	"".pat+56(FP), AX
	0x001c 00028 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	FUNCDATA	$0, gclocals·e005ea8c128fdd2cbe053ee4ba8a4b6e(SB)
	0x001c 00028 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001c 00028 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	$0, BX
	0x001e 00030 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	$0, BX
	0x0020 00032 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	BX, "".err+88(FP)
	0x0025 00037 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVQ	BX, "".err+96(FP)
	0x002a 00042 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	MOVB	$0, "".result+80(FP)
	0x002f 00047 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".matchRe(SB), BX
	0x0036 00054 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	$0, BP
	0x0038 00056 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	CMPQ	BX, BP
	0x003b 00059 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	JEQ	197
	0x0041 00065 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".matchPat+8(SB), BX
	0x0048 00072 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	CMPQ	BX, AX
	0x004b 00075 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	JNE	197
	0x004d 00077 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".matchPat(SB), BP
	0x0054 00084 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	BP, (SP)
	0x0058 00088 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".matchPat+8(SB), BP
	0x005f 00095 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	BP, 8(SP)
	0x0064 00100 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".pat+48(FP), BP
	0x0069 00105 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	BP, 16(SP)
	0x006e 00110 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	AX, 24(SP)
	0x0073 00115 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	PCDATA	$0, $0
	0x0073 00115 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	CALL	runtime.eqstring(SB)
	0x0078 00120 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVQ	"".pat+56(FP), AX
	0x007d 00125 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	MOVBQZX	32(SP), BX
	0x0082 00130 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	CMPB	BL, $0
	0x0085 00133 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:52)	JEQ	197
	0x0087 00135 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	"".matchRe(SB), BX
	0x008e 00142 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	BX, (SP)
	0x0092 00146 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	"".str+64(FP), BX
	0x0097 00151 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	BX, 8(SP)
	0x009c 00156 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	"".str+72(FP), BX
	0x00a1 00161 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	BX, 16(SP)
	0x00a6 00166 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	PCDATA	$0, $0
	0x00a6 00166 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	CALL	regexp.(*Regexp).MatchString(SB)
	0x00ab 00171 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVBQZX	24(SP), BX
	0x00b0 00176 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVB	BL, "".result+80(FP)
	0x00b4 00180 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	$0, BX
	0x00b6 00182 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	BX, "".err+88(FP)
	0x00bb 00187 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	MOVQ	BX, "".err+96(FP)
	0x00c0 00192 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	ADDQ	$40, SP
	0x00c4 00196 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:59)	RET
	0x00c5 00197 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	MOVQ	AX, "".matchPat+8(SB)
	0x00cc 00204 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	MOVQ	"".pat+48(FP), BX
	0x00d1 00209 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	CMPB	runtime.writeBarrier(SB), $0
	0x00d8 00216 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	JNE	$0, 337
	0x00da 00218 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	MOVQ	BX, "".matchPat(SB)
	0x00e1 00225 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	"".matchPat(SB), BX
	0x00e8 00232 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	BX, (SP)
	0x00ec 00236 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	"".matchPat+8(SB), BX
	0x00f3 00243 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	BX, 8(SP)
	0x00f8 00248 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	PCDATA	$0, $0
	0x00f8 00248 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	CALL	regexp.Compile(SB)
	0x00fd 00253 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	16(SP), AX
	0x0102 00258 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	24(SP), BX
	0x0107 00263 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	BX, "".err+88(FP)
	0x010c 00268 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	32(SP), BX
	0x0111 00273 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	BX, "".err+96(FP)
	0x0116 00278 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	CMPB	runtime.writeBarrier(SB), $0
	0x011d 00285 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	JNE	$0, 314
	0x011f 00287 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	AX, "".matchRe(SB)
	0x0126 00294 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:55)	MOVQ	"".err+88(FP), BX
	0x012b 00299 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:55)	CMPQ	BX, $0
	0x012f 00303 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:55)	JEQ	135
	0x0135 00309 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)	ADDQ	$40, SP
	0x0139 00313 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:56)	RET
	0x013a 00314 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	LEAQ	"".matchRe(SB), BP
	0x0141 00321 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	BP, (SP)
	0x0145 00325 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	MOVQ	AX, 8(SP)
	0x014a 00330 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	PCDATA	$0, $1
	0x014a 00330 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	CALL	runtime.writebarrierptr(SB)
	0x014f 00335 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:55)	JMP	294
	0x0151 00337 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	LEAQ	"".matchPat(SB), BP
	0x0158 00344 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	MOVQ	BP, (SP)
	0x015c 00348 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	MOVQ	BX, 8(SP)
	0x0161 00353 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	PCDATA	$0, $0
	0x0161 00353 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:53)	CALL	runtime.writebarrierptr(SB)
	0x0166 00358 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	JMP	225
	0x016b 00363 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:54)	NOP
	0x016b 00363 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	CALL	runtime.morestack_noctxt(SB)
	0x0170 00368 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:51)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 58  dH..%....H;a...X
	0x0010 01 00 00 48 83 ec 28 48 8b 44 24 38 31 db 31 db  ...H..(H.D$81.1.
	0x0020 48 89 5c 24 58 48 89 5c 24 60 c6 44 24 50 00 48  H.\$XH.\$`.D$P.H
	0x0030 8b 1d 00 00 00 00 31 ed 48 39 eb 0f 84 84 00 00  ......1.H9......
	0x0040 00 48 8b 1d 00 00 00 00 48 39 c3 75 78 48 8b 2d  .H......H9.uxH.-
	0x0050 00 00 00 00 48 89 2c 24 48 8b 2d 00 00 00 00 48  ....H.,$H.-....H
	0x0060 89 6c 24 08 48 8b 6c 24 30 48 89 6c 24 10 48 89  .l$.H.l$0H.l$.H.
	0x0070 44 24 18 e8 00 00 00 00 48 8b 44 24 38 0f b6 5c  D$......H.D$8..\
	0x0080 24 20 80 fb 00 74 3e 48 8b 1d 00 00 00 00 48 89  $ ...t>H......H.
	0x0090 1c 24 48 8b 5c 24 40 48 89 5c 24 08 48 8b 5c 24  .$H.\$@H.\$.H.\$
	0x00a0 48 48 89 5c 24 10 e8 00 00 00 00 0f b6 5c 24 18  HH.\$........\$.
	0x00b0 88 5c 24 50 31 db 48 89 5c 24 58 48 89 5c 24 60  .\$P1.H.\$XH.\$`
	0x00c0 48 83 c4 28 c3 48 89 05 00 00 00 00 48 8b 5c 24  H..(.H......H.\$
	0x00d0 30 80 3d 00 00 00 00 00 75 77 48 89 1d 00 00 00  0.=.....uwH.....
	0x00e0 00 48 8b 1d 00 00 00 00 48 89 1c 24 48 8b 1d 00  .H......H..$H...
	0x00f0 00 00 00 48 89 5c 24 08 e8 00 00 00 00 48 8b 44  ...H.\$......H.D
	0x0100 24 10 48 8b 5c 24 18 48 89 5c 24 58 48 8b 5c 24  $.H.\$.H.\$XH.\$
	0x0110 20 48 89 5c 24 60 80 3d 00 00 00 00 00 75 1b 48   H.\$`.=.....u.H
	0x0120 89 05 00 00 00 00 48 8b 5c 24 58 48 83 fb 00 0f  ......H.\$XH....
	0x0130 84 52 ff ff ff 48 83 c4 28 c3 48 8d 2d 00 00 00  .R...H..(.H.-...
	0x0140 00 48 89 2c 24 48 89 44 24 08 e8 00 00 00 00 eb  .H.,$H.D$.......
	0x0150 d5 48 8d 2d 00 00 00 00 48 89 2c 24 48 89 5c 24  .H.-....H.,$H.\$
	0x0160 08 e8 00 00 00 00 e9 76 ff ff ff e8 00 00 00 00  .......v........
	0x0170 e9 8b fe ff ff cc cc cc cc cc cc cc cc cc cc cc  ................
	rel 5+4 t=14 +0
	rel 50+4 t=13 "".matchRe+0
	rel 68+4 t=13 "".matchPat+8
	rel 80+4 t=13 "".matchPat+0
	rel 91+4 t=13 "".matchPat+8
	rel 116+4 t=6 runtime.eqstring+0
	rel 138+4 t=13 "".matchRe+0
	rel 167+4 t=6 regexp.(*Regexp).MatchString+0
	rel 200+4 t=13 "".matchPat+8
	rel 211+4 t=13 runtime.writeBarrier+-1
	rel 221+4 t=13 "".matchPat+0
	rel 228+4 t=13 "".matchPat+0
	rel 239+4 t=13 "".matchPat+8
	rel 249+4 t=6 regexp.Compile+0
	rel 280+4 t=13 runtime.writeBarrier+-1
	rel 290+4 t=13 "".matchRe+0
	rel 317+4 t=13 "".matchRe+0
	rel 331+4 t=6 runtime.writebarrierptr+0
	rel 340+4 t=13 "".matchPat+0
	rel 354+4 t=6 runtime.writebarrierptr+0
	rel 364+4 t=6 runtime.morestack_noctxt+0
"".main t=1 size=320 value=0 args=0x0 locals=0xf0
	0x0000 00000 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	TEXT	"".main(SB), $240-0
	0x0000 00000 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	MOVQ	(TLS), CX
	0x0009 00009 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	LEAQ	-112(SP), AX
	0x000e 00014 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	CMPQ	AX, 16(CX)
	0x0012 00018 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	JLS	301
	0x0018 00024 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	SUBQ	$240, SP
	0x001f 00031 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001f 00031 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	FUNCDATA	$1, gclocals·94afc8ed222301d39438d08ea66ea8e4(SB)
	0x001f 00031 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".tests(SB), R14
	0x0026 00038 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".tests+8(SB), R13
	0x002d 00045 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".tests+16(SB), R12
	0x0034 00052 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".benchmarks(SB), R11
	0x003b 00059 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".benchmarks+8(SB), R10
	0x0042 00066 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".benchmarks+16(SB), R9
	0x0049 00073 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".examples(SB), R8
	0x0050 00080 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".examples+8(SB), SI
	0x0057 00087 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	"".examples+16(SB), DX
	0x005e 00094 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	LEAQ	"".matchString·f(SB), CX
	0x0065 00101 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R14, "".autotmp_0003+136(SP)
	0x006d 00109 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R13, "".autotmp_0003+144(SP)
	0x0075 00117 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R12, "".autotmp_0003+152(SP)
	0x007d 00125 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R11, "".autotmp_0004+112(SP)
	0x0082 00130 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R10, "".autotmp_0004+120(SP)
	0x0087 00135 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R9, "".autotmp_0004+128(SP)
	0x008f 00143 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R8, "".autotmp_0005+88(SP)
	0x0094 00148 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	SI, "".autotmp_0005+96(SP)
	0x0099 00153 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	DX, "".autotmp_0005+104(SP)
	0x009e 00158 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	LEAQ	"".autotmp_0008+160(SP), DI
	0x00a6 00166 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	XORPS	X0, X0
	0x00a9 00169 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	ADDQ	$-48, DI
	0x00ad 00173 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	DUFFZERO	$277
	0x00b2 00178 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	LEAQ	"".autotmp_0008+160(SP), BX
	0x00ba 00186 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	NOP
	0x00ba 00186 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	CX, (BX)
	0x00bd 00189 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	NOP
	0x00bd 00189 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R14, testing.tests·3+16(SP)
	0x00c2 00194 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R14, 8(BX)
	0x00c6 00198 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R13, testing.tests·3+24(SP)
	0x00cb 00203 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R13, 16(BX)
	0x00cf 00207 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R12, testing.tests·3+32(SP)
	0x00d4 00212 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R12, 24(BX)
	0x00d8 00216 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	NOP
	0x00d8 00216 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R11, testing.benchmarks·4+64(SP)
	0x00dd 00221 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R11, 32(BX)
	0x00e1 00225 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R10, testing.benchmarks·4+72(SP)
	0x00e6 00230 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R10, 40(BX)
	0x00ea 00234 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R9, testing.benchmarks·4+80(SP)
	0x00ef 00239 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R9, 48(BX)
	0x00f3 00243 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	NOP
	0x00f3 00243 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R8, testing.examples·5+40(SP)
	0x00f8 00248 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	R8, 56(BX)
	0x00fc 00252 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	SI, testing.examples·5+48(SP)
	0x0101 00257 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	SI, 64(BX)
	0x0105 00261 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	DX, testing.examples·5+56(SP)
	0x010a 00266 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:66)	MOVQ	DX, 72(BX)
	0x010e 00270 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	MOVQ	BX, (SP)
	0x0112 00274 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	PCDATA	$0, $1
	0x0112 00274 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	CALL	testing.(*M).Run(SB)
	0x0117 00279 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	MOVQ	8(SP), BX
	0x011c 00284 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	MOVQ	BX, (SP)
	0x0120 00288 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	PCDATA	$0, $1
	0x0120 00288 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	CALL	os.Exit(SB)
	0x0125 00293 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:68)	NOP
	0x0125 00293 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	ADDQ	$240, SP
	0x012c 00300 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	RET
	0x012d 00301 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	NOP
	0x012d 00301 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	CALL	runtime.morestack_noctxt(SB)
	0x0132 00306 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:64)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 8d 44 24 90 48 3b  dH..%....H.D$.H;
	0x0010 41 10 0f 86 15 01 00 00 48 81 ec f0 00 00 00 4c  A.......H......L
	0x0020 8b 35 00 00 00 00 4c 8b 2d 00 00 00 00 4c 8b 25  .5....L.-....L.%
	0x0030 00 00 00 00 4c 8b 1d 00 00 00 00 4c 8b 15 00 00  ....L......L....
	0x0040 00 00 4c 8b 0d 00 00 00 00 4c 8b 05 00 00 00 00  ..L......L......
	0x0050 48 8b 35 00 00 00 00 48 8b 15 00 00 00 00 48 8d  H.5....H......H.
	0x0060 0d 00 00 00 00 4c 89 b4 24 88 00 00 00 4c 89 ac  .....L..$....L..
	0x0070 24 90 00 00 00 4c 89 a4 24 98 00 00 00 4c 89 5c  $....L..$....L.\
	0x0080 24 70 4c 89 54 24 78 4c 89 8c 24 80 00 00 00 4c  $pL.T$xL..$....L
	0x0090 89 44 24 58 48 89 74 24 60 48 89 54 24 68 48 8d  .D$XH.t$`H.T$hH.
	0x00a0 bc 24 a0 00 00 00 0f 57 c0 48 83 c7 d0 e8 00 00  .$.....W.H......
	0x00b0 00 00 48 8d 9c 24 a0 00 00 00 48 89 0b 4c 89 74  ..H..$....H..L.t
	0x00c0 24 10 4c 89 73 08 4c 89 6c 24 18 4c 89 6b 10 4c  $.L.s.L.l$.L.k.L
	0x00d0 89 64 24 20 4c 89 63 18 4c 89 5c 24 40 4c 89 5b  .d$ L.c.L.\$@L.[
	0x00e0 20 4c 89 54 24 48 4c 89 53 28 4c 89 4c 24 50 4c   L.T$HL.S(L.L$PL
	0x00f0 89 4b 30 4c 89 44 24 28 4c 89 43 38 48 89 74 24  .K0L.D$(L.C8H.t$
	0x0100 30 48 89 73 40 48 89 54 24 38 48 89 53 48 48 89  0H.s@H.T$8H.SHH.
	0x0110 1c 24 e8 00 00 00 00 48 8b 5c 24 08 48 89 1c 24  .$.....H.\$.H..$
	0x0120 e8 00 00 00 00 48 81 c4 f0 00 00 00 c3 e8 00 00  .....H..........
	0x0130 00 00 e9 c9 fe ff ff cc cc cc cc cc cc cc cc cc  ................
	rel 5+4 t=14 +0
	rel 34+4 t=13 "".tests+0
	rel 41+4 t=13 "".tests+8
	rel 48+4 t=13 "".tests+16
	rel 55+4 t=13 "".benchmarks+0
	rel 62+4 t=13 "".benchmarks+8
	rel 69+4 t=13 "".benchmarks+16
	rel 76+4 t=13 "".examples+0
	rel 83+4 t=13 "".examples+8
	rel 90+4 t=13 "".examples+16
	rel 97+4 t=13 "".matchString·f+0
	rel 174+4 t=6 runtime.duffzero+277
	rel 275+4 t=6 testing.(*M).Run+0
	rel 289+4 t=6 os.Exit+0
	rel 302+4 t=6 runtime.morestack_noctxt+0
"".init t=1 size=96 value=0 args=0x0 locals=0x0
	0x0000 00000 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	TEXT	"".init(SB), $0-0
	0x0000 00000 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	MOVQ	(TLS), CX
	0x0009 00009 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	CMPQ	SP, 16(CX)
	0x000d 00013 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	JLS	87
	0x000f 00015 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	NOP
	0x000f 00015 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	NOP
	0x000f 00015 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	MOVBQZX	"".initdone·(SB), BX
	0x0016 00022 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	CMPB	BL, $0
	0x0019 00025 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	JEQ	47
	0x001b 00027 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	MOVBQZX	"".initdone·(SB), BX
	0x0022 00034 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	CMPB	BL, $2
	0x0025 00037 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	JNE	40
	0x0027 00039 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	RET
	0x0028 00040 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	PCDATA	$0, $0
	0x0028 00040 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	CALL	runtime.throwinit(SB)
	0x002d 00045 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	UNDEF
	0x002f 00047 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	MOVB	$1, "".initdone·(SB)
	0x0036 00054 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	PCDATA	$0, $0
	0x0036 00054 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	CALL	os.init(SB)
	0x003b 00059 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	PCDATA	$0, $0
	0x003b 00059 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	CALL	regexp.init(SB)
	0x0040 00064 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	PCDATA	$0, $0
	0x0040 00064 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	CALL	testing.init(SB)
	0x0045 00069 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	PCDATA	$0, $0
	0x0045 00069 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	CALL	github.com/tooru/gopl/ch11/p06popcount.init(SB)
	0x004a 00074 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	PCDATA	$0, $0
	0x004a 00074 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	CALL	github.com/tooru/gopl/ch11/p06popcount_test.init(SB)
	0x004f 00079 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	MOVB	$2, "".initdone·(SB)
	0x0056 00086 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	RET
	0x0057 00087 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	NOP
	0x0057 00087 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	CALL	runtime.morestack_noctxt(SB)
	0x005c 00092 (/tmp/go-build811235917/github.com/tooru/gopl/ch11/p06popcount/_test/_testmain.go:70)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 48 0f  dH..%....H;a.vH.
	0x0010 b6 1d 00 00 00 00 80 fb 00 74 14 0f b6 1d 00 00  .........t......
	0x0020 00 00 80 fb 02 75 01 c3 e8 00 00 00 00 0f 0b c6  .....u..........
	0x0030 05 00 00 00 00 01 e8 00 00 00 00 e8 00 00 00 00  ................
	0x0040 e8 00 00 00 00 e8 00 00 00 00 e8 00 00 00 00 c6  ................
	0x0050 05 00 00 00 00 02 c3 e8 00 00 00 00 eb a2 cc cc  ................
	rel 5+4 t=14 +0
	rel 18+4 t=13 "".initdone·+0
	rel 30+4 t=13 "".initdone·+0
	rel 41+4 t=6 runtime.throwinit+0
	rel 49+4 t=13 "".initdone·+-1
	rel 55+4 t=6 os.init+0
	rel 60+4 t=6 regexp.init+0
	rel 65+4 t=6 testing.init+0
	rel 70+4 t=6 github.com/tooru/gopl/ch11/p06popcount.init+0
	rel 75+4 t=6 github.com/tooru/gopl/ch11/p06popcount_test.init+0
	rel 81+4 t=13 "".initdone·+-1
	rel 88+4 t=6 runtime.morestack_noctxt+0
gclocals·69c1753bd5f81501d95132d08af04464 t=8 dupok size=8 value=0
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·e005ea8c128fdd2cbe053ee4ba8a4b6e t=8 dupok size=16 value=0
	0x0000 02 00 00 00 07 00 00 00 05 00 00 00 65 00 00 00  ............e...
gclocals·94afc8ed222301d39438d08ea66ea8e4 t=8 dupok size=16 value=0
	0x0000 02 00 00 00 1c 00 00 00 00 00 00 00 00 00 4c 02  ..............L.
gclocals·69c1753bd5f81501d95132d08af04464 t=8 dupok size=8 value=0
	0x0000 02 00 00 00 00 00 00 00                          ........
go.string.hdr."BenchmarkPopCount" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkPopCount"+0
go.string."BenchmarkPopCount" t=8 dupok size=24 value=0
	0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
	0x0010 74 00                                            t.
go.string.hdr."BenchmarkPopCount2" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 12 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkPopCount2"+0
go.string."BenchmarkPopCount2" t=8 dupok size=24 value=0
	0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
	0x0010 74 32 00                                         t2.
go.string.hdr."BenchmarkBitCount" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkBitCount"+0
go.string."BenchmarkBitCount" t=8 dupok size=24 value=0
	0x0000 42 65 6e 63 68 6d 61 72 6b 42 69 74 43 6f 75 6e  BenchmarkBitCoun
	0x0010 74 00                                            t.
go.string.hdr."BenchmarkBitCount2" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 12 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkBitCount2"+0
go.string."BenchmarkBitCount2" t=8 dupok size=24 value=0
	0x0000 42 65 6e 63 68 6d 61 72 6b 42 69 74 43 6f 75 6e  BenchmarkBitCoun
	0x0010 74 32 00                                         t2.
go.string.hdr."BenchmarkPopCountByClearing" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 1b 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkPopCountByClearing"+0
go.string."BenchmarkPopCountByClearing" t=8 dupok size=32 value=0
	0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
	0x0010 74 42 79 43 6c 65 61 72 69 6e 67 00              tByClearing.
go.string.hdr."BenchmarkPopCountByShifting" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 1b 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkPopCountByShifting"+0
go.string."BenchmarkPopCountByShifting" t=8 dupok size=32 value=0
	0x0000 42 65 6e 63 68 6d 61 72 6b 50 6f 70 43 6f 75 6e  BenchmarkPopCoun
	0x0010 74 42 79 53 68 69 66 74 69 6e 67 00              tByShifting.
go.string.hdr."BenchmarkEmptyFunction" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."BenchmarkEmptyFunction"+0
go.string."BenchmarkEmptyFunction" t=8 dupok size=24 value=0
	0x0000 42 65 6e 63 68 6d 61 72 6b 45 6d 70 74 79 46 75  BenchmarkEmptyFu
	0x0010 6e 63 74 69 6f 6e 00                             nction.
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
"".tests t=30 size=24 value=0
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".statictmp_0009+0
"".benchmarks t=30 size=24 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	0x0010 07 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".statictmp_0010+0
"".examples t=30 size=24 value=0
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".statictmp_0011+0
"".matchPat t=30 size=16 value=0
"".matchRe t=30 size=8 value=0
"".statictmp_0009 t=31 size=0 value=0
"".statictmp_0010 t=30 size=168 value=0
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
"".statictmp_0011 t=31 size=0 value=0
"".initdone· t=31 size=1 value=0
"".matchString·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".matchString+0
"".main·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".main+0
"".init·f t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init+0
runtime.gcbits.01 t=8 dupok size=1 value=0
	0x0000 01                                               .
go.string.hdr."func(string, string) (bool, error)" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 22 00 00 00 00 00 00 00  ........".......
	rel 0+8 t=1 go.string."func(string, string) (bool, error)"+0
go.string."func(string, string) (bool, error)" t=8 dupok size=40 value=0
	0x0000 66 75 6e 63 28 73 74 72 69 6e 67 2c 20 73 74 72  func(string, str
	0x0010 69 6e 67 29 20 28 62 6f 6f 6c 2c 20 65 72 72 6f  ing) (bool, erro
	0x0020 72 29 00                                         r).
type.func(string, string) (bool, error) t=8 dupok size=152 value=0
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 42 80 37 23 00 08 08 33 00 00 00 00 00 00 00 00  B.7#...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0070 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+192
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+8 t=1 go.string.hdr."func(string, string) (bool, error)"+0
	rel 56+8 t=1 go.weak.type.*func(string, string) (bool, error)+0
	rel 72+8 t=1 type.func(string, string) (bool, error)+120
	rel 96+8 t=1 type.func(string, string) (bool, error)+136
	rel 120+8 t=1 type.string+0
	rel 128+8 t=1 type.string+0
	rel 136+8 t=1 type.bool+0
	rel 144+8 t=1 type.error+0
go.typelink.func(string, string) (bool, error)	func(string, string) (bool, error) t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.func(string, string) (bool, error)+0
go.string.hdr."[]testing.InternalTest" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."[]testing.InternalTest"+0
go.string."[]testing.InternalTest" t=8 dupok size=24 value=0
	0x0000 5b 5d 74 65 73 74 69 6e 67 2e 49 6e 74 65 72 6e  []testing.Intern
	0x0010 61 6c 54 65 73 74 00                             alTest.
type.[]testing.InternalTest t=8 dupok size=72 value=0
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 9b 85 d1 58 00 08 08 17 00 00 00 00 00 00 00 00  ...X............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+272
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+8 t=1 go.string.hdr."[]testing.InternalTest"+0
	rel 56+8 t=1 go.weak.type.*[]testing.InternalTest+0
	rel 64+8 t=1 type.testing.InternalTest+0
go.typelink.[]testing.InternalTest	[]testing.InternalTest t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.[]testing.InternalTest+0
go.string.hdr."[]testing.InternalBenchmark" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 1b 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."[]testing.InternalBenchmark"+0
go.string."[]testing.InternalBenchmark" t=8 dupok size=32 value=0
	0x0000 5b 5d 74 65 73 74 69 6e 67 2e 49 6e 74 65 72 6e  []testing.Intern
	0x0010 61 6c 42 65 6e 63 68 6d 61 72 6b 00              alBenchmark.
type.[]testing.InternalBenchmark t=8 dupok size=72 value=0
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 27 c0 28 56 00 08 08 17 00 00 00 00 00 00 00 00  '.(V............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+272
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+8 t=1 go.string.hdr."[]testing.InternalBenchmark"+0
	rel 56+8 t=1 go.weak.type.*[]testing.InternalBenchmark+0
	rel 64+8 t=1 type.testing.InternalBenchmark+0
go.typelink.[]testing.InternalBenchmark	[]testing.InternalBenchmark t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.[]testing.InternalBenchmark+0
go.string.hdr."[]testing.InternalExample" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 19 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."[]testing.InternalExample"+0
go.string."[]testing.InternalExample" t=8 dupok size=32 value=0
	0x0000 5b 5d 74 65 73 74 69 6e 67 2e 49 6e 74 65 72 6e  []testing.Intern
	0x0010 61 6c 45 78 61 6d 70 6c 65 00                    alExample.
type.[]testing.InternalExample t=8 dupok size=72 value=0
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 6f c1 a3 4a 00 08 08 17 00 00 00 00 00 00 00 00  o..J............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+272
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+8 t=1 go.string.hdr."[]testing.InternalExample"+0
	rel 56+8 t=1 go.weak.type.*[]testing.InternalExample+0
	rel 64+8 t=1 type.testing.InternalExample+0
go.typelink.[]testing.InternalExample	[]testing.InternalExample t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.[]testing.InternalExample+0
runtime.gcbits. t=8 dupok size=0 value=0
go.string.hdr."[0]testing.InternalTest" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 17 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."[0]testing.InternalTest"+0
go.string."[0]testing.InternalTest" t=8 dupok size=24 value=0
	0x0000 5b 30 5d 74 65 73 74 69 6e 67 2e 49 6e 74 65 72  [0]testing.Inter
	0x0010 6e 61 6c 54 65 73 74 00                          nalTest.
type.[0]testing.InternalTest t=8 dupok size=88 value=0
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 4f 5b 8d 04 00 08 08 91 00 00 00 00 00 00 00 00  O[..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+128
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+8 t=1 go.string.hdr."[0]testing.InternalTest"+0
	rel 56+8 t=1 go.weak.type.*[0]testing.InternalTest+0
	rel 64+8 t=1 type.testing.InternalTest+0
	rel 72+8 t=1 type.[]testing.InternalTest+0
go.typelink.[0]testing.InternalTest	[0]testing.InternalTest t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.[0]testing.InternalTest+0
runtime.gcbits.6ddb16 t=8 dupok size=3 value=0
	0x0000 6d db 16                                         m..
go.string.hdr."[7]testing.InternalBenchmark" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 1c 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."[7]testing.InternalBenchmark"+0
go.string."[7]testing.InternalBenchmark" t=8 dupok size=32 value=0
	0x0000 5b 37 5d 74 65 73 74 69 6e 67 2e 49 6e 74 65 72  [7]testing.Inter
	0x0010 6e 61 6c 42 65 6e 63 68 6d 61 72 6b 00           nalBenchmark.
type.[7]testing.InternalBenchmark t=8 dupok size=88 value=0
	0x0000 a8 00 00 00 00 00 00 00 a8 00 00 00 00 00 00 00  ................
	0x0010 24 27 1c c1 00 08 08 11 00 00 00 00 00 00 00 00  $'..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 07 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+112
	rel 32+8 t=1 runtime.gcbits.6ddb16+0
	rel 40+8 t=1 go.string.hdr."[7]testing.InternalBenchmark"+0
	rel 56+8 t=1 go.weak.type.*[7]testing.InternalBenchmark+0
	rel 64+8 t=1 type.testing.InternalBenchmark+0
	rel 72+8 t=1 type.[]testing.InternalBenchmark+0
go.typelink.[7]testing.InternalBenchmark	[7]testing.InternalBenchmark t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.[7]testing.InternalBenchmark+0
go.string.hdr."[0]testing.InternalExample" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."[0]testing.InternalExample"+0
go.string."[0]testing.InternalExample" t=8 dupok size=32 value=0
	0x0000 5b 30 5d 74 65 73 74 69 6e 67 2e 49 6e 74 65 72  [0]testing.Inter
	0x0010 6e 61 6c 45 78 61 6d 70 6c 65 00                 nalExample.
type.[0]testing.InternalExample t=8 dupok size=88 value=0
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 6a ae b6 6c 00 08 08 91 00 00 00 00 00 00 00 00  j..l............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+128
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+8 t=1 go.string.hdr."[0]testing.InternalExample"+0
	rel 56+8 t=1 go.weak.type.*[0]testing.InternalExample+0
	rel 64+8 t=1 type.testing.InternalExample+0
	rel 72+8 t=1 type.[]testing.InternalExample+0
go.typelink.[0]testing.InternalExample	[0]testing.InternalExample t=8 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type.[0]testing.InternalExample+0
go.string.hdr."os" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."os"+0
go.string."os" t=8 dupok size=8 value=0
	0x0000 6f 73 00                                         os.
go.importpath.os. t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."os"+0
go.string.hdr."regexp" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."regexp"+0
go.string."regexp" t=8 dupok size=8 value=0
	0x0000 72 65 67 65 78 70 00                             regexp.
go.importpath.regexp. t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."regexp"+0
go.string.hdr."testing" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."testing"+0
go.string."testing" t=8 dupok size=8 value=0
	0x0000 74 65 73 74 69 6e 67 00                          testing.
go.importpath.testing. t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."testing"+0
go.string.hdr."github.com/tooru/gopl/ch11/p06popcount" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 26 00 00 00 00 00 00 00  ........&.......
	rel 0+8 t=1 go.string."github.com/tooru/gopl/ch11/p06popcount"+0
go.string."github.com/tooru/gopl/ch11/p06popcount" t=8 dupok size=40 value=0
	0x0000 67 69 74 68 75 62 2e 63 6f 6d 2f 74 6f 6f 72 75  github.com/tooru
	0x0010 2f 67 6f 70 6c 2f 63 68 31 31 2f 70 30 36 70 6f  /gopl/ch11/p06po
	0x0020 70 63 6f 75 6e 74 00                             pcount.
go.importpath.github.com/tooru/gopl/ch11/p06popcount. t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 26 00 00 00 00 00 00 00  ........&.......
	rel 0+8 t=1 go.string."github.com/tooru/gopl/ch11/p06popcount"+0
go.string.hdr."github.com/tooru/gopl/ch11/p06popcount_test" t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 2b 00 00 00 00 00 00 00  ........+.......
	rel 0+8 t=1 go.string."github.com/tooru/gopl/ch11/p06popcount_test"+0
go.string."github.com/tooru/gopl/ch11/p06popcount_test" t=8 dupok size=48 value=0
	0x0000 67 69 74 68 75 62 2e 63 6f 6d 2f 74 6f 6f 72 75  github.com/tooru
	0x0010 2f 67 6f 70 6c 2f 63 68 31 31 2f 70 30 36 70 6f  /gopl/ch11/p06po
	0x0020 70 63 6f 75 6e 74 5f 74 65 73 74 00              pcount_test.
go.importpath.github.com/tooru/gopl/ch11/p06popcount_test. t=8 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 2b 00 00 00 00 00 00 00  ........+.......
	rel 0+8 t=1 go.string."github.com/tooru/gopl/ch11/p06popcount_test"+0
testing: warning: no tests to run
PASS
BenchmarkPopCount          	200000000	         7.93 ns/op
BenchmarkPopCount2         	200000000	         6.92 ns/op
BenchmarkBitCount          	500000000	         3.18 ns/op
BenchmarkBitCount2         	500000000	         3.34 ns/op
BenchmarkPopCountByClearing	50000000	        29.1 ns/op
BenchmarkPopCountByShifting	10000000	       124 ns/op
BenchmarkEmptyFunction     	2000000000	         0.40 ns/op
ok  	github.com/tooru/gopl/ch11/p06popcount	12.084s
