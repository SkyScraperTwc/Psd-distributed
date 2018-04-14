package com.scut.psd.api.entity;

import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CalculateData implements Serializable{

    private static final long serialVersionUID = 595229400632312351L;
    /**
     * 主键
     */
    @Id
    private String id;
    /**
     * 用户
     */
    @DBRef
    private User user;
    /**
     * 算法参数
     */
    private Algorithm algorithm;
    /**
     * 信号参数
     */
    private LaunchSignal launchSignal;
    /**
     * 运算结果
     */
    private Map<String,List<String>> resultMap;
    /**
     * 创建时间
     */
    private String createTime;

    public CalculateData(User user, LaunchSignal launchSignal, Algorithm algorithm, Map<String,List<String>> resultMap, String createTime){
        this.user = user;
        this.algorithm = algorithm;
        this.launchSignal = launchSignal;
        this.resultMap = resultMap;
        this.createTime = createTime;
    }

    public CalculateData(LaunchSignal launchSignal, Algorithm algorithm, Map<String,List<String>> resultMap){
        this.algorithm = algorithm;
        this.launchSignal = launchSignal;
        this.resultMap = resultMap;
    }
}
