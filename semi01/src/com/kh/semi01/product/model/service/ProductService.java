package com.kh.semi01.product.model.service;

import java.sql.Connection;

import static com.kh.semi01.common.JDBCTemplate.*;
import com.kh.semi01.product.model.dao.ProductDao;
import com.kh.semi01.product.model.vo.Product;

public class ProductService {
	
	public Product searchProduct(String sKeyWord) {
		Connection conn = getConnection();
		
		Product p = new ProductDao().searchProduct(conn, sKeyWord);
		
		close(conn);
		
		return p;
		
		
	}
}
