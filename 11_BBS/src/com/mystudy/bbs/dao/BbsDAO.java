package com.mystudy.bbs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.bbs.mybatis.DBService;
import com.mystudy.bbs.vo.BbsVO;

public class BbsDAO {

	// 게시글(BBS)의 전체 건수 조회
	public static int getTotalCount() {
		int totalCount = -1;
		try (SqlSession ss = DBService.getFactory().openSession();) {
			totalCount = ss.selectOne("BBS.totalCount");
		} catch (Exception e) {
			// totalCount = -1;
			e.printStackTrace();
		}
		return totalCount;
	}

	// 페이지에 해당하는 글목록(게시글) 조회
	public static List<BbsVO> getList(int begin, int end) {
		try (SqlSession ss = DBService.getFactory().openSession();) {
			Map<String, Integer> map = new HashMap<>();
			map.put("begin", begin);
			map.put("end", end);

			ss.selectList("BBS.list", map);
		} catch (Exception e) {
			e.printStackTrace();

		}
		return null;
	}

}
