package main

import "fmt"

// BST binary search tree
type BST struct {
	value int
	left  *BST
	right *BST
}

func (tree *BST) insert(value int) {
	// current value
	// should explore the left
	// if left in None insert value
	// otherwise make left the current node
	// should explore the righ
	// if the right is None insert value
	// otherwise makde right the current node
	//
}

func (tree *BST) contains(value int) {
	// current node
	// check the left
	// check the right
	// otherwise return the value
}

func (tree *BST) findClosestValue(target int) int {
	// Traversing through a binary search tree
	// Add queue of node to be working with
	// Start a loop, that goes on so long as there is nothing in it
	// Check if previous gap is , less that this values gap, if saw store current // value and gap
	//
	return 0
}

func main() {
	testList := []int{1}

	fmt.Println(testList[1:])
}
