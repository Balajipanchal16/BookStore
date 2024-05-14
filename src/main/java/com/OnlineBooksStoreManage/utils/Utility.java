package com.OnlineBooksStoreManage.utils;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.web.multipart.MultipartFile;

public class Utility {
	
	public static String uploadFile(MultipartFile file) {
		
		String uploadPath = "";
		if (file.isEmpty()) {
			uploadPath = "Please select a file to upload.";
        }
		
        try {
        	uploadPath = "D:\\BookStoreFiles\\" + file.getOriginalFilename();
            Path path = Paths.get(uploadPath);
            file.transferTo(path);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return uploadPath;
	}


}
