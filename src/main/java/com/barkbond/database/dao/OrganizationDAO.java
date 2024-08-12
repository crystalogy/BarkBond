package com.barkbond.database.dao;

import com.barkbond.database.entity.*;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrganizationDAO extends JpaRepository<Organization, Integer> {
    Organization findOrganizationByAdminId(Integer adminId);

    Organization findOrganizationById(Integer id);
}

