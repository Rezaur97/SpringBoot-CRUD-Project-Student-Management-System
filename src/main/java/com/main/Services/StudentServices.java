package com.main.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.RepoLayer.Student1Repository;
import com.main.entity.Student;

@Service
public class StudentServices {

	@Autowired
	private Student1Repository stdrepo;
	
	
	public void saveoneStudent(Student std) {
		stdrepo.save(std);
	}

	public List<Student> listallstudent() {
      List<Student> list = stdrepo.findAll();
      return list;
	}

	public void deleteOneStd(int id) {
		stdrepo.deleteById(id);
	}

	

	public Student getOnedata(int id) {

		Optional<Student> findById = stdrepo.findById(id);
		Student std = findById.get();
		return std;
	}
}
