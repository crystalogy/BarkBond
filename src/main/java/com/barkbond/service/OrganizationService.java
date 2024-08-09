package com.barkbond.service;

import com.barkbond.database.dao.*;
import com.barkbond.database.entity.*;
import lombok.extern.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import java.util.*;

@Slf4j
@Component
public class OrganizationService {
    @Autowired
    private OrganizationDAO organizationDao;

    public List<Organization> getAllOrganizations() {
        return organizationDao.findAll();
    }
}
