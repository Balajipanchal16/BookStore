package com.OnlineBooksStoreManage.repositry;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.OnlineBooksStoreManage.entities.AdminUsers;

@Repository
public interface UserAdminrepo extends JpaRepository<AdminUsers, Integer> {
	public AdminUsers findByemail(String email);
	
}
