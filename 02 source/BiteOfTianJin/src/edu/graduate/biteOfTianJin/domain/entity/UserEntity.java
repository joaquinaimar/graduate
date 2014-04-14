package edu.graduate.biteOfTianJin.domain.entity;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable(tableName = "user")
public class UserEntity {

	@DatabaseField(generatedId = true, useGetSet = true, columnName = "ID")
	private Integer id = null;

	@DatabaseField(useGetSet = true, columnName = "USERNAME")
	private String username = null;

	@DatabaseField(useGetSet = true, columnName = "PASSWORD")
	private String password = null;

	@DatabaseField(useGetSet = true, columnName = "PHONE_NO")
	private String phoneNo = null;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

}
