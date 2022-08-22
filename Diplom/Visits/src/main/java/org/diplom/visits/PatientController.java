package org.diplom.visits;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class PatientController {

    @Autowired
    PatientService patientService; // подключаем сервис

    /**
     * Возвращает список всех пациентов
     */
    @GetMapping(value = "/patients")
    public List<Patient> findAll() {
        return patientService.findAll();
    }
}
