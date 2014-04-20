package edu.graduate.law.platform.domain.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import edu.graduate.law.platform.basic.database.EntityTemplate;

@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "lawyer_detail")
public class LawyerDetail extends EntityTemplate {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -5898391164583509288L;

	@Id
	@GenericGenerator(name = "generator", strategy = "uuid")
	@GeneratedValue(generator = "generator")
	@Column(name = "ID")
	private String id = null;

	@Column(name = "lawyer_id")
	private String lawyerId = null;
	
	@Column(name = "resume")
	private String resume = null;
	
	@Column(name = "result")
	private String result = null;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLawyerId() {
		return lawyerId;
	}

	public void setLawyerId(String lawyerId) {
		this.lawyerId = lawyerId;
	}

	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	
}
