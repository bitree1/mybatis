package com.zoe.mybatis.mapper;

import com.zoe.mybatis.entity.Emp;

import java.util.List;
import java.util.Map;

public interface EmpMapper {

    public Emp findById(Integer empno);

    //使用List<Map>返回list数据
    public List<Map> findDepts();

    //使用map对象进行多参数返回
    public List<Map> findByDepts(Map param);

    //新增
    public void creates(Emp emp);
}
