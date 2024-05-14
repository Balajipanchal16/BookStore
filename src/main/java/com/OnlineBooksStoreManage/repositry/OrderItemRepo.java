package com.OnlineBooksStoreManage.repositry;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.OnlineBooksStoreManage.entities.OrderItem;
@Repository
public interface OrderItemRepo extends JpaRepository<OrderItem, Long>{
	
}
