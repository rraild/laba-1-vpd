:- encoding(utf8).

% Исходные данные представлены фактом student/5.
student('Дмитриев Владимир Викторович', 'Vladimir', 8, 'М3О-104БВ-26', 'Prolog').

control_value(Number, Control) :-
    student(_, _, Number, _, _),
    Control is 304 * Number.

main :-
    student(NameRu, NameEn, Number, Group, Language),
    control_value(Number, Control),
    % ~d сам задаёт минимум одну цифру, добавляем 0 только для N < 10.
    (Number < 10 -> Prefix = '0' ; Prefix = ''),
    format(atom(StudentID), '~w/~w~d', [Group, Prefix, Number]),
    format('Hello to 304 from ~w, number ~d, group ~w!~n', [NameEn, Number, Group]),
    format('Привет, 304! Это ~w, номер ~d, группа ~w!~n', [NameRu, Number, Group]),
    format('Student ID: ~w | Language: ~w | Control: ~d~n', [StudentID, Language, Control]).
