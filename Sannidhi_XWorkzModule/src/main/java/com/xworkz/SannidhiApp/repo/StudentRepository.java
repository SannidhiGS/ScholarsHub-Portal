package com.xworkz.SannidhiApp.repo;

import com.xworkz.SannidhiApp.entity.StudentEntity;
import java.util.List;

public interface StudentRepository {

    void save(StudentEntity student);

    List<StudentEntity> findByBatch(int batchId);
    String findPhotoPathByStudentId(int studentId);
    void deleteById(int studentId);
    StudentEntity findById(int studentId);
    void update(StudentEntity student);

}
