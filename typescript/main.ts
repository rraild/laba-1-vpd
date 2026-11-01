interface Student {
  student_name_ru: string;
  student_name_en: string;
  student_number: number;
  group_name: string;
  language_name: string;
}

const student: Student = {
  student_name_ru: "Дмитриев Владимир Викторович",
  student_name_en: "Vladimir",
  student_number: 8,
  group_name: "М3О-104БВ-26",
  language_name: "TypeScript",
};

const student_id = `${student.group_name}/${String(student.student_number).padStart(2, "0")}`;
const control_value = 304 * student.student_number;

console.log(
  `Hello to 304 from ${student.student_name_en}, number ${student.student_number}, group ${student.group_name}!`,
);
console.log(
  `Привет, 304! Это ${student.student_name_ru}, номер ${student.student_number}, группа ${student.group_name}!`,
);
console.log(
  `Student ID: ${student_id} | Language: ${student.language_name} | Control: ${control_value}`,
);

export {};
