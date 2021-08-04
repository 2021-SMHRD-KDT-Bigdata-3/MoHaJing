package com.spring.mapper;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class TestVO {

	private String img;
	private String id;
	private MultipartFile uploadimg;
}
