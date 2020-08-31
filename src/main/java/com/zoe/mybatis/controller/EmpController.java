package com.zoe.mybatis.controller;

import com.zoe.mybatis.entity.Emp;
import com.zoe.mybatis.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RestController
public class EmpController {

    @Autowired
    private EmpService empService=null;

    @RequestMapping("/emp/{id}")
    public Emp findById(@PathVariable("id") Integer id){

        return empService.findById(id);
    }
    @RequestMapping("/emp/list")
    public List<Map> findDepts(){
        List<Map> list = empService.findDepts();
        return list;
    }

    @RequestMapping("/emp/findBydepts")
    public List<Map> findByDepts(String pdname ,Float sal){
        HashMap<String,Object> map = new HashMap<String,Object>();
        map.put("pdname",pdname);
        map.put("psal",sal);
        List<Map> list = empService.findByDepts(map);
        return list;
    }
    @RequestMapping("/emp/add")
    public Emp create(){
        Emp emp = new Emp();
        emp.setEname("zoe1");
        emp.setJob("sal");
        emp.setSal(4000f);
        emp.setHiredate(new Date());
        emp.setComm(20000f);
       // emp.setMgr(null);
        empService.create(emp);
        return  emp;
    }


    @RequestMapping("/emp/update")
    public Emp update(){
        Emp emp = empService.findById(1);
        emp.setSal(1400f);
        empService.update(emp);
        return  emp;
    }

    @RequestMapping("/emp/del")
    public String delete(Integer empno){
        empService.delete(empno);
        return  "success";
    }


}
