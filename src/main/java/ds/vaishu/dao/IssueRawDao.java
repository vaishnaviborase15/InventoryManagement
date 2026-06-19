package ds.vaishu.dao;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import ds.vaishu.model.IssueRaw;
import ds.vaishu.model.RawMaterial;

@Component
public class IssueRawDao
{
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public String toString()
	{
		return "IssueRawDao [hibernateTemplate=" + hibernateTemplate + "]";
	}

	/**
	 * 
	 */
	public IssueRawDao()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param hibernateTemplate
	 */
	public IssueRawDao(HibernateTemplate hibernateTemplate)
	{
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() 
	{
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) 
	{
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public int addIssueRaw(IssueRaw issueRaw) 
	{
		if(issueRaw.getIrquantity() <= 0)
		{
			throw new IllegalArgumentException("Issue quantity must be greater than zero.");
		}
		
		RawMaterial rawMaterial = hibernateTemplate.get(RawMaterial.class, issueRaw.getRid());
		if(rawMaterial == null)
		{
			throw new IllegalArgumentException("Raw material ID not found.");
		}
		
		float availableQuantity = rawMaterial.getRquantity();
		if(availableQuantity < issueRaw.getIrquantity())
		{
			throw new IllegalArgumentException("Not enough raw material quantity available.");
		}
		
		rawMaterial.setRquantity(availableQuantity - issueRaw.getIrquantity());
		hibernateTemplate.update(rawMaterial);
		
		int i = (Integer) hibernateTemplate.save(issueRaw);
		return i;
	}

	/*@Transactional
	public void issueRaw(int rid, float irquantity) 
	{
		IssueRaw issueRaw = hibernateTemplate.get(issueRaw.class, rid);
		if(issueRaw != null)
		{
			float rquantity=issueRaw.getRquantity();

			if(rquantity>=irquantity)
			{
				float rquantity = issueRaw.getRquantity();
				issueRaw.setRquantity(rquantity-irquantity);
				hibernateTemplate.update(issueRaw);
			}
			
		}
		else
		{
			System.err.println("Not Found");
		}
	}*/
	
	public List<IssueRaw> issueRawMaterial()
	{
		List<IssueRaw> issueMaterials =hibernateTemplate.loadAll(IssueRaw.class);
		return issueMaterials;
	}
	
	@Transactional
	public void delIssueRaw(int irid) 
	{
		IssueRaw issueRaw = hibernateTemplate.get(IssueRaw.class, irid);
	    hibernateTemplate.delete(issueRaw);
	}
	
	
	
}
