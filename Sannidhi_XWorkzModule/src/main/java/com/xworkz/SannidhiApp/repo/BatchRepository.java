package com.xworkz.SannidhiApp.repo;

import com.xworkz.SannidhiApp.entity.BatchEntity;
import java.util.List;

public interface BatchRepository {

    void save(BatchEntity batch);

    List<BatchEntity> findAll();

    BatchEntity findById(int id);
}
