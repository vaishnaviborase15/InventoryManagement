package ds.vaishu.controller;

import java.util.List;



import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ds.vaishu.dao.IssueProcessedDao;
import ds.vaishu.dao.IssueRawDao;
import ds.vaishu.dao.ManagerDao;
import ds.vaishu.dao.ProcessedItemDao;
import ds.vaishu.dao.RawMaterialDao;
import ds.vaishu.model.IssueProcessed;
import ds.vaishu.model.IssueRaw;
import ds.vaishu.model.Manager;
import ds.vaishu.model.ProcessedItem;
import ds.vaishu.model.RawMaterial;

@Controller
public class InventController
{
	@Autowired
	Manager manager;
	
	@Autowired
	ManagerDao managerDao;
	
	@Autowired
	RawMaterial rawMaterial;
	
	@Autowired
	RawMaterialDao rawMaterialDao;
	
	@Autowired
	ProcessedItem processedItem; 
	
	@Autowired
	ProcessedItemDao processedItemDao; 
	
	@Autowired
	IssueRaw issueRaw;
	

	@Autowired
	IssueRawDao issueRawDao;
	
	@Autowired
	IssueProcessed issueProcessed;
	
	@Autowired
	IssueProcessedDao issueProcessedDao;
	
	
	
		//Login Page
		@RequestMapping("/")
		public String managerLogin()
		{
			
			return "index";	
		}
		
		//Login View Page
		@RequestMapping(path="/loginAdmin", method=RequestMethod.POST)
		public String AdminLogin(HttpServletRequest request, Model model)
		{
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			if(email.equals("admin@gmail.com") && password.equals(password))
			{
				model.addAttribute("em", email);
				return "welcome";
			}
			else
			{
				return "index";
			}	
		}
		
		
		//Home
		@RequestMapping("/log")
		public String openLogoutPage()
		{
			return "welcome";
		}
		
		//Home
		@RequestMapping("/logInd")
		public String openIndex()
		{
				return "index";
		}
		
		//Home
		@RequestMapping("/logRaw")
		public String openRaw()
		{
				return "107_WelcomeRaw";
		}
		
		//Home
		@RequestMapping("/logPro")
		public String openPro()
		{
				return "207_WelcomePro";
		}
		
		
		
		
		//Change Password
		@RequestMapping("/changeP")
		public String openChangePPage()
		{
				return "changePassword";
		}
		
		
		
		@RequestMapping(path="/changePassword",method=RequestMethod.POST)
		public String changePassword(HttpServletRequest request)
		{
			String email = request.getParameter("email");
			String npassword = request.getParameter("npassword");
			Manager manager = managerDao.getInfo(email);
			String setpass = manager.getPassword();
			setpass = npassword;
			manager.setPassword(setpass);
			managerDao.setPassword(manager);
			return "welcome";
			
			
		}
		
		//Raw Menu
		@RequestMapping("/welcomeRaw")
		public String openRawPage()
		{
			return "107_WelcomeRaw";
		}
		
		
		//Processed Item welcome
		@RequestMapping("/welcomePr")
		public String openProcessedPage()
		{
			return "207_WelcomePro";
		}
		
		//Add Raw Material
		@RequestMapping("/addRaw")
		public String addRawMat()
		{
			
			return "100_Add_Raw_Material";
		}
		
		//Add Raw Material Page
		@RequestMapping(path="/addRawPage", method=RequestMethod.POST)
		public String addRawMaterial(@ModelAttribute RawMaterial rawMaterial, HttpServletRequest request)
		{
			
			int i = rawMaterialDao.addRaw(rawMaterial);
			
			return "welcome";
		}
		
		//View Raw Material Page
		@RequestMapping("/viewRaw")
		public String viewRawMaterial(Model model)
		{
			List<RawMaterial> rawMaterials = rawMaterialDao.getAllRawMaterial();
			model.addAttribute("rawList",rawMaterials);
			return "101_View_Raw_Material";
		}
		
		//Delete Raw MAterial
		@RequestMapping(value = "/delRaw", method = RequestMethod.POST)
	    public String deleteRaw(@RequestParam("rid") int rid, Model model)
		{
	        rawMaterialDao.delRawMaterial(rid);
	        model.addAttribute("message", "Raw Material deleted successfully!");
	        return "welcome";
	    }
		
		//Update Raw Material
		@RequestMapping("/updRaw")
		public String updateRawMaterial()
		{
			
			return "103_Upd_Raw_Material";
		}
		
		//Open Update Raw Material Page
		@RequestMapping(path="/updateRawPage", method=RequestMethod.POST)
		public String updateRawMaterial(@ModelAttribute RawMaterial rawMaterial, HttpServletRequest request)
		{
			int rid = Integer.parseInt(request.getParameter("rid"));
			float addquantity = Float.parseFloat(request.getParameter("addquantity"));
			
			rawMaterialDao.updateRaw(rid,addquantity);
			
			return "welcome";
		}
		
		//Issue raw Material
		@RequestMapping("/issueRaw")
		public String openIssueRawPage()
		{
			return "104_Issue_Raw_Material";
		}
	 
