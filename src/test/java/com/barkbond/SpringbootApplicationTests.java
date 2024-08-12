package com.barkbond;

import com.barkbond.database.dao.AnimalDAO;
import com.barkbond.database.dao.OrganizationDAO;
import com.barkbond.database.dao.UserDAO;
import com.barkbond.database.entity.Animal;
import com.barkbond.database.entity.Organization;
import com.barkbond.database.entity.User;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.junit.jupiter.api.*;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

@SpringBootTest
class SpringbootApplicationTests {

	@Autowired
	private UserDAO userDAO;
	@Autowired
	private AnimalDAO animalDAO;
    @Autowired
    private OrganizationDAO organizationDAO;

	@Test
	void contextLoads() {
	}

	@Test
	@DisplayName("Finds correct user based on corresponding id number")
	void findUserByIdTest() {
		Integer userID = 14;

		User user = userDAO.findUserById(userID);
		Assertions.assertNotNull(user);
		Assertions.assertEquals(userID, user.getId());
		Assertions.assertEquals("test@test.com", user.getEmail());
	}

	@Test
	@DisplayName("Finds correct Animal based on corresponding id number")
	void findAccountByIdTest() {
		Integer id = 1;

		Animal animal = animalDAO.findAnimalById(id);
		Assertions.assertNotNull(animal);
		Assertions.assertEquals(id, animal.getId());
		Assertions.assertEquals("Luka", animal.getName());
		Assertions.assertEquals("Dog", animal.getAnimalType());
	}
	@Test
	@DisplayName("Finds correct Organization based on corresponding id number")
	void findBranchByIdTest() {
		Integer id = 1;

		Organization organization = organizationDAO.findOrganizationById(id);
		Assertions.assertNotNull(organization);
		Assertions.assertEquals(id, organization.getId());
		Assertions.assertEquals(13, organization.getAdminId());
	}

	@ParameterizedTest
	@CsvSource({
			"c@r.com",
			"admin@admin",
			"test@test.com"
	})
	void findUserByEmailTest(String email) {
		User user = userDAO.findByEmailIgnoreCase(email);
		Assertions.assertNotNull(user);
		Assertions.assertEquals(email, user.getEmail());
	}

}
