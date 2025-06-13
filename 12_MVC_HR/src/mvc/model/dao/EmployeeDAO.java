package mvc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mvc.model.vo.EmployeeVO;
import mvc.mybatis.DBService;

public class EmployeeDAO {

	//전체 직원 목록 조회
	public static List<EmployeeVO> getList() {
		try (SqlSession ss = DBService.getFactory().openSession()) {
			return ss.selectList("hr.list");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
