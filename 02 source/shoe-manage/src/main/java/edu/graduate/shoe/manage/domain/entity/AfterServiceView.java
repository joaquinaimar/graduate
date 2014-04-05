package edu.graduate.shoe.manage.domain.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import edu.graduate.shoe.manage.basic.database.EntityTemplate;

@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "after_service_view")
public class AfterServiceView extends EntityTemplate {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -2193379375460122112L;

	@Column(name = "customer")
	private String customer = null;

	@Column(name = "type")
	private Integer type = null;

	@Column(name = "quantity")
	private Integer quantity = null;

	@Column(name = "price")
	private Double price = null;

	@Column(name = "id")
	private String id = null;

	@Id
	@Column(name = "sell_id")
	private String sellId = null;

	@Column(name = "problem")
	private String problem = null;

	@Column(name = "back")
	private Integer back = null;

	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSellId() {
		return sellId;
	}

	public void setSellId(String sellId) {
		this.sellId = sellId;
	}

	public String getProblem() {
		return problem;
	}

	public void setProblem(String problem) {
		this.problem = problem;
	}

	public Integer getBack() {
		return back;
	}

	public void setBack(Integer back) {
		this.back = back;
	}

}
