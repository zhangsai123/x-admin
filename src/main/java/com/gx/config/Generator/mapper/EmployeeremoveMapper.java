package com.gx.config.Generator.mapper;

import com.gx.config.Generator.model.Employeeremove;
import com.gx.config.Generator.model.EmployeeremoveExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EmployeeremoveMapper {
    long countByExample(EmployeeremoveExample example);

    int deleteByExample(EmployeeremoveExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Employeeremove record);

    int insertSelective(Employeeremove record);

    List<Employeeremove> selectByExample(EmployeeremoveExample example);

    Employeeremove selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Employeeremove record, @Param("example") EmployeeremoveExample example);

    int updateByExample(@Param("record") Employeeremove record, @Param("example") EmployeeremoveExample example);

    int updateByPrimaryKeySelective(Employeeremove record);

    int updateByPrimaryKey(Employeeremove record);
}