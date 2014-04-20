package edu.graduate.law.platform.domain.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import edu.graduate.law.platform.basic.database.EntityTemplate;

@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "reserve_manage")
public class ReserveManage extends EntityTemplate {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -1219345939787229417L;

	@Id
	@GenericGenerator(name = "generator", strategy = "uuid")
	@GeneratedValue(generator = "generator")
	@Column(name = "ID")
	private String id = null;

	@Column(name = "lawyer_id")
	private String lawyerId = null;

	@Column(name = "user_id")
	private String userId = null;

	@Column(name = "content")
	private String content = null;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "time")
	private Date time = null;

	@Column(name = "lawyer_name")
	private String lawyerName = null;

	@Column(name = "user_name")
	private String userName = null;

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

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getLawyerName() {
		return lawyerName;
	}

	public void setLawyerName(String lawyerName) {
		this.lawyerName = lawyerName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
