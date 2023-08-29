package com.ps21477.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class CartItem {
	Integer id;
	String name;
	double price;
	String image;
	int qty = 1;
}
