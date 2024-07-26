package com.barkbond.controller.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;


public interface UserDAO extends JpaRepository<
        User, Long> {




}
