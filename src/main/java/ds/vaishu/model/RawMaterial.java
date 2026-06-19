package ds.vaishu.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component

public class RawMaterial
{
	@Id
	
	private int rid;
	private String rname, runit;
	private float rcost, rquantity;
	public int getRid() {
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
	public String getRunit() {
		return runit;
	}
	public void setRunit(String runit) 
	{
		this.runit = runit;
	}
	public float getRcost() 
	{
		return rcost;
	}
	public void setRcost(float rcost) 
	{
		this.rcost = rcost;
	}
	public float getRquantity() 
	{
		return rquantity;
	}
	public void setRquantity(float rquantity) 
	{
		this.rquantity = rquantity;
	}
	/**
	 * @param rid
	 * @param rname
	 * @param runit
	 * @param rcost
	 * @param rquantity
	 */
	public RawMaterial(int rid, String rname, String runit, float rcost, float rquantity) 
	{
		super();
		this.rid = rid;
		this.rname = rname;
		this.runit = runit;
		this.rcost = rcost;
		this.rquantity = rquantity;
	}
	/**
	 * 
	 */
	public RawMaterial()
	{
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString()
	{
		return "RawMaterial [rid=" + rid + ", rname=" + rname + ", runit=" + runit + ", rcost=" + rcost + ", rquantity="
				+ rquantity + "]";
	}
	
	
}
