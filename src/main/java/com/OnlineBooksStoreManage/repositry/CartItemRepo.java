package com.OnlineBooksStoreManage.repositry;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.OnlineBooksStoreManage.entities.Cart;
import com.OnlineBooksStoreManage.entities.CartItem;
@Repository
public interface CartItemRepo extends JpaRepository<CartItem, Long> {
	public List<CartItem> getAllByCart(Cart cart);
}
