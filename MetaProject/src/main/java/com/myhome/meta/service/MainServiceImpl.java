package com.myhome.meta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myhome.meta.dao.JoinDao;
import com.myhome.meta.dao.MainDao;


@Service
public class MainServiceImpl implements MainService {
   
   @Autowired
   private MainDao dao;


   
}