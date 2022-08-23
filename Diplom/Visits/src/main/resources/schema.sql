drop table if exists patients;

CREATE TABLE patients
(
    patient_id    int          NOT NULL AUTO_INCREMENT,
    fio           varchar(250) NOT NULL,
    date_of_birth DATE         NOT NULL,
    sex           varchar(1)   NOT NULL
);

drop table if exists doctors;

CREATE TABLE doctors
(
    doctor_id  int          NOT NULL AUTO_INCREMENT,
    fio        varchar(250) NOT NULL,
    speciality varchar(250) NOT NULL
);