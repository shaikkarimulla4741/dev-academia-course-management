package dev.academia.model;

import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Course {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cId;
	private String course;
	private String description;
	private long price;

	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Course(int cId, String course, String description, long price) {
		super();
		this.cId = cId;
		this.course = course;
		this.description = description;
		this.price = price;
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Course [cId=" + cId + ", course=" + course + ", description=" + description + ", price=" + price + "]";
	}

}
