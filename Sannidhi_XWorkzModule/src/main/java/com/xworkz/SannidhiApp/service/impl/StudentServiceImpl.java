package com.xworkz.SannidhiApp.service.impl;

import com.xworkz.SannidhiApp.entity.StudentEntity;
import com.xworkz.SannidhiApp.repo.BatchRepository;
import com.xworkz.SannidhiApp.repo.StudentRepository;
import com.xworkz.SannidhiApp.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private BatchRepository batchRepository;

    // ================= ADD STUDENT WITH PHOTO =================
    @Override
    public void addStudent(String name,
                           String email,
                           String phone,
                           int batchId,
                           MultipartFile photo) throws IOException {

        StudentEntity entity = new StudentEntity();
        entity.setName(name);
        entity.setEmail(email);
        entity.setPhone(phone);
        entity.setBatch(batchRepository.findById(batchId));

        // Dynamic base directory
        String baseDir = System.getProperty("user.dir")
                + File.separator + "pics"
                + File.separator + "students"
                + File.separator;

        File folder = new File(baseDir);
        if (!folder.exists()) {
            folder.mkdirs();
        }

        String fileName = System.currentTimeMillis()
                + "_" + photo.getOriginalFilename();

        photo.transferTo(new File(baseDir + fileName));

        // Save relative path in DB
        entity.setPhotoPath("pics/students/" + fileName);

        studentRepository.save(entity);
    }

    // ================= GET STUDENTS BY BATCH =================
    @Override
    public List<StudentEntity> getStudentsByBatch(int batchId) {
        return studentRepository.findByBatch(batchId);
    }

    // ================= GET STUDENT PHOTO =================
    @Override
    public byte[] getStudentPhoto(int studentId) {

        String photoPath = studentRepository.findPhotoPathByStudentId(studentId);

        if (photoPath == null) {
            return null;
        }

        try {
            Path fullPath = Paths.get(
                    System.getProperty("user.dir")
                            + File.separator
                            + photoPath
            );

            return Files.readAllBytes(fullPath);

        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    // ================= DELETE =================
    @Override
    public void deleteStudent(int studentId) {
        studentRepository.deleteById(studentId);
    }

    // ================= GET BY ID =================
    @Override
    public StudentEntity getStudentById(int studentId) {
        return studentRepository.findById(studentId);
    }

    // ================= UPDATE =================
    @Override
    public void updateStudent(StudentEntity student) {
        studentRepository.update(student);
    }
}
