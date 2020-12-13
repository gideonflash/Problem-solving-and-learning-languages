package main

import "fmt"

func main() {

	collection := []int{3, 5, -4, 8, 11, 1, -1, 6}
	fmt.Println(twoNumSum(collection, 10))

}

func twoNumSum(nums []int, target int) []int {
	store := make(map[int]bool)

	for _, elm := range nums {
		y := target - elm
		_, ok := store[y]

		if ok {
			return []int{elm, y}
		}

		store[elm] = true
	}

	return []int{}
}
