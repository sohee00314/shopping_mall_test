package com.home.mall.domain;

import lombok.Data;

@Data
public class SubCategory {
	private int subcategory_id;
	private String sub_name;
	private TopCategory topCategory;
}
