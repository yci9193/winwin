package winwin.dao;

import java.util.List;
import java.util.Map;

import winwin.dto.JobopenBasic;
import winwin.dto.SupportBoard;
import winwin.util.Paging;

public interface SupportDao {
	
	// support total Count
	public int totalCnt(Map<String, Object> param);
	
	// result total Count
	public int resultCnt(Map<String, Object> param);
	
	public List<SupportBoard> list(Map<String, Object> param);
	
	public SupportBoard detail(Map<String, Object> param);
	
	public List<SupportBoard> resultlist(Map<String, Object> param);
	
	public List<JobopenBasic> getTitle();

	public void emailupdate(List<Integer> jobOpenNo, List<String> userId);


}
