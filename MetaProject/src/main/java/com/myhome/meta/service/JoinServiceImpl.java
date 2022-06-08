package com.myhome.meta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myhome.meta.dao.JoinDao;


@Service
public class JoinServiceImpl implements JoinService {
   
   @Autowired
   private JoinDao dao;


   
}