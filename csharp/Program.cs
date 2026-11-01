using System;

string student_name_ru = "Дмитриев Владимир Викторович";
string student_name_en = "Vladimir";
int student_number = 8;
string group_name = "М3О-104БВ-26";
string language_name = "C#";

string student_id = $"{group_name}/{student_number:D2}";
int control_value = 304 * student_number;
Console.WriteLine($"Hello to 304 from {student_name_en}, number {student_number}, group {group_name}!");
Console.WriteLine($"Привет, 304! Это {student_name_ru}, номер {student_number}, группа {group_name}!");
Console.WriteLine($"Student ID: {student_id} | Language: {language_name} | Control: {control_value}");