		//Open Isssue Raw Material Page
		@RequestMapping(path="/issueNewRaw",method=RequestMethod.POST)
		public String openIssueNewRawPage(HttpServletRequest request,@ModelAttribute IssueRaw issueRaw, Model model)
		{
			try
			{
		 		int i=issueRawDao.addIssueRaw(issueRaw);
			}
			catch(IllegalArgumentException e)
			{
				model.addAttribute("error", e.getMessage());
				return "104_Issue_Raw_Material";
			}
			return "107_WelcomeRaw";
		}
		
		//View Issue raw Material Page
		@RequestMapping("/viewIssueRaw")
		public String viewIssueRawMaterial(Model model)
		{
			List<IssueRaw> issueMaterials = issueRawDao.issueRawMaterial();
			model.addAttribute("issueRawList",issueMaterials);
			return "105_View_Issue_RM";
		}
		
		//Delete Issue raw Material
		@RequestMapping(value = "/delIssueRaw", method = RequestMethod.POST)
	    public String deleteIssueRaw(@RequestParam("irid") int irid, Model model)
		{
	        issueRawDao.delIssueRaw(irid);
	        model.addAttribute("message", "Raw Material deleted successfully!");
	        return "welcome";
		}
		
	    //Show Unavailable RAw Material
		@RequestMapping("/showUnavRaw")
	    public String showUnavailableRawMaterials(Model model) 
		{
	        List<RawMaterial> rawMaterials = rawMaterialDao.getAllUnavailableRawMaterials();
	        model.addAttribute("unavRawList", rawMaterials);
	        return "106_Show_Unav_RM";
	    }
		
//******************************************************************************************************************************
		
		//Add Processed item
		@RequestMapping("/addPro")
		public String addProItem()
		{
			
			return "200_Add_Proc_Item";
		}
		
		//Add processed Item Page
		@RequestMapping(path="/addProItem", method=RequestMethod.POST)
		public String addProcessed(@ModelAttribute ProcessedItem processedItem, HttpServletRequest request)
		{
			
			int i = processedItemDao.addProMaterial(processedItem);
			
			return "welcome";
		}
		
		//View Processed Item
		@RequestMapping("/viewPI")
		public String viewProItem(Model model)
		{
			List<ProcessedItem> processedItems = processedItemDao.getAllProcessedMaterial();
			model.addAttribute("procList",processedItems);
			return "201_View_Proc_Item";
		}
		
		//delete Processed Item
		@RequestMapping(value = "/deletePI", method = RequestMethod.POST)
	    public String deleteProItem(@RequestParam("pid") int pid, Model model)
		{
			processedItemDao.delProcItems(pid);
	        model.addAttribute("message", "Processed Itemm deleted successfully!");
	        return "welcome";
	    }
		
		//Update Processed Item
		@RequestMapping("/updatePI")
		public String updateProItem()
		{
			
			return "203_Updt_Proc_Item";
		}
		
		//Open Update Processed Item Page
		@RequestMapping(path="/updateProItem", method=RequestMethod.POST)
		public String updateProItems(@ModelAttribute ProcessedItem processedItem, HttpServletRequest request)
		{
			int pid = Integer.parseInt(request.getParameter("pid"));
			float addquantity = Float.parseFloat(request.getParameter("addquantity"));
			
			processedItemDao.updateProcessedItems(pid,addquantity);
			
			return "welcome";
		}
		
		//Issue Processed Item Page
		@RequestMapping("/issueProcessed")
		public String openIssueProcessedPage()
		{
			return "204_Issue_Proc_Item";
		}
	 
		//Open Issue Processed Item Page 
		@RequestMapping(path="/issueNewProcessed",method=RequestMethod.POST)
		public String openIssueNewProcessedPage(HttpServletRequest request,@ModelAttribute IssueProcessed issueprocessed, Model model)
		{			 	
			try
			{
			    int i=issueProcessedDao.addIssueProcessed(issueprocessed);
			}
			catch(IllegalArgumentException e)
			{
				model.addAttribute("error", e.getMessage());
				return "204_Issue_Proc_Item";
			}
			return "207_WelcomePro";
		}
	 
		//View Isssue Processed Item page
	 	@RequestMapping("/viewIssueProcessed")
		public String openViewIssueProcessedPage(Model model)
		{
		 	List<IssueProcessed> issueProcesseds=issueProcessedDao.getAllIssueProcessed();
			model.addAttribute("issueProcessedList",issueProcesseds);
			return "205_View_Issue_PI";
		}
	 	
	 	//Delete Issue Processed Item Page
	 	@RequestMapping(value = "/deleteIssuePI", method = RequestMethod.POST)
	    public String deleteIssuePI(@RequestParam("ipid") int ipid, Model model)
	 	{
	 		issueProcessedDao.delIssuePItem(ipid);
	        model.addAttribute("message", "Processed Item deleted successfully!");
	        return "welcome";
	 	}
		
	 	//Show Unavailable Processed Item
		@RequestMapping("/showUnaPI")
	    public String showUnProItem(Model model) 
		{
	        List<ProcessedItem> processedItems = processedItemDao.getAllUnavProItems();
	        model.addAttribute("unavProList", processedItems);
	        return "206_Show_Unav_PI";
	    }
}
