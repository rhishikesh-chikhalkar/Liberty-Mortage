package test.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import test.bean.Employee;

public class EmpDao
{
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template)
	{
		this.template=template;
	}
	
	public int save(Employee e)
	{
		String sql="insert into customer(first_name,last_name,email,mobile_number,password,bank_account_number,pan_number,address)values('"+e.getFirst_name()+"','"+e.getLast_name()+"','"+e.getEmail()+"','"+e.getMobile_number()+"','"+e.getPassword()+"','"+e.getBank_account_number()+"','"+e.getPan_number()+"','"+e.getAddress()+"')";
		return template.update(sql);
	}
	
	
	public List<Employee> getempdetails()
	{
		return template.query("select * from customer",new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs,int row) throws SQLException
			{
				Employee e=new Employee();
				e.setId(rs.getInt(1));
				e.setFirst_name(rs.getString(2));
				e.setLast_name(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setMobile_number(rs.getString(5));
				e.setPassword(rs.getString(5));
				e.setBank_account_number(rs.getString(5));
				e.setPan_number(rs.getString(5));
				e.setAddress(rs.getString(5));
				
				return e;
			}
			
		});
	}
	
	
	public int delete(int id)
	{
		String sql="delete from customer where id="+id;
		return template.update(sql);
	}
	
	
}
