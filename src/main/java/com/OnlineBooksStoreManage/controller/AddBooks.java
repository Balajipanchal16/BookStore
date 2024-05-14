package com.OnlineBooksStoreManage.controller;


import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.OnlineBooksStoreManage.entities.Book;
import com.OnlineBooksStoreManage.repositry.Addbooksrepo;
import com.OnlineBooksStoreManage.utils.Utility;

@Controller
public class AddBooks {
	@Autowired
	private Addbooksrepo adbk;
	
	
	
	/*
	 * @Autowired private UserAdminrepo objj;
	 */
	
	
	@PostMapping("/addbook")
	public String addBooks(@ModelAttribute Book bk, @RequestParam("bookImage") MultipartFile imgFile,@RequestParam("bookPdf") MultipartFile pdfFile, RedirectAttributes redirectAttributes)
	{
		String imgUrl =  Utility.uploadFile(imgFile);
		String pdfUrl =  Utility.uploadFile(pdfFile);
		if(imgUrl.startsWith("Please select ") || pdfUrl.startsWith("Please select ")) {
			redirectAttributes.addFlashAttribute("message", "Please select a file to upload.");
            return "redirect:/login";
		}
		
		bk.setImgUrl(imgUrl);
		bk.setPdfUrl(pdfUrl);
		
		System.out.println(bk);
		adbk.save(bk);
		return "AdminPages";
	}
	
	
	
	
//	@GetMapping("/show/{fileName}")
//    public void showFile(@PathVariable("fileName") String fileName, HttpServletResponse response) {
//        try {
//            File file = new File(UPLOAD_DIR + fileName);
//            if (file.exists()) {
//                response.setContentType(Files.probeContentType(file.toPath()));
//                FileInputStream fis = new FileInputStream(file);
//                OutputStream out = response.getOutputStream();
//                byte[] buffer = new byte[1024];
//                int len;
//                while ((len = fis.read(buffer)) != -1) {
//                    out.write(buffer, 0, len);
//                }
//                fis.close();
//            } else {
//                response.sendError(HttpServletResponse.SC_NOT_FOUND);
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
	
	
	@RequestMapping("/datafetchbook")
	public String fetch(Model m)
	{
		List<Book> books=adbk.findAll();
		System.out.println(books);
		m.addAttribute("bookdatafetch", books);
		return "datafetchOfBooks";
	}
	@RequestMapping("delete/{bookId}")
	public String DeleteRecord(@PathVariable long bookId)
	{
		adbk.deleteById(bookId);
		return "redirect:/datafetchbook";
	}
	@RequestMapping("/{bookId}")
	public String editBookData(@PathVariable long bookId,Model m)
	{
		Book ob=adbk.findById(bookId).orElse(null);
		m.addAttribute("foredit", ob);
		return "editbookdata";
	}
	@RequestMapping("viewDatails/{bookId}")
	public String viewDetials(@PathVariable long bookId,Model m)
	{
		Book book=adbk.findById(bookId).orElse(null);
		m.addAttribute("foredit", book);
		return "ViewDetails";
	}
//	@PathVariable long bookId,@ModelAttribute Book ob,@RequestParam("bookImage") MultipartFile fileimg,@RequestParam("bookPdf") MultipartFile pdffile,RedirectAttributes redirectAttributes
	@RequestMapping("/edit/{bookId}")
	public String editActualData(@PathVariable long bookId,@ModelAttribute Book ob)
	{
	
		Book aa=adbk.findById(bookId).orElse(null);
//		String imgUrl1 =  Utility.uploadFile(fileimg);
//		String pdfUrl1 =  Utility.uploadFile(pdffile);
//		if(imgUrl1.startsWith("Please select ") || pdfUrl1.startsWith("Please select ")) {
//			redirectAttributes.addFlashAttribute("message", "Please select a file to upload.");
//            return "redirect:/login";
//		}
		if(aa!=null)
		{
			aa.setBookName(ob.getBookName());
			aa.setAurtherName(ob.getAurtherName());
			aa.setDescription(ob.getDescription());
			aa.setImgUrl(ob.getImgUrl());
			aa.setPdfUrl(ob.getPdfUrl());
			aa.setPrice(ob.getPrice());
			adbk.save(aa);
		}
		return "redirect:/datafetchbook";
	}
	
	@GetMapping("image/{bookId}")
    @ResponseBody
    public byte[] getImage(@PathVariable long bookId) throws IOException {
		Book book=adbk.findById(bookId).orElse(null);
        // Path to the image file
        Path imagePath = Paths.get(book.getImgUrl());
        // Read the image file into a byte array
        return Files.readAllBytes(imagePath);
    }
	
}
