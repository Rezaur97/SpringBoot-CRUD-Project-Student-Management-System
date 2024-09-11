package com.main.ControllerLayer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.Services.StudentServices;
import com.main.entity.Student;
import com.main.util.EmailService;

@Controller
public class StudentController {
	
	@RequestMapping("/viewmypage")
	public String viewStudentPage() {
		return "mainviewpage";
	}

	@Autowired
	private StudentServices stdser;
	
	@RequestMapping(value="/savestudent" ,method=RequestMethod.POST)
	public String savestudent(@ModelAttribute("student") Student std,ModelMap model) {
		
		stdser.saveoneStudent(std);	
		model.addAttribute("msg", "Data of Student Saved Successfully..!!");
		
		return "redirect:/showallData";
	}
	
	
	@RequestMapping("/showallData")
	public String showAllStudent(ModelMap model) {
		List<Student> listofstudent = stdser.listallstudent();
		model.addAttribute("students", listofstudent);
		return "showalll";
	}
	
	
	@RequestMapping("/delete")
	public String deleteMethod(@RequestParam("id") int id, ModelMap model) {
		
		stdser.deleteOneStd(id);
		
		List<Student> listofstudent = stdser.listallstudent();
		model.addAttribute("students", listofstudent);
		return "redirect:/showallData";
	}
	
	@RequestMapping("/update")
	public String updateMethod(@RequestParam("id") int id, ModelMap model) {
		
		Student std = stdser.getOnedata(id);
		model.addAttribute("student", std);
		return "update";
		
	}
	
	@RequestMapping(value="/updateOneStudent" ,method=RequestMethod.POST)
	public String updatestudent(@ModelAttribute("student") Student std,ModelMap model) {
		
		stdser.saveoneStudent(std);
		List<Student> listofstudent = stdser.listallstudent();
		model.addAttribute("students", listofstudent);
		return "redirect:/showallData";
	}
	
	
}
