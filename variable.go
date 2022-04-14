package main

import "fmt"

type mobil string

const (
	number1 int8  = 8
	number2 int16 = 8
	number3 int32 = 8
	number4 int64 = 8

	test1 bool = true
	test2 bool = false

	string1 mobil = "string1"
	string2 string = "string2"
	convert string= string(number1) 
)


func main() {
	fmt.Println(string1)
}

//int8
//int16
//int32
//int64

//uint8
//uint16
//uint32
//uint64

//float32
//float64
//complex64
//complex128
