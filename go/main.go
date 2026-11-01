package main

import "fmt"

func main() {
	const student_name_ru = "Дмитриев Владимир Викторович"
	const student_name_en = "Vladimir"
	const student_number = 8
	const group_name = "М3О-104БВ-26"
	const language_name = "Go"

	studentID := fmt.Sprintf("%s/%02d", group_name, student_number)
	controlValue := 304 * student_number
	fmt.Printf("Hello to 304 from %s, number %d, group %s!\n", student_name_en, student_number, group_name)
	fmt.Printf("Привет, 304! Это %s, номер %d, группа %s!\n", student_name_ru, student_number, group_name)
	fmt.Printf("Student ID: %s | Language: %s | Control: %d\n", studentID, language_name, controlValue)
}
