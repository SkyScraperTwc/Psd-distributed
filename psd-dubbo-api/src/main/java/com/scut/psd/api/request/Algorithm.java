package com.scut.psd.api.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Algorithm implements Serializable{

    private static final long serialVersionUID = -8535083826148599224L;

    /**
     * 算法种类
     */
	private String algorithmType;
    /**
     * a参数
     */
    private String a_param;
    /**
     * b参数
     */
    private String b_param;
    /**
     * c参数
     */
    private String c_param;

}
