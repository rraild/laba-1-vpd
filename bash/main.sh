#!/usr/bin/env bash
set -euo pipefail
student_name_ru='Дмитриев Владимир Викторович'
student_name_en=Vladimir
student_number=8
group_name='М3О-104БВ-26'
language_name='Bash'

printf -v student_id '%s/%02d' "$group_name" "$student_number"
control_value=$((304 * student_number))
word_count=$(printf '%s\n' "$student_name_en" | wc -w)
printf 'Hello to 304 from %s, number %d, group %s!\n' "$student_name_en" "$student_number" "$group_name"
printf 'Привет, 304! Это %s, номер %d, группа %s!\n' "$student_name_ru" "$student_number" "$group_name"
printf 'Student ID: %s | Language: %s | Control: %d\n' "$student_id" "$language_name" "$control_value"
printf 'English name words (pipe to wc): %s\n' "$word_count"
