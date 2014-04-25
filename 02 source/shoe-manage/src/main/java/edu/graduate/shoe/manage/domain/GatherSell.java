package edu.graduate.shoe.manage.domain;

public class GatherSell {

	private Long inQuantity = null;

	private Long outQuantity = null;

	public Long getInQuantity() {
		return inQuantity;
	}

	public void setInQuantity(Long inQuantity) {
		this.inQuantity = inQuantity;
	}

	public Long getOutQuantity() {
		return outQuantity;
	}

	public void setOutQuantity(Long outQuantity) {
		this.outQuantity = outQuantity;
	}

	public Long getStockQuantity() {
		return inQuantity - outQuantity;
	}

}
