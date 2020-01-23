package main

import "fmt"

func printValues(foos []string) {
	for i, val := range foos {
		fmt.Println("i: ", i, " val: ", val)
	}
}

func withReturn(bars map[string]int) int {
	bars["joey"] = 67
	for key, val := range bars {
		fmt.Println("key: ", key, " val: ", val)
	}

	return 32
}

func returnTuple(x, y int) (int, int) {
	return x + 1, y + 2
}

func returnTriple(x, y, z int) (int, int, int) {
	return x + 1, y + 1, z + 1
}

func main() {
	fmt.Println("foo")

	foos := make([]string, 0, 8)
	foos = append(foos, "hello")
	foos = append(foos, "bar")
	foos = append(foos, "fred")
	foos = append(foos, "john")
	foos = append(foos, "foobar")

	fmt.Println(foos)
	fmt.Println("Length: ", len(foos))
	fmt.Println("Capacity: ", cap(foos))

	bars := make(map[string]int)
	bars["johnny"] = 1
	bars["freddy"] = 2
	bars["global"] = 3
	fmt.Println(bars)
	fmt.Println("Length: ", len(bars))

	fmt.Println()
	printValues(foos)

	fmt.Println()
	val := withReturn(bars)
	fmt.Println(val)
	fmt.Println(bars)

	fmt.Println(returnTuple(5, 7))

	x, y, z := returnTriple(6, 8, 9)
	fmt.Println(x, y, z)

	fmt.Println(int64(5))
}
