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

import edu.graduate.basic.database.EntityTemplate;

@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "news")
public class News extends EntityTemplate {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -1014050536351026603L;

	@Id
	@GenericGenerator(name = "generator", strategy = "uuid")
	@GeneratedValue(generator = "generator")
	@Column(name = "ID")
	private String id = null;

	@Column(name = "title")
	private String title = null;

	@Column(name = "content")
	private String content = null;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "time")
	private Date time = null;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

}
