package com.whpu.dao;

import com.whpu.po.Class;
import com.whpu.po.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 管理员DAO层接口
 */
public interface ClassDao {
	/**
	 * 进行分页查询
	 */

	 //获取总条数
     public Integer totalCount(@Param("c_classname") String c_classname, @Param("c_classid") Integer c_classid, @Param("c_counsellor") String c_counsellor);
	 //获取用户列表
     public List<Class> getClassList(@Param("c_classname") String c_classname, @Param("c_classid") Integer c_classid, @Param("c_counsellor") String c_counsellor, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);

	public int deleteClass(Integer c_id);   //删除班级信息
	public int addClass(Class ucalss);    //添加班级信息
	public int updateClass(Class uclass); //修改班级信息
	public Class findClassById(Integer c_id);
	public List<Class> findClassStudent(@Param("uclass") Class uclass, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);//查询班级人员信息
	public List<Class> getAll();

	/**
	 * 学生总人数
	 * @param uclass
	 * @return
	 */
	public Integer findStudentTotal(Class uclass);
	public List<Student> getStudentList(Integer class_id, String class_name, Integer PageIndex, Integer PageSize);

	public List<Class> getClassList(Integer class_id, String class_name, Integer pageIndex, Integer PageSize);
}
