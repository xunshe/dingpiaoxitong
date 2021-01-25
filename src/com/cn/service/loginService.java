package com.cn.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import com.cn.dao.TAdminDAO;
import com.cn.dao.TKeshiDAO;
import com.cn.dao.TYishengDAO;
import com.cn.model.TAdmin;

/**
 * 
 *
 */
public class loginService
{
	private TAdminDAO adminDAO;
	private TKeshiDAO keshiDAO;
	private TYishengDAO yishengDAO;
	
	public TKeshiDAO getKeshiDAO()
	{
		return keshiDAO;
	}
	public void setKeshiDAO(TKeshiDAO keshiDAO)
	{
		this.keshiDAO = keshiDAO;
	}
	public TYishengDAO getYishengDAO()
	{
		return yishengDAO;
	}
	public void setYishengDAO(TYishengDAO yishengDAO)
	{
		this.yishengDAO = yishengDAO;
	}
	public TAdminDAO getAdminDAO()
	{
		return adminDAO;
	}
	public void setAdminDAO(TAdminDAO adminDAO)
	{
		this.adminDAO = adminDAO;
	}
	
	
	
	public String login(String userName,String userPw,int userType)
	{
		
		try
		{
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String result="no";
		
		if(userType==0)//系统管理员登陆
		{
			String sql="from TAdmin where userName=? and userPw=?";
			Object[] con={userName,userPw};
			List adminList=adminDAO.getHibernateTemplate().find(sql,con);
			if(adminList.size()==0)
			{
				 result="no";
			}
			else
			{
				 WebContext ctx = WebContextFactory.get(); 
				 HttpSession session=ctx.getSession(); 
				 TAdmin admin=(TAdmin)adminList.get(0);
				 session.setAttribute("userType", 0);
	             session.setAttribute("admin", admin);
	             result="yes";
			}
		}
		
		return result;
	}

    public String adminPwEdit(String userPwNew)
    {
		
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		 
		TAdmin admin=(TAdmin)session.getAttribute("admin");
		admin.setUserPw(userPwNew);
		
		adminDAO.getHibernateTemplate().update(admin);
		session.setAttribute("admin", admin);
		
		return "yes";
    }

    public List keshiSelect()
    {
    	try 
		{
			Thread.sleep(1700);
		} 
		catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	String sql="from TKeshi where del='no'";
		List keshiList=keshiDAO.getHibernateTemplate().find(sql);
		return keshiList;
    }
    
    
    public List yishengSelect()
    {
    	try 
		{
			Thread.sleep(1700);
		} 
		catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	String sql="from TYisheng where del='no'";
		List yishengList=yishengDAO.getHibernateTemplate().find(sql);
		return yishengList;
    }
}
