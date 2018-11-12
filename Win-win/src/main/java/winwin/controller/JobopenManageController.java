package winwin.controller;

import java.util.List;
import java.util.Map;

import javax.print.attribute.standard.JobKOctetsProcessed;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import winwin.dto.JobopenBasic;
import winwin.service.JobopenService;
import winwin.util.Paging;

@Controller
@RequestMapping(value="/jobOpen")
public class JobopenManageController {
	
	@Autowired JobopenService jobopenService;
	
	private static final Logger logger = LoggerFactory.getLogger(JobopenManageController.class);

	@RequestMapping(value="/manage", method=RequestMethod.GET)
	public void manage(Model model,
			@RequestParam(required=false, defaultValue="0") int curPage,
			@RequestParam(required=false, defaultValue="15") int listCount,
			@RequestParam(required=false, defaultValue="10") int pageCount) {			
		
//		
//		Paging paging = jobopenService.getPaging(curPage, listCount, pageCount);
//		model.addAttribute("paging", paging);
//		
//		List<JobopenBasic> list = jobopenService.selectBasic(paging);
//		System.out.println("===============");
//		logger.info(list.toString());
//		System.out.println("===============");
//
//		
//		model.addAttribute("list", list);
		
	}
	
	@ResponseBody
	@RequestMapping(value="/manage", method=RequestMethod.POST)
	public Paging manageAjax(Model model,
			@RequestParam(required=false, defaultValue="0") int curPage,
			@RequestParam(required=false, defaultValue="15") int listCount,
			@RequestParam(required=false, defaultValue="10") int pageCount,
			@RequestParam(required=false, defaultValue="전체 확인") String status) {
		
		
		
		
		Paging paging = jobopenService.getPaging(curPage, listCount, pageCount);
		paging.setStatus(status);
		
		System.out.println(paging);
		List<JobopenBasic> list = jobopenService.selectBasic(paging);
		
		
		paging.setList(list);
		
		return paging;
	}
	
	@RequestMapping(value="/jo_delete", method=RequestMethod.POST)
	public String manageDelete(int jobopenNo) {
		System.out.println("에이젝스 성공");
		System.out.println(jobopenNo);
		
		jobopenService.deleteJobopen(jobopenNo);
		
		return "/jobOpen/manage";
	}
	
	@RequestMapping(value="/jo_status", method=RequestMethod.POST)
	public String manageStatus(JobopenBasic jobopenBasic) {
		System.out.println("에이젝스 성공");
		System.out.println(jobopenBasic);
		
		jobopenService.updateStatusByNo(jobopenBasic);
		
		return "/jobOpen/manage";
	}
	
}