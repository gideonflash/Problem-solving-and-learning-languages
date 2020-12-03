package main

import (
	"fmt"
	"testing"
)

func TestRangeCycles(t *testing.T) {
	_, _, got := RangeCycles(1, 10)
	fmt.Println(got)
	if got != 20 {
		t.Errorf("rangeCycles(1,10) = %d; want 20", got)
	}
}
