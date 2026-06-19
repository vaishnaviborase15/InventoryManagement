package ds.vaishu.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import ds.vaishu.model.IssueRaw;
import ds.vaishu.model.ProcessedItem;
import ds.vaishu.model.RawMaterial;

@Component
public class ProcessedItemDao
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
	public ProcessedItemDao(HibernateTemplate hibernateTemplate)
	{
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	/**
	 * 
	 */
	public ProcessedItemDao()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() 
	{
		return "ProcessedItemDao [hibernateTemplate=" + hibernateTemplate + "]";
	}

	@Transactional
	public int addProMaterial(ProcessedItem processedItem)
	{
			int i = (Integer) hibernateTemplate.save(processedItem);
			return i;	
	}

	@Transactional
	public List<ProcessedItem> getAllProcessedMaterial() 
	{
		List<ProcessedItem> processedItems =hibernateTemplate.loadAll(ProcessedItem.class);
		return processedItems;
	}
	
	
	@Transactional
	public void delProcItems(int pid)
	{
		ProcessedItem processedItem = hibernateTemplate.get(ProcessedItem.class, pid);
		hibernateTemplate.delete(processedItem);
	}

	@Transactional
	public void updateProcessedItems(int pid, float addquantity)
	{
		ProcessedItem processedItem = hibernateTemplate.get(ProcessedItem.class, pid);
		if(processedItem != null)
		{
			float pquantity = processedItem.getPquantity();
			processedItem.setPquantity(pquantity+addquantity);
			hibernateTemplate.update(processedItem);
		}
		else
		{
			System.err.println("Not Found");
		}
	}


	@Transactional
	public List<ProcessedItem> getAllUnavProItems() 
	{
		List<ProcessedItem>processedItems = (List<ProcessedItem>) hibernateTemplate.find("from ProcessedItem where pquantity <= 0");
		return processedItems;
	}
	
	
	
}
