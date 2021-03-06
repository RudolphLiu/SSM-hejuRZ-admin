package com.hjrz.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hjrz.admin.data.ExchangeData;
import com.hjrz.admin.service.common.UploadService;

@Controller
@RequestMapping(value="/toupload")
public class UploadController {
	
	@Autowired
	private UploadService uploadservice; 
	
	@RequestMapping(value="/toupload.hjrz")
	public String toupload(HttpServletRequest request){
		return "test/testupload";
	}
	
	/** 
	 * @Title uploadfile 
	 * @Description TODO(AJAX上传文件控制器) 
	 * @author RodulphLiu
	 * @Date 2017年9月6日
	 */
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/ajax/uploadFile.hjrz",method=RequestMethod.POST,produces = {"application/json"})
	public @ResponseBody ExchangeData uploadfile(@RequestParam("file") MultipartFile file,
			HttpServletRequest request)
	{
		ExchangeData<Object> exchangeData = new ExchangeData<Object>();
		try {
			//上传图片 
			String Thefinalfilename = uploadservice.uploadFile(file, request);
			exchangeData.setData(Thefinalfilename);
			exchangeData.setMessage("上传成功");
		}catch (Exception e) {
			exchangeData.markFail();
			exchangeData.setMessage(e.getMessage());
		}
		return exchangeData;
	}
}