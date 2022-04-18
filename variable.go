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

	string1 mobil  = "string1"
	string2 string = "string2"
	convert string = string(number1)
)

var months = [12]string{"Januari",
	"Februari",
	"Maret",
	"April",
	"Mei",
	"Juni",
	"Juli",
	"Agustus",
	"September",
	"Oktober",
	"November",
	"Desember"}
var slice1 = months[0:4]
var slice2 = months[5:]
var slice3 = months[:3]
var slice4 = months[:]

func main() {
	//array & slice
	slice3[1] = "tes"
	iniSlice := []int{1, 2, 3, 4, 5}
	iniArray := [5]int{1, 2, 3, 4, 5}

	newSlice := make([]int, len(iniSlice), cap(iniSlice))
	copy(newSlice, iniSlice)
	fmt.Println(iniSlice)
	fmt.Println(iniArray)

	//MAP
	person := map[string]string{
		"name": "fahmi",
	}
	person["car"] = "ferrari"
	fmt.Println(person)
	fmt.Println(person["name"])
	fmt.Println(len(person))
	delete(person, "car")
	fmt.Println(len(person))

	//IF
	if testing := person["name"]; testing == "Fahmi" {
		fmt.Println(person["name"])
	} else if person["name"] == "fahmi" {
		fmt.Println("betul")
	} else {
		fmt.Println("gagal")
	}
	//SWITCH
	switch len(person) {
	case 1:
		fmt.Println("masuk ke 1")
	case 2:
		fmt.Println("masuk ke 2")
	default:
		fmt.Println("gagal")
	}

	switch length :=len(person);1>length{
		case true: fmt.Println("masuk ke 1")
		case false: fmt.Println("masuk ke 2")
		default: fmt.Println("gagal")
		}
	//LOOP
	counter:=-5
	for counter<len(person){
		fmt.Println("LOOP",counter)
		counter++
	}
	for i:=0;i<len(person)+10;i++{
		fmt.Println("Looping ke-",i)
	}
	for i, val:=range months{
		fmt.Println("Bulan ke-",i+1," adalah ",val)
	}
	for _, val:=range months{
		fmt.Println("Bulan",val)
	}
	for key,val:=range person{
		fmt.Println(key,"=",val)
	}
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
