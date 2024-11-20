package org.example.cs520.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Xinyuan Xu
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ApiModel(description = "answer")
public class PostVO {
    /**
     * answer id
     */
    @ApiModelProperty(name = "id", value = "answer id", dataType = "Integer")
    private Integer id;

    @ApiModelProperty(name = "projectId", value = "project id", dataType = "Integer")
    private Integer projectId;

    @ApiModelProperty(name = "answer", value = "answer", dataType = "String")
    private String answer;

    @ApiModelProperty(name = "isDelete", value = "is delete", dataType = "Boolean")
    private Boolean isDelete;
}
