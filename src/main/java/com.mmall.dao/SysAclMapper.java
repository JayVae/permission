package com.mmall.dao;

import com.mmall.beans.PageQuery;
import com.mmall.model.SysAcl;
import com.mmall.model.SysAclExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysAclMapper {
    long countByExample(SysAclExample example);

    int deleteByExample(SysAclExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SysAcl record);

    int insertSelective(SysAcl record);

    List<SysAcl> selectByExample(SysAclExample example);

    SysAcl selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SysAcl record, @Param("example") SysAclExample example);

    int updateByExample(@Param("record") SysAcl record, @Param("example") SysAclExample example);

    int updateByPrimaryKeySelective(SysAcl record);

    int updateByPrimaryKey(SysAcl record);

    int countByAclModuleId(@Param("aclModuleId") int aclModuleId);

    List<SysAcl> getPageByAclModuleId(@Param("aclModuleId") int aclModuleId,@Param("page") PageQuery page);

    int countByNameAndAclModuleId(@Param("aclModuleId") int aclModuleId, @Param("name") String name, @Param("id") Integer id);

    List<SysAcl> getAll();

    List<SysAcl> getByIdList(@Param("idList") List<Integer> idList);
}