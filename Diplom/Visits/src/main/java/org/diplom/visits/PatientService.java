package org.diplom.visits;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientService {
    @Autowired
    private PatientRepository patientRepository;

    /**
     * Возвращает список пациентов
     */
    public List<Patient> findAll() {
        return patientRepository.findAll();
    }
}
