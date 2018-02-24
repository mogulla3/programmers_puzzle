package main

import (
	"fmt"
)

func main() {
	num := 10

	for {
		bin := fmt.Sprintf("%b", num)
		oct := fmt.Sprintf("%o", num)
		dec := fmt.Sprintf("%d", num)

		if bin == Reverse(bin) && oct == Reverse(oct) && dec == Reverse(dec) {
			fmt.Println(dec)
			break
		}
		num++
	}
}

func Reverse(s string) string {
	var revString string
	for i := len(s) - 1; i >= 0; i-- {
		revString += string(s[i])
	}

	return revString
}
