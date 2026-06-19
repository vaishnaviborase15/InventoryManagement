package ds.vaishu.model;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class IssueProcessed
{
	@Id
	private int ipid;
	private int pid;
	private String pname, ipname, pdate, ptime;
	float ipquantity;
	public int getIpid()
	{
		return ipid;
	}
	public void setIpid(int ipid)
	{
		this.ipid = ipid;
	}
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
	public String getIpname()
	{
		return ipname;
	}
	public void setIpname(String ipname)
	{
		this.ipname = ipname;
	}
	public String getPdate() 
	{
		return pdate;
	}
	public void setPdate(String pdate)
	{
		this.pdate = pdate;
	}
	public String getPtime() 
	{
		return ptime;
	}
	public void setPtime(String ptime) 
	{
		this.ptime = ptime;
	}
	public float getIpquantity() 
	{
		return ipquantity;
	}
	public void setIpquantity(float ipquantity) 
	{
		this.ipquantity = ipquantity;
	}
	/**
	 * @param ipid
	 * @param pid
	 * @param pname
	 * @param ipname
	 * @param pdate
	 * @param ptime
	 * @param ipquantity
	 */
	public IssueProcessed(int ipid, int pid, String pname, String ipname, String pdate, String ptime,
			float ipquantity)
	{
		super();
		this.ipid = ipid;
		this.pid = pid;
		this.pname = pname;
		this.ipname = ipname;
		this.pdate = pdate;
		this.ptime = ptime;
		this.ipquantity = ipquantity;
	}
	/**
	 * 
	 */
	public IssueProcessed() 
	{
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString()
	{
		return "IssueProcessed [ipid=" + ipid + ", pid=" + pid + ", pname=" + pname + ", ipname=" + ipname + ", pdate="
				+ pdate + ", ptime=" + ptime + ", ipquantity=" + ipquantity + "]";
	}
	
	
}
