public class Main {
    public static void main(String[] args) {
        final String student_name_ru = "Дмитриев Владимир Викторович";
        final String student_name_en = "Vladimir";
        final int student_number = 8;
        final String group_name = "М3О-104БВ-26";
        final String language_name = "Java";

        final String student_id = String.format("%s/%02d", group_name, student_number);
        final int control_value = 304 * student_number;
        System.out.printf("Hello to 304 from %s, number %d, group %s!%n",
                student_name_en, student_number, group_name);
        System.out.printf("Привет, 304! Это %s, номер %d, группа %s!%n",
                student_name_ru, student_number, group_name);
        System.out.printf("Student ID: %s | Language: %s | Control: %d%n",
                student_id, language_name, control_value);
    }
}
