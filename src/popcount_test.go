package popcount

import (
	"testing"
)

const (
	N = 0x1234567890ABCDEF
)

func benchmarkPopCount(b *testing.B, count int) {
	for i := 0; i < b.N; i++ {
		for j := range pc {
			pc[j] = pc[j/2] + byte(j&1) // pcはグローバル変数
		}
		for j := 0; j < count; j++ {
			popCount(N)
		}
	}
}

func BenchmarkPopCount(b *testing.B) {
	for i := 0; i < b.N; i++ {
		popCount(N)
	}
}

var Output int

func BenchmarkPopCount2(b *testing.B) {
	var c int
	for i := 0; i < b.N; i++ {
		c = popCount(N)
	}
	Output = c
}

func BenchmarkBitCount(b *testing.B) {
	for i := 0; i < b.N; i++ {
		bitCount(N)
	}
}

func BenchmarkBitCount2(b *testing.B) {
	var c int
	for i := 0; i < b.N; i++ {
		c = bitCount(N)
	}
	Output = c
}

func BenchmarkPopCountByClearing(b *testing.B) {
	for i := 0; i < b.N; i++ {
		popCountByClearing(N)
	}
}

func BenchmarkPopCountByClearing2(b *testing.B) {
	var c int
	for i := 0; i < b.N; i++ {
		c = popCountByClearing(N)
	}
	Output = c
}

func BenchmarkPopCountByShifting(b *testing.B) {
	for i := 0; i < b.N; i++ {
		popCountByShifting(N)
	}
}

func BenchmarkPopCountByShifting2(b *testing.B) {
	var c int
	for i := 0; i < b.N; i++ {
		c = popCountByShifting(N)
	}
	Output = c
}

func BenchmarkEmpty(b *testing.B) {
	for i := 0; i < b.N; i++ {
		empty(N)
	}
}

func BenchmarkEmpty2(b *testing.B) {
	var c int
	for i := 0; i < b.N; i++ {
		c = empty(N)
	}
	Output = c
}
