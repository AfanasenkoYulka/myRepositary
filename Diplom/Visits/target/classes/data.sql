INSERT INTO patients (fio, date_of_birth, sex)
VALUES ('Иванов Иван Иванович', '1988-10-01', 'M'),
       ('Петров Петр Петрович', '1968-11-21', 'M');

INSERT INTO doctors (fio, speciality)
VALUES ('Доктор Стрэнж Кэмбербектович', 'Доктор мультивселенной'),
       ('Терапевтов Терапевт Терапевтович', 'Терапевт');

INSERT INTO visits (patient_id, doctor_id, date, result)
VALUES (1, 1, '2022-09-17', 'Кэмбербектович спас мультивселенную'),
       (2, 2, '2022-02-05', 'Терапевт на теропелтил');