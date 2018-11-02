package winwin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.Apply1Dao;
import winwin.dto.College;
import winwin.dto.GSchool;
import winwin.dto.HighSchool;
import winwin.dto.JobopenBasic;
import winwin.dto.Military;
import winwin.dto.University;
import winwin.dto.Member;
import winwin.dto.UserDetail;

@Service
public class Apply1ServiceImpl implements Apply1Service {

	@Autowired Apply1Dao dao;
	

	public JobopenBasic viewJobOpen(JobopenBasic jopopenBasic) {
		return dao.selectJobOpen(jopopenBasic);
	}
	
	
	public Member viewMember(Member member) {
		return dao.selectMember(member);
	}
	
	public void insertUserDetail(UserDetail userDetail) {
		dao.insertUserDetail(userDetail);
	}
	
	public UserDetail selectUserDetail(UserDetail userDetail) {
		return dao.selectUserDetail(userDetail);
	}
	
	public void updateUserDetail(UserDetail userDetail) {
		dao.updateUserDetail(userDetail);
	}
	

	public void insertMilitary(Military military) {
		dao.insertMilitary(military);
	}
	
	public Military selectMilitary(Military military) {
		return dao.selectMilitary(military);
	}
	
	public void updateMilitary(Military military) {
		dao.updateMilitary(military);
	}


	@Override
	public void insertHighSchool(HighSchool highSchool) {
		dao.insertHighSchool(highSchool);
		
	}


	@Override
	public void insertCollege(College college) {
		dao.insertCollege(college);
	}


	@Override
	public void insertUniversity(University university) {
		dao.insertUniversity(university);
	}


	@Override
	public void insertGSchool(GSchool gSchool) {
		dao.insertGSchool(gSchool);
	}


	@Override
	public HighSchool selectHighSchool(HighSchool highSchool) {
		return dao.selectHighSchool(highSchool);
	}


	@Override
	public College selectCollege(College college) {
		return dao.selectCollege(college);
	}


	@Override
	public University selectUniversity(University university) {
		return dao.selectUniversity(university);
	}


	@Override
	public GSchool selectGSchool(GSchool gSchool) {
		return dao.selectGSchool(gSchool);
	}


	@Override
	public void updateHighSchool(HighSchool highSchool) {
		dao.updateHighSchool(highSchool);
	}


	@Override
	public void updateCollege(College college) {
		dao.updateCollege(college);
	}


	@Override
	public void updateUniversity(University university) {
		dao.updateUniversity(university);
	}


	@Override
	public void updateGSchool(GSchool gSchool) {
		dao.updateGSchool(gSchool);
	}


	
}
