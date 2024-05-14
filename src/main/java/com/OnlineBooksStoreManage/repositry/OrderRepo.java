package com.OnlineBooksStoreManage.repositry;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.OnlineBooksStoreManage.entities.AdminUsers;
import com.OnlineBooksStoreManage.entities.Cart;
import com.OnlineBooksStoreManage.entities.Order;

@Repository
public interface OrderRepo extends JpaRepository<Order, Long> {
	public Order findByUser(AdminUsers user);
}
