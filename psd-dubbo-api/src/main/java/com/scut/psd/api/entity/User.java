package com.scut.psd.api.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable {

	private static final long serialVersionUID = 410649390961344546L;
	/**
	 * 主键
	 */
	@Id
	private String id;
	/**
	 * 名字
	 */
	private String username;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 手机号码
	 */
	private String mobile;
	/**
	 * 邮箱地址
	 */
	private String email;
	/**
	 * 创建时间
	 */
	private Date createTime;

}
