open System

let student_name_ru = "Дмитриев Владимир Викторович"
let student_name_en = "Vladimir"
let student_number = 8
let group_name = "М3О-104БВ-26"
let language_name = "F#"

let student_id = sprintf "%s/%02d" group_name student_number
let control_value = 304 * student_number
printfn "Hello to 304 from %s, number %d, group %s!" student_name_en student_number group_name
printfn "Привет, 304! Это %s, номер %d, группа %s!" student_name_ru student_number group_name
printfn "Student ID: %s | Language: %s | Control: %d" student_id language_name control_value

let total_word_length =
    student_name_en.Split(' ', StringSplitOptions.RemoveEmptyEntries)
    |> Array.map String.length
    |> Array.sum
printfn "English name letters without spaces: %d" total_word_length
