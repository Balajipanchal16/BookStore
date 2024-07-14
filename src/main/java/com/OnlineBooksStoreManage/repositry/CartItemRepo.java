package com.OnlineBooksStoreManage.repositry;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.OnlineBooksStoreManage.entities.Cart;
import com.OnlineBooksStoreManage.entities.CartItem;
@Repository
public interface CartItemRepo extends JpaRepository<CartItem, Long> {
	@Modifying
    @Transactional
    @Query("DELETE FROM CartItem ci WHERE ci.book.bookId = :bookId AND ci.cart.cartId = :cartId")
    void deleteByBookIdAndCartId(@Param("bookId") long bookId, @Param("cartId") long cartId);
	
	public List<CartItem> getAllByCart(Cart cart);
	
	
}
