package com.ezen.teaStore.repo.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ezen.teaStore.domain.TradiTea;
import com.ezen.teaStore.repo.TradiTeaRepo;

//@formatter:off
@Repository
public class TradiTeaMaria implements TradiTeaRepo {
	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;

	@Override
	public List<TradiTea> getAllTradiTeas() {
		var params = new HashMap<String, Object>();
		String query = "SELECT * FROM 전통차";
		List<TradiTea> result = jdbcTemplate.query(query, 
				params, new TradiTeaMapper());
		return result;
	}
	
	private static final class TradiTeaMapper 
			implements RowMapper<TradiTea> {
		@Override
		public TradiTea mapRow(ResultSet rs, int rowNum) 
				throws SQLException {
			TradiTea tradiTea = new TradiTea();
			int idx = 1;
			
			tradiTea.setTeaID(rs.getInt(idx++));
			tradiTea.setTeaName(rs.getString(idx++));
			tradiTea.setStock(rs.getInt(idx++));
			tradiTea.setProdDate(rs.getDate(idx++));
			tradiTea.setAmount(rs.getString(idx++));
			tradiTea.setPrice(rs.getDouble(idx++));
			tradiTea.setProdDesc(rs.getString(idx++));
			return tradiTea;
		}
	}	
}
