package edu.graduate.shoe.manage.domain;

public class GatherSell {

	private Long inQuantity = null;

	private Long outQuantity = null;

	public Long getInQuantity() {
		return null == inQuantity ? 0 : inQuantity;
	}

	public void setInQuantity(Long inQuantity) {
		this.inQuantity = inQuantity;
	}

	public Long getOutQuantity() {
		return null == outQuantity ? 0 : outQuantity;
	}

	public void setOutQuantity(Long outQuantity) {
		this.outQuantity = outQuantity;
	}

	public Long getStockQuantity() {
		return getInQuantity() - getOutQuantity();
	}

}
