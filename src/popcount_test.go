package popcount

import (
	"testing"
)

func benchmarkPopCount(b *testing.B, count int) {
	for i := 0; i < b.N; i++ {
		for j := range pc {
			pc[j] = pc[j/2] + byte(j&1) // pcはグローバル変数
		}
		for j := 0; j < count; j++ {
			popCount(0x1234567890ABCDEF)
		}
	}
}

func BenchmarkPopCount(b *testing.B) {
	for i := 0; i < b.N; i++ {
		popCount(0x1234567890ABCDEF)
	}
}

var benchResult int

func BenchmarkPopCount2(b *testing.B) {
	var c int
	for i := 0; i < b.N; i++ {
		c = popCount(0x1234567890ABCDEF)
	}
	benchResult = c
}

func BenchmarkBitCount(b *testing.B) {
	for i := 0; i < b.N; i++ {
		bitCount(0x1234567890ABCDEF)
	}
}

func BenchmarkBitCount2(b *testing.B) {
	var c int
	for i := 0; i < b.N; i++ {
		c = bitCount(0x1234567890ABCDEF)
	}
	benchResult = c
}

func BenchmarkPopCountByClearing(b *testing.B) {
	for i := 0; i < b.N; i++ {
		popCountByClearing(0x1234567890ABCDEF)
	}
}

func BenchmarkPopCountByClearing2(b *testing.B) {
	var c int
	for i := 0; i < b.N; i++ {
		c = popCountByClearing(0x1234567890ABCDEF)
	}
	benchResult = c
}

func BenchmarkPopCountByShifting(b *testing.B) {
	for i := 0; i < b.N; i++ {
		popCountByShifting(0x1234567890ABCDEF)
	}
}

func BenchmarkPopCountByShifting2(b *testing.B) {
	var c int
	for i := 0; i < b.N; i++ {
		c = popCountByShifting(0x1234567890ABCDEF)
	}
	benchResult = c
}

func BenchmarkEmpty(b *testing.B) {
	for i := 0; i < b.N; i++ {
		empty(0x1234567890ABCDEF)
	}
}

func BenchmarkEmpty2(b *testing.B) {
	var c int
	for i := 0; i < b.N; i++ {
		c = empty(0x1234567890ABCDEF)
	}
	benchResult = c
}
