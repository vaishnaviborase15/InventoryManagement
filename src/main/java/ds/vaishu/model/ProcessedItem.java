package ds.vaishu.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component

public class ProcessedItem 
{
	@Id
	
	private int pid;
	private String pname, punit;
	private float pcost, pquantity;
	
	public int getPid() 
	{
		return pid;
	}
	public void setPid(int pid) 
	{
		this.pid = pid;
	}
	public String getPname() 
	{
		return pname;
	}
	public void setPname(String pname)
	{
		this.pname = pname;
	}
	public String getPunit()
	{
		return punit;
	}
	public void setPunit(String punit)
	{
		this.punit = punit;
	}
	public float getPcost()
	{
		return pcost;
	}
	public void setPcost(float pcost) 
	{
		this.pcost = pcost;
	}
	public float getPquantity()
	{
		return pquantity;
	}
	public void setPquantity(float pquantity) 
	{
		this.pquantity = pquantity;
	}
	/**
	 * @param pid
	 * @param pname
	 * @param punit
	 * @param pcost
	 * @param pquantity
	 */
	public ProcessedItem(int pid, String pname, String punit, float pcost, float pquantity) 
	{
		super();
		this.pid = pid;
		this.pname = pname;
		this.punit = punit;
		this.pcost = pcost;
		this.pquantity = pquantity;
	}
	/**
	 * 
	 */
	public ProcessedItem()
	{
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString()
	{
		return "ProcessedItem [pid=" + pid + ", pname=" + pname + ", punit=" + punit + ", pcost=" + pcost
				+ ", pquantity=" + pquantity + "]";
	}
	
	
}
