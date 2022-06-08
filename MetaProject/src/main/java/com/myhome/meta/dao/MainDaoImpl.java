package com.myhome.meta.dao;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDaoImpl implements MainDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

}
