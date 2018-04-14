package com.scut.psd.api.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LaunchSignal implements Serializable{

	private static final long serialVersionUID = -6355366966588578368L;

	/**
	 * x频率
	 */
	private String x_frequency;
	/**
	 * y频率
	 */
	private String y_frequency;
	/**
	 * z频率
	 */
	private String z_frequency;
	/**
	 * k频率
	 */
	private String k_frequency;
	/**
	 * m频率
	 */
	private String m_frequency;
		
}
