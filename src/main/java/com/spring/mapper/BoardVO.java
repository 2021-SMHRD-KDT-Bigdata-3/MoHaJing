package com.spring.mapper;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class BoardVO {
	private int no;
	private String id;
	private String title;
	private String content;
	private String file;
	private String day;
	private MultipartFile uploadFile;

}
