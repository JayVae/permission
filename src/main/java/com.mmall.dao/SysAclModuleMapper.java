package com.mmall.dao;

import com.mmall.model.SysAclModule;
import com.mmall.model.SysAclModuleExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysAclModuleMapper {
    long countByExample(SysAclModuleExample example);

    int deleteByExample(SysAclModuleExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SysAclModule record);

    int insertSelective(SysAclModule record);

    List<SysAclModule> selectByExample(SysAclModuleExample example);

    SysAclModule selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SysAclModule record, @Param("example") SysAclModuleExample example);

    int updateByExample(@Param("record") SysAclModule record, @Param("example") SysAclModuleExample example);

    int updateByPrimaryKeySelective(SysAclModule record);

    int updateByPrimaryKey(SysAclModule record);

    int countByNameAndParentId(@Param("parentId") Integer parentId, @Param("name") String aclModuleName, @Param("id") Integer id);

    List<SysAclModule> getChildAclModuleListByLevel(@Param("level") String level);

    void batchUpdateLevel(@Param("aclModuleList") List<SysAclModule> aclModuleList);

    List<SysAclModule> getAllAclModule();

    int countByParentId(@Param("aclModuleId") Integer aclModuleId);
}