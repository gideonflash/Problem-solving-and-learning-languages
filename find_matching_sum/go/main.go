package main

import "fmt"

func main() {

	collection := []int{3, 5, -4, 8, 11, 1, -1, 6}
	fmt.Println(twoNumSum(collection, 20))

}

func twoNumSum(nums []int, target int) []int {
	for pos, elm := range nums {
		for i := pos + 1; i <= len(nums)-1; i++ {
			operand := nums[i]
			hasMatch := elm+operand == target

			if hasMatch {
				return []int{elm, operand}
			}
		}
	}

	return []int{}
}
