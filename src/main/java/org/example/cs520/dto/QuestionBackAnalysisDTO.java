package org.example.cs520.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author Xinyuan Xu
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class QuestionBackAnalysisDTO {
    private Integer id;

    private String questionTitle;

    private String questionDescription;

    /**
     * question type
     */
    private Integer type;

    private Integer status;

    /**
     * analysis
     */
    private AnalysisDTO analysisDTO;

    /**
     * Number of respondents
     */
    private Integer submitNums;
}

