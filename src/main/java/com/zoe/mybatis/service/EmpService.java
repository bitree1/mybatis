package com.zoe.mybatis.service;

import com.zoe.mybatis.entity.Emp;
import com.zoe.mybatis.mapper.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class EmpService {
    @Resource
    EmpMapper empMapper = null;

    public Emp findById(Integer empno){
        Emp emp = empMapper.findById(empno);
        return emp;
    }

    public List<Map> findDepts(){
        List<Map> list = empMapper.findDepts();
        return list;
    }


    public List<Map> findByDepts(Map param){
        List<Map> list = empMapper.findByDepts(param);
        return list;
    }

    //开启事务的方法
    @Transactional(rollbackFor = Exception.class)
    public void create(Emp emp){
        empMapper.creates(emp);
    }

}
