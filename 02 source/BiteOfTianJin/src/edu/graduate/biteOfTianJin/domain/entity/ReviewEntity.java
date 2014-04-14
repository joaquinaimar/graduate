package edu.graduate.biteOfTianJin.domain.entity;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable(tableName = "review")
public class ReviewEntity {

	@DatabaseField(generatedId = true, useGetSet = true, columnName = "ID")
	private Integer id = null;

	@DatabaseField(useGetSet = true, columnName = "SHOP_ID")
	private String shopId = null;

	@DatabaseField(useGetSet = true, columnName = "USER_ID")
	private String userId = null;

	@DatabaseField(useGetSet = true, columnName = "CONTENT")
	private String content = null;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getShopId() {
		return shopId;
	}

	public void setShopId(String shopId) {
		this.shopId = shopId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
