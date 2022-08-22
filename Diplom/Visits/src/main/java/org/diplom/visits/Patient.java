package org.diplom.visits;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="patient")

/**
 * Класс Пациент
 */
public class Patient {
    @Id
    @Column(name = "patient_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    // поле id пациента
    private Long patient_id;
    // поле ФИО пациента
    private String fio;
    // поле дата рождения пациента
    private Timestamp description;
    // поле пол пациента
    private Boolean sex;
}
