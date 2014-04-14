package edu.graduate.biteOfTianJin.domain.entity;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable(tableName = "shop")
public class ShopEntity {

	@DatabaseField(generatedId = true, useGetSet = true, columnName = "ID")
	private Integer id = null;

	@DatabaseField(useGetSet = true, columnName = "FRONT_COVER")
	private String frontCover = null;

	@DatabaseField(useGetSet = true, columnName = "SHOP_NAME")
	private String shopName = null;

	@DatabaseField(useGetSet = true, columnName = "SUGGEST")
	private String suggest = null;

	@DatabaseField(useGetSet = true, columnName = "TYPE")
	private String type = null;

	@DatabaseField(useGetSet = true, columnName = "PHONE_NO")
	private String phoneNo = null;

	@DatabaseField(useGetSet = true, columnName = "AVERAGE_PRICE")
	private Double averagePrice = null;

	@DatabaseField(useGetSet = true, columnName = "ADDRESS")
	private String address = null;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFrontCover() {
		return frontCover;
	}

	public void setFrontCover(String frontCover) {
		this.frontCover = frontCover;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getSuggest() {
		return suggest;
	}

	public void setSuggest(String suggest) {
		this.suggest = suggest;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public Double getAveragePrice() {
		return averagePrice;
	}

	public void setAveragePrice(Double averagePrice) {
		this.averagePrice = averagePrice;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
