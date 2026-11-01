const student_name_ru = "Дмитриев Владимир Викторович";
const student_name_en = "Vladimir";
const student_number = 8;
const group_name = "М3О-104БВ-26";
const language_name = "JavaScript";

const student_id = `${group_name}/${String(student_number).padStart(2, "0")}`;
const control_value = 304 * student_number;
console.log(`Hello to 304 from ${student_name_en}, number ${student_number}, group ${group_name}!`);
console.log(`Привет, 304! Это ${student_name_ru}, номер ${student_number}, группа ${group_name}!`);
console.log(`Student ID: ${student_id} | Language: ${language_name} | Control: ${control_value}`);
console.log(`English name length: ${student_name_en.length}`);
