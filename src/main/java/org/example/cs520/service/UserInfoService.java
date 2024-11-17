package org.example.cs520.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.example.cs520.dto.UserOnlineDTO;
import org.example.cs520.entity.UserInfo;
import org.example.cs520.vo.*;
import org.springframework.web.multipart.MultipartFile;

/**
 * @author Xinyuan Xu
 */
public interface UserInfoService extends IService<UserInfo> {
    /**
     * 修改用户资料
     *
     * @param userInfoVO 用户资料
     */
    void updateUserInfo(UserInfoVO userInfoVO);

    /**
     * updateUserRole
     *
     * @param userRoleVO user role
     */
    void updateUserRole(UserRoleVO userRoleVO);

    /**
     * updateUserDisable
     *
     * @param userDisableVO disable info
     */
    void updateUserDisable(UserDisableVO userDisableVO);

    /**
     * listOnlineUsers
     *
     * @param conditionVO condition
     * @return online user list
     */
    PageResult<UserOnlineDTO> listOnlineUsers(ConditionVO conditionVO);

    /**
     * remove online user
     *
     * @param userInfoId 用户信息id
     */
    void removeOnlineUser(Integer userInfoId);
}
