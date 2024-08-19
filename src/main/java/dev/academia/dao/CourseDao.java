package dev.academia.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import dev.academia.model.Course;

@Repository
public class CourseDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

//	Saving the Course to the DB.
//	@Transactional
	public void saveCourse(Course course) {
		this.hibernateTemplate.saveOrUpdate(course);
	}

//	Getting a single Course from the DB.
	public Course getCourse(int cId) {
		Course course = this.hibernateTemplate.get(Course.class, cId);
		return course;
	}

//	Getting all the Courses from the DB.
	public List<Course> getAllCourses() {
		List<Course> allCourses = this.hibernateTemplate.loadAll(Course.class);
		return allCourses;
	}

//	Deleting a Course from the DB.
//	@Transactional
	public void deleteCourse(int cId) {
		Course course = this.hibernateTemplate.get(Course.class, cId);
		this.hibernateTemplate.delete(course);
	}

}
