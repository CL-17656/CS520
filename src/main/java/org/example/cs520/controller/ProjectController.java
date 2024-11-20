package org.example.cs520.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.example.cs520.annotation.OptLog;
import org.example.cs520.dto.ProjectBackDTO;
import org.example.cs520.dto.ProjectDTO;
import org.example.cs520.dto.QuestionBackAnalysisDTO;
import org.example.cs520.dto.QuestionPostDTO;
import org.example.cs520.service.ProjectService;
import org.example.cs520.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

import static org.example.cs520.constant.OptTypeConst.SAVE_OR_UPDATE;

/**
 * @author Xinyuan Xu
 */
@Api(tags = "projects")
@RestController
public class ProjectController {
    @Autowired
    private ProjectService projectService;

    /**
     * save/update project
     *
     * @param projectVO project info
     * @return {@link Result <>}
     */
    @OptLog(optType = SAVE_OR_UPDATE)
    @ApiOperation(value = "saveOrUpdateProject")
    @PostMapping("/admin/projects")
    public Result<?> saveOrUpdateProject(@Valid @RequestBody ProjectVO projectVO) {
        projectService.saveOrUpdateProject(projectVO);
        return Result.ok();
    }

    /**
     * search backend project
     *
     * @param condition condition
     * @return {@link Result<ProjectBackDTO>} project list
     */
    @ApiOperation(value = "search backend project")
    @GetMapping("/admin/projects")
    public Result<PageResult<ProjectBackDTO>> listProjectBacks(ConditionVO condition) {
        return Result.ok(projectService.listProjectBacks(condition));
    }

    /**
     * get backend project info by id
     *
     * @param projectId project id
     * @return {@link Result} project info
     */
    @ApiOperation(value = "get backend project info by id")
    @ApiImplicitParam(name = "projectId", value = "项目id", required = true, dataType = "Integer")
    @GetMapping("/admin/project/{projectId}/info")
    public Result<ProjectBackDTO> getProjectBackById(@PathVariable("projectId") Integer projectId) {
        return Result.ok(projectService.getProjectBackById(projectId));
    }

    /**
     * get project info by id
     * @param projectId project id
     * @param password password
     * @return {@link Result} project info
     */
    @ApiOperation(value = "get project info by id")
    @ApiImplicitParam(name = "projectId", value = "project id", required = true, dataType = "Integer")
    @GetMapping("/project/{projectId}/info")
    public Result<ProjectDTO> getProjectById(@PathVariable("projectId") Integer projectId,
                                             @RequestParam(required = false, defaultValue = "1") String password) {
        return Result.ok(projectService.getProjectById(projectId, password));
    }

    /**
     * save/update posts
     *
     * @param postVO post info
     * @return {@link Result <>}
     */
    @OptLog(optType = SAVE_OR_UPDATE)
    @ApiOperation(value = "save/update posts")
    @PostMapping("/projects/post")
    public Result<?> saveOrUpdateProjectPost(@Valid @RequestBody PostVO postVO) {
        return Result.ok(projectService.saveOrUpdateProjectPost(postVO));
    }

    /**
     * get project info by id
     *
     * @param projectId project id
     * @return {@link Result} project info
     */
    @ApiOperation(value = "get project info by id")
    @ApiImplicitParam(name = "projectId", value = "project id", required = true, dataType = "Integer")
    @GetMapping("/project/{projectId}/history")
    public Result<List<QuestionPostDTO>> getProjectHistoryById(@PathVariable("projectId") Integer projectId) {
        return Result.ok(projectService.getProjectHistoryById(projectId));
    }

    /**
     * get backend project info by id
     *
     * @param projectId project id
     * @return {@link Result} project info
     */
    @ApiOperation(value = "get backend project info by id")
    @ApiImplicitParam(name = "projectId", value = "project id", required = true, dataType = "Integer")
    @GetMapping("/admin/project/{projectId}/analysis")
    public Result<List<QuestionBackAnalysisDTO>> getProjectBackAnalysisById(@PathVariable("projectId") Integer projectId) {
        return Result.ok(projectService.getProjectBackAnalysisById(projectId));
    }
}
