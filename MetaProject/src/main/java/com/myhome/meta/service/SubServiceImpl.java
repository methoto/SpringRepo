package com.myhome.meta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myhome.meta.dao.SubDao;


@Service
public class SubServiceImpl implements SubService {
   
   @Autowired
   private SubDao dao;


   
}