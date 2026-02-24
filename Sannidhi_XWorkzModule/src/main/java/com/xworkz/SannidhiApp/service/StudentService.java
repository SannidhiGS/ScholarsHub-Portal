package com.xworkz.SannidhiApp.service;

import com.xworkz.SannidhiApp.entity.StudentEntity;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface StudentService {

    void addStudent(String name,
                    String email,
                    String phone,
                    int batchId,
                    MultipartFile photo) throws IOException;

    List<StudentEntity> getStudentsByBatch(int batchId);

    byte[] getStudentPhoto(int studentId) ;

    void deleteStudent(int studentId);

    StudentEntity getStudentById(int studentId);

    void updateStudent(StudentEntity student);

}
