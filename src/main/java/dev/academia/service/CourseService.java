package dev.academia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dev.academia.dao.CourseDao;
import dev.academia.model.Course;

@Service
public class CourseService {

	@Autowired
	private CourseDao courseDao;

	@Transactional
	public void createCourse(Course course) {
		courseDao.saveCourse(course);
	}

//	Getting a single Course from the DB.
	public Course fetchCourse(int cId) {
		return this.courseDao.getCourse(cId);
	}

//	Getting all the Courses from the DB.
	public List<Course> fetchAllCourses() {
		return this.courseDao.getAllCourses();
	}

//	Deleting a Course from the DB.
	@Transactional
	public void removeCourse(int cId) {
		this.courseDao.deleteCourse(cId);
	}

}
