package com.dao;

import com.entity.GonglueEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.GonglueView;

/**
 * 旅游攻略 Dao 接口
 *
 * @author 
 */
public interface GonglueDao extends BaseMapper<GonglueEntity> {

   List<GonglueView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
