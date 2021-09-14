package com.ezen.teaStore.domain;

import java.util.Date;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter @NoArgsConstructor
@EqualsAndHashCode
public class TradiTea {
	private int teaID;
	private String teaName;
	private int stock;
	private Date prodDate;
	private String amount;
	private double price;
	private String prodDesc;
}
