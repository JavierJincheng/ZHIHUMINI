package com.zhihu.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 木木高 on 2017/7/25.
 */
public class PageUtil {
	public static void main(String[] args) {
		PageUtil p = new PageUtil();
		List list = p.getPage(10, 2);
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
	}

	public List getPage(Integer pageSize, Integer page) {
		Dbutil dbutil = new Dbutil();
		PreparedStatement ps = null;
		List list = new ArrayList();
		ResultSet rs = null;
		Connection conn = null;
		conn = dbutil.getCon();
		String sql = "select * from(select ROWNUM rn,\"t_user\".* from \"t_user\" " + "where ROWNUM<="
				+ (pageSize * page) + ") where rn >" + (pageSize * +(page - 1)) + "";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
