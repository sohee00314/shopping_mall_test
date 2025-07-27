package com.home.mall.domain;

import lombok.Data;

@Data
public class Product {
	private int product_id;
	private String product_name;
	private String brand;
	private int price;
	private int discount;
	private String introduction;
	private String detail;
	private SubCategory subCategory;
}
