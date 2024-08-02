package com.barkbond.database.dao;

import com.barkbond.database.entity.*;
import org.springframework.data.jpa.repository.*;

import java.util.*;

public interface UserRoleDAO extends JpaRepository<UserRole, Long> {

    List<UserRole> findByUserId(Integer userId);

}
