package main

import (
	"fmt"
)

func main() {
	_, _, got := RangeCycles(1, 10)
	fmt.Println("Get maximum cycle", got)
}

func RangeCycles(start int, end int) (int, int, int) {
	var max int
	// iterate through start and end
	// call cycle count on each number
	// increament range cycle count
	for _, n := range getRange(start, end) {
		c := cycleCount(n)
		if c < max {
			max = c
		}
	}
	return start, end, max
}

func cycleCount(n int) int {
	var count int
	// while n != 1
	// if n is even then divide by 2
	// if n is odd then multiply by 3 and add 1
	for {
		count++
		if n == 1 {
			break
		} else if n%2 == 0 {
			n = n / 2
		} else {
			n = n*3 + 1
		}
	}
	return count
}

// iterative
func getRange(start int, end int) []int {
	rangeSlice := []int{}

	for i := start; i != end; i++ {
		rangeSlice = append(rangeSlice, i)
	}

	return rangeSlice
}

// Non-tail recursive call
func getRangeRec(strt int, end int) []int {
	if strt == end {
		return []int{end}
	}

	return append(getRangeRec(strt, end-1), end)
}

// Tail recursive call
func getRangTail(strt int, end int, collection []int) []int {
	if strt == end {
		return collection
	}

	if len(collection) == 0 {
		return getRangTail(strt, end, []int{strt})
	}

	strt++
	return getRangTail(strt, end, append(collection, strt))

}
