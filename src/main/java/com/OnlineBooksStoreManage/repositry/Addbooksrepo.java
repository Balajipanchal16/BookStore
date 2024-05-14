package com.OnlineBooksStoreManage.repositry;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.OnlineBooksStoreManage.entities.Book;

@Repository
public interface Addbooksrepo extends JpaRepository<Book, Long> {
	
}
