
package ds.vaishu.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import ds.vaishu.model.IssueProcessed;
import ds.vaishu.model.IssueRaw;
import ds.vaishu.model.ProcessedItem;

@Component
public class IssueProcessedDao
{
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public String toString()
	{
		return "IssueProcessedDao [hibernateTemplate=" + hibernateTemplate + "]";
	}

	/**
	 * 
	 */
	public IssueProcessedDao() 
	{
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param hibernateTemplate
	 */
	public IssueProcessedDao(HibernateTemplate hibernateTemplate) 
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
	public int addIssueProcessed(IssueProcessed issueprocessed) 
	{
		if(issueprocessed.getIpquantity() <= 0)
		{
			throw new IllegalArgumentException("Issue quantity must be greater than zero.");
		}
		
		ProcessedItem processedItem = hibernateTemplate.get(ProcessedItem.class, issueprocessed.getPid());
		if(processedItem == null)
		{
			throw new IllegalArgumentException("Processed item ID not found.");
		}
		
		float availableQuantity = processedItem.getPquantity();
		if(availableQuantity < issueprocessed.getIpquantity())
		{
			throw new IllegalArgumentException("Not enough processed item quantity available.");
		}
		
		processedItem.setPquantity(availableQuantity - issueprocessed.getIpquantity());
		hibernateTemplate.update(processedItem);
		
		int i=(Integer)hibernateTemplate.save(issueprocessed);
		return i;
	}
	
	@Transactional
	public List<IssueProcessed> getAllIssueProcessed() 
	{
		List<IssueProcessed> issueProcesseds=hibernateTemplate.loadAll(IssueProcessed.class);
		return issueProcesseds;
	}

	@Transactional
	public void delIssuePItem(int ipid)
	{
		IssueProcessed  issueProcessed  = hibernateTemplate.get(IssueProcessed.class, ipid) ;
		hibernateTemplate.delete(issueProcessed);
	}
	


}
