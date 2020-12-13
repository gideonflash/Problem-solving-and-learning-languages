package main

import "fmt"

func main() {
	array := []int{5, 1, 22, 25, 6, -1, 8, 10}
	sequence := []int{1, 6, -1, 10}

	fmt.Println(isValidSubSeq(array, sequence))
}

func isValidSubSeq(array []int, sequence []int) bool {
	seqLen := len(sequence)
	var posOfSubSeq = 0
	for _, num := range array {
		if posOfSubSeq < seqLen {
			if num == sequence[posOfSubSeq] {
				posOfSubSeq++
			}
		}
	}

	if posOfSubSeq == seqLen {
		return true
	}

	return false
}
