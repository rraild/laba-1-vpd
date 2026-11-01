fn main() {
    let student_name_ru = "Дмитриев Владимир Викторович";
    let student_name_en = "Vladimir";
    let student_number = 8;
    let group_name = "М3О-104БВ-26";
    let language_name = "Rust";

    let student_id = format!("{}/{:02}", group_name, student_number);
    let control_value = 304 * student_number;
    println!("Hello to 304 from {}, number {}, group {}!", student_name_en, student_number, group_name);
    println!("Привет, 304! Это {}, номер {}, группа {}!", student_name_ru, student_number, group_name);
    println!("Student ID: {} | Language: {} | Control: {}", student_id, language_name, control_value);
    println!("Formed student_id: {}", student_id);
}
