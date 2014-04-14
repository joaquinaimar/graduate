package edu.graduate.biteOfTianJin.domain.entity;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable(tableName = "shop")
public class Shop {

	@DatabaseField(generatedId = true, useGetSet = true, columnName = "ID")
	private Integer id = null;

	@DatabaseField(useGetSet = true, columnName = "NAME")
	private String name = null;

	@DatabaseField(useGetSet = true, columnName = "SUGGEST")
	private String suggest = null;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSuggest() {
		return suggest;
	}

	public void setSuggest(String suggest) {
		this.suggest = suggest;
	}

}
