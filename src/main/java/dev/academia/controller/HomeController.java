package dev.academia.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import dev.academia.model.Course;
import dev.academia.service.CourseService;

@Controller
public class HomeController {

	@Autowired
	private CourseService courseService;

//	This Handler is used to show Home page where all courses are shown.
	@RequestMapping("/")
	public String home(Model m) {
		List<Course> courses = courseService.fetchAllCourses();
		m.addAttribute("courses", courses);
		return "index";
	}

//	This Handler is used to show the form to fill the course details.
	@RequestMapping("/add-course")
	public String addCourse(Model m) {
		m.addAttribute("title", "Add Course");
		return "add-Course";
	}

//	This Handler is used save the course details to database and  redirect to Home Page.
	@RequestMapping(value = "/save-course", method = RequestMethod.POST)
	public RedirectView saveCourse(@ModelAttribute Course course, HttpServletRequest r) {
		System.out.println(course);
		this.courseService.createCourse(course);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(r.getContextPath() + "/");
		return redirectView;
	}

//	This Handler is used to delete the course from the database.
	@RequestMapping("/delete-course/{cId}")
	public RedirectView deleteCourse(@PathVariable("cId") int cId, HttpServletRequest r) {
		RedirectView redirectView = new RedirectView();
		this.courseService.removeCourse(cId);
		redirectView.setUrl(r.getContextPath() + "/");
		return redirectView;
	}

//	This Handler is used to edit the course details.
	@RequestMapping("/edit-course/{cId}")
	public String editCourse(@PathVariable("cId") int cId, Model m) {
		Course course = this.courseService.fetchCourse(cId);
		m.addAttribute("course", course);
		return "edit-Course";
	}

}
