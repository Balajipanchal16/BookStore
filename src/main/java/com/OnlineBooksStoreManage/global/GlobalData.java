package com.OnlineBooksStoreManage.global;

import java.util.List;
import java.util.ArrayList;


import com.OnlineBooksStoreManage.entities.Book;

public class GlobalData {
		public static List<Book> cart;
		static {
			cart =new ArrayList<Book>();
		}
		
}
