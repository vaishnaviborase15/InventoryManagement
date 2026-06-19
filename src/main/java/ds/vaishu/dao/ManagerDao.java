package ds.vaishu.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import ds.vaishu.model.Manager;


@Component
public class ManagerDao 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() 
	{
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate)
	{
		this.hibernateTemplate = hibernateTemplate;
	}

	/**
	 * @param hibernateTemplate
	 */
	public ManagerDao(HibernateTemplate hibernateTemplate) 
	{
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	/**
	 * 
	 */
	public ManagerDao() 
	{
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() 
	{
		return "ManagerDao [hibernateTemplate=" + hibernateTemplate + "]";
	}
	
	public Manager getInfo(String email)
	{
		Manager manager= hibernateTemplate.get(Manager.class,email);
		return manager;
	}
    
	@Transactional
	public void setPassword(Manager manager)
	{
		hibernateTemplate.update(manager);
		
	}

	


}
