package com.zhihu.util;

import java.lang.reflect.Field;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CRUDUtil {

	public static int update(String sql, Object[] params) {
		Connection conn = new Dbutil().getCon();
		PreparedStatement pst = null;
		try {
			pst = conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pst.setObject(i + 1, params[i]);
				}
			}
			int result = pst.executeUpdate();
			conn.commit();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			release(null, pst, conn);
		}
	}

	public static <T> T selectOneModel(String sql, Object[] params, Class<T> clazz) throws Exception {
		T o = clazz.newInstance();
		Connection conn = new Dbutil().getCon();
		PreparedStatement pst = null;
		ResultSet rs = null;
		Dbutil db = new Dbutil();
		try {
			conn = db.getCon();
			pst = conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pst.setObject(i + 1, params[i]);
				}
			}
			rs = pst.executeQuery();
			if (!rs.next()) {
				return null;
			}
			ResultSetMetaData rd = rs.getMetaData();
			int columnCount = rd.getColumnCount();
			for (int i = 0; i < columnCount; i++) {
				// String fieldName = rd.getColumnName(i + 1);
				String fieldName = rd.getColumnLabel(i + 1);
				Object filedValue = rs.getObject(i + 1);
				Field f = clazz.getDeclaredField(fieldName);
				f.setAccessible(true);
				f.set(o, filedValue);
			}
			return o;
		} finally {
			release(rs, pst, conn);
		}
	}

	public static int add(String sql, Object[] param) {
		Connection conn = new Dbutil().getCon();
		PreparedStatement pst = null;
		try {
			pst = conn.prepareStatement(sql);
			for (int i = 0; i < param.length; i++) {
				pst.setObject(i + 1, param[i]);
			}
			int result = pst.executeUpdate();
			conn.commit();
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}

	public static int delete(String sql, Object[] param) {
		Connection conn = new Dbutil().getCon();
		PreparedStatement pst = null;
		try {
			pst = conn.prepareStatement(sql);
			for (int i = 0; i < param.length; i++) {
				pst.setObject(i + 1, param[i]);
			}
			int result = pst.executeUpdate();
			conn.commit();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	/**
	 * 返回一条记录 （可以进行链表查询）
	 *
	 * @param sql
	 * @param params
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public static <V> Map<String, V> selectOneRecord(String sql, Object[] params) throws Exception {
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		Dbutil db = new Dbutil();
		try {
			conn = db.getCon();
			pst = conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pst.setObject(i + 1, params[i]);
				}
			}
			rs = pst.executeQuery();
			if (!rs.next()) {
				return null;
			}
			ResultSetMetaData rd = rs.getMetaData();// 获取元数据
			int columnCount = rd.getColumnCount();
			Map<String, V> map = new HashMap<>();
			for (int i = 0; i < columnCount; i++) {
				// String fieldName = rd.getColumnName(i + 1);// 获取列的名称
				String fieldName = rd.getColumnLabel(i + 1);// 获取sql as后的值
				Object filedValue = rs.getObject(i + 1);
				map.put(fieldName, (V) filedValue);
			}
			return map;
		} finally {
			release(rs, pst, conn);
		}
	}

	/**
	 * 查询列表 不能链表查询
	 * 
	 * @param sql
	 * @param params
	 * @param clazz
	 * @return
	 * @throws Exception
	 */
	public static <T> List<T> selectListModel(String sql, Object[] params, Class<T> clazz) throws Exception {
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		Dbutil db = new Dbutil();
		try {
			conn = db.getCon();
			pst = conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pst.setObject(i + 1, params[i]);
				}
			}
			rs = pst.executeQuery();
			List<T> list = new ArrayList<>();
			while (rs.next()) {
				ResultSetMetaData rd = rs.getMetaData();// 获取元数据
				int columnCount = rd.getColumnCount();
				T o = clazz.newInstance();
				for (int i = 0; i < columnCount; i++) {
					// String fieldName = rd.getColumnName(i + 1);// 获取列的名称
					String fieldName = rd.getColumnLabel(i + 1);// 获取sql as后的值
					Object filedValue = rs.getObject(i + 1);
					Field f = clazz.getDeclaredField(fieldName);
					f.setAccessible(true);// 解决 private 域不可见的问题
					f.set(o, filedValue);
				}
				list.add(o);
			}
			return list;
		} finally {
			release(rs, pst, conn);
		}
	}

	/**
	 * 查询 列表 可连表查询
	 * 
	 * @param sql
	 * @param params
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public static <V> List<Map<String, V>> selectListRecord(String sql, Object[] params) throws Exception {
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		Dbutil db = new Dbutil();
		try {
			conn = db.getCon();
			pst = conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pst.setObject(i + 1, params[i]);
				}
			}
			rs = pst.executeQuery();
			List<Map<String, V>> list = new ArrayList<>();
			while (rs.next()) {
				ResultSetMetaData rd = rs.getMetaData();// 获取元数据
				int columnCount = rd.getColumnCount();
				Map<String, V> map = new HashMap<>();
				for (int i = 0; i < columnCount; i++) {
					// String fieldName = rd.getColumnName(i + 1);// 获取列的名称
					String fieldName = rd.getColumnLabel(i + 1);// 获取sql as后的值
					Object filedValue = rs.getObject(i + 1);
					map.put(fieldName, (V) filedValue);
				}
				list.add(map);
			}
			return list;
		} finally {
			release(rs, pst, conn);
		}
	}

	private static void release(ResultSet rs, PreparedStatement pst, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (pst != null) {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
