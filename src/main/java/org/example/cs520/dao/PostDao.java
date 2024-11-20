package org.example.cs520.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.example.cs520.entity.Post;
import org.springframework.stereotype.Repository;

/**
 * @author Xinyuan Xu
 */
@Repository
public interface PostDao extends BaseMapper<Post> {
}
