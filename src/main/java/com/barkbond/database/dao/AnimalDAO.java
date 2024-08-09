package com.barkbond.database.dao;

import com.barkbond.database.entity.*;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AnimalDAO extends JpaRepository<Animal, Long> {
}