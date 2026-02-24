package com.xworkz.SannidhiApp.service.impl;

import com.xworkz.SannidhiApp.entity.BatchEntity;
import com.xworkz.SannidhiApp.repo.BatchRepository;
import com.xworkz.SannidhiApp.service.BatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.util.List;

@Service
public class BatchServiceImpl implements BatchService {

    @Autowired
    private BatchRepository batchRepository;

    // ================= SAVE BATCH =================
    @Override
    public void saveBatch(String batchName,
                          String startDate,
                          String endDate,
                          MultipartFile photo) throws Exception {

        BatchEntity batch = new BatchEntity();
        batch.setBatchName(batchName);
        batch.setStartDate(LocalDate.parse(startDate));
        batch.setEndDate(LocalDate.parse(endDate));

        // Dynamic project path (Safe for any system)
        String baseDir = System.getProperty("user.dir")
                + File.separator + "pics"
                + File.separator + "batches"
                + File.separator;

        File folder = new File(baseDir);
        if (!folder.exists()) {
            folder.mkdirs();
        }

        // Generate unique file name
        String fileName = System.currentTimeMillis()
                + "_" + photo.getOriginalFilename();

        // Save file
        photo.transferTo(new File(baseDir + fileName));

        // Save relative path in DB
        batch.setPhotoPath("pics/batches/" + fileName);

        batchRepository.save(batch);
    }

    // ================= GET ALL BATCHES =================
    @Override
    public List<BatchEntity> getAllBatches() {
        return batchRepository.findAll();
    }

    // ================= GET BATCH BY ID =================
    @Override
    public BatchEntity getBatchById(int id) {
        return batchRepository.findById(id);
    }

    // ================= GET BATCH PHOTO =================
    @Override
    public byte[] getBatchPhoto(int batchId) {

        BatchEntity batch = batchRepository.findById(batchId);

        if (batch == null || batch.getPhotoPath() == null) {
            return null;
        }

        try {
            Path path = Paths.get(
                    System.getProperty("user.dir")
                            + File.separator
                            + batch.getPhotoPath()
            );

            return Files.readAllBytes(path);

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
