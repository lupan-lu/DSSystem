package com.whpu.service.impl;

import  com.whpu.po.Class;
import com.whpu.dao.ClassDao;
import com.whpu.po.PageInfo;
import com.whpu.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 用户Service接口实现类
 */
@Service("classService")
@Transactional
public class ClassServiceImpl implements ClassService {
	// classDao
	@Autowired
	private ClassDao classDao;


	//分页查询
	public PageInfo<Class> findPageInfo(String c_classname, String c_counsellor, Integer c_classid, Integer pageIndex, Integer pageSize) {
		PageInfo<Class> pi = new PageInfo<Class>();
		pi.setPageIndex(pageIndex);
		pi.setPageSize(pageSize);
		//获取总条数
		Integer totalCount = classDao.totalCount(c_classname,c_classid,c_counsellor);
		if (totalCount>0){
			pi.setTotalCount(totalCount);
			//每一页显示班级信息数
			//currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
		List<Class> classList =	classDao.getClassList(c_classname,c_classid,c_counsellor,
				     (pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
		  pi.setList(classList);
		}
		return pi;
	}


	public List<Class> getAll(){
		List<Class> classList = classDao.getAll();
		return  classList;
	}

	//通过id删除班级信息

	public int deleteClass(Integer c_id) {
		return classDao.deleteClass(c_id);
	}

	//添加班级信息

	public int addClass(Class uclass) {
		return classDao.addClass(uclass);
	}


	public Class findClassById (Integer c_id){
		Class c = classDao.findClassById(c_id);
		return  c;
	}
	//修改班级信息

	public int updateClass(Class uclass) {
		return classDao.updateClass(uclass);
	}

	//查询宿舍人员信息
	public PageInfo<Class> findClassStudent(Class uclass,Integer pageIndex, Integer pageSize) {
		PageInfo<Class> pi = new PageInfo<Class>();
		pi.setPageIndex(pageIndex);
		pi.setPageSize(pageSize);
		//获取总条数
		Integer totalCount = classDao.findStudentTotal(uclass);
		if (totalCount>0){
			pi.setTotalCount(totalCount);
			//每一页显示班级信息数
			//currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
			List<Class> studentList =	classDao.findClassStudent(uclass,
					(pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
			pi.setList(studentList);
		}
		return pi;
	}
}
