package test.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import test.bean.Employee;
import test.dao.EmpDao;

@Controller
public class EmpController 
{
	@Autowired
	EmpDao dao;
	
	@RequestMapping(value="/savedata",method=RequestMethod.POST)
	public String savedata(@ModelAttribute("emp")Employee emp)
	{
		dao.save(emp);
		return "redirect:/welcome";
	}
	
	@RequestMapping("/welcome")
	public String welcome(Model m)
	{
		List<Employee> list=dao.getempdetails();
		m.addAttribute("list",list);
		return "welcome";
	}
	
	@RequestMapping(value="/deleteemp/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id)
	{
		dao.delete(id);
		return "redirect:/welcome";
	}
	
	
	
}
