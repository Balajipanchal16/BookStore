package com.OnlineBooksStoreManage.repositry;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.OnlineBooksStoreManage.entities.AdminUsers;
import com.OnlineBooksStoreManage.entities.Cart;

@Repository
public interface CartRepo extends JpaRepository<Cart, Long> {
	public Cart findByUser(AdminUsers user);
}
