package ds.vaishu.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class IssueRaw 
{
	@Id
	
	private int irid;
	private int rid;
	private String rname, irname, rdate, rtime;
	float irquantity;
	
	public int getIrid()
	{
		return irid;
	}
	/**
	 * @param irid
	 * @param rid
	 * @param rname
	 * @param irname
	 * @param rdate
	 * @param rtime
	 * @param irquantity
	 */
	public IssueRaw(int irid, int rid, String rname, String irname, String rdate, String rtime, float irquantity)
	{
		super();
		this.irid = irid;
		this.rid = rid;
		this.rname = rname;
		this.irname = irname;
		this.rdate = rdate;
		this.rtime = rtime;
		this.irquantity = irquantity;
	}
	@Override
	public String toString() 
	{
		return "IssueRaw [irid=" + irid + ", rid=" + rid + ", rname=" + rname + ", irname=" + irname + ", rdate="
				+ rdate + ", rtime=" + rtime + ", irquantity=" + irquantity + "]";
	}
	/**
	 * 
	 */
	public IssueRaw() 
	{
		super();
		// TODO Auto-generated constructor stub
	}
	public void setIrid(int irid) 
	{
		this.irid = irid;
	}
	public int getRid()
	{
		return rid;
	}
	public void setRid(int rid)
	{
		this.rid = rid;
	}
	public String getRname()
	{
		return rname;
	}
	public void setRname(String rname)
	{
		this.rname = rname;
	}
	public String getIrname()
	{
		return irname;
	}
	public void setIrname(String irname) 
	{
		this.irname = irname;
	}
	public String getRdate()
	{
		return rdate;
	}
	public void setRdate(String rdate) 
	{
		this.rdate = rdate;
	}
	public String getRtime() 
	{
		return rtime;
	}
	public void setRtime(String rtime)
	{
		this.rtime = rtime;
	}
	public float getIrquantity() 
	{
		return irquantity;
	}
	public void setIrquantity(float irquantity) 
	{
		this.irquantity = irquantity;
	}
	
}
