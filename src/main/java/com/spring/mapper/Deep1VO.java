package com.spring.mapper;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Deep1VO {
	
	private int no;
	private String id;
	private String img;
	private MultipartFile uploadImg;

}
