#include <stdio.h>

int main(void) {
    const char *student_name_ru = "Дмитриев Владимир Викторович";
    const char *student_name_en = "Vladimir";
    const int student_number = 8;
    const char *group_name = "М3О-104БВ-26";
    const char *language_name = "C";
    char student_id[256];
    const int control_value = 304 * student_number;

    snprintf(student_id, sizeof student_id, "%s/%02d", group_name, student_number);
    printf("Hello to 304 from %s, number %d, group %s!\n",
           student_name_en, student_number, group_name);
    printf("Привет, 304! Это %s, номер %d, группа %s!\n",
           student_name_ru, student_number, group_name);
    printf("Student ID: %s | Language: %s | Control: %d\n",
           student_id, language_name, control_value);
    return 0;
}
