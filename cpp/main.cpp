#include <iomanip>
#include <iostream>
#include <sstream>
#include <string>

int main()
{
    const std::string student_name_ru = "Дмитриев Владимир Викторович";
    const std::string student_name_en = "Vladimir";
    const int student_number = 8;
    const std::string group_name = "М3О-104БВ-26";
    const std::string language_name = "C++";
    std::ostringstream id;
    id << group_name << '/' << std::setfill('0') << std::setw(2) << student_number;
    const std::string student_id = id.str();
    const int control_value = 304 * student_number;

    std::cout << "Hello to 304 from " << student_name_en << ", number "
              << student_number << ", group " << group_name << "!\n";
    std::cout << "Привет, 304! Это " << student_name_ru << ", номер "
              << student_number << ", группа " << group_name << "!\n";
    std::cout << "Student ID: " << student_id << " | Language: " << language_name
              << " | Control: " << control_value << '\n';
}
