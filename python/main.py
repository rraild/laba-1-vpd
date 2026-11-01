student_name_ru = "Дмитриев Владимир Викторович"
student_name_en = "Vladimir"
student_number = 8
group_name = "М3О-104БВ-26"
language_name = "Python"

student_id = f"{group_name}/{student_number:02d}"
control_value = 304 * student_number
print(
    f"Hello to 304 from {student_name_en}, number {student_number}, group {group_name}!"
)
print(
    f"Привет, 304! Это {student_name_ru}, номер {student_number}, группа {group_name}!"
)
print(
    f"Student ID: {student_id} | Language: {language_name} | Control: {control_value}"
)
print(f"English name words: {len(student_name_en.split())}")
