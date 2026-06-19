 package ds.vaishu.dao;

import java.util.List;



import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import ds.vaishu.model.RawMaterial;

@Component
public class RawMaterialDao
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
	public RawMaterialDao(HibernateTemplate hibernateTemplate)
	{
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	/**
	 * 
	 */
	public RawMaterialDao() 
	{
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() 
	{
		return "RawMaterialDao [hibernateTemplate=" + hibernateTemplate + "]";
	}

	
	@Transactional
	public int addRaw(RawMaterial rawMaterial) 
	{
		int i = (Integer) hibernateTemplate.save(rawMaterial);
		return i;
	}

	
	@Transactional
	public List<RawMaterial> getAllRawMaterial()
	{
		
		List<RawMaterial> rawMaterials=hibernateTemplate.loadAll(RawMaterial.class);
		return rawMaterials;
	}

	

	@Transactional
	public void delRawMaterial(int rid)
	{
		RawMaterial rawMaterial = hibernateTemplate.get(RawMaterial.class, rid);
	    hibernateTemplate.delete(rawMaterial);
	}


	@Transactional
	public void updateRaw(int rid, float addquantity) 
	{
		RawMaterial rawMaterial = hibernateTemplate.get(RawMaterial.class, rid);
		if(rawMaterial != null)
		{
			float rquantity = rawMaterial.getRquantity();
			rawMaterial.setRquantity(rquantity+addquantity);
			hibernateTemplate.update(rawMaterial);
		}
		else
		{
			System.err.println("Not Found");
		}
	}
	
	@Transactional
	public List<RawMaterial>getAllUnavailableRawMaterials()
	{
		List<RawMaterial>rawMaterials = (List<RawMaterial>) hibernateTemplate.find("from RawMaterial where rquantity <= 0");
		return rawMaterials;
	}
	
	

}
