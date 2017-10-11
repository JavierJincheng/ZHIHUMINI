package com.zhihu.util;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.zhihu.model.User;
import com.zhihu.serviceimpl.UserService;
import com.zhihu.serviceinterface.IUserService;
@WebServlet("/UploadServlet")
public class Fileupload extends HttpServlet {
	private static final String UPLOAD_DIRECTORY = "upload";
	protected void doGet(HttpServletRequest req, HttpServletResponse resp){
		
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp){
		QiniuUpload qiniuUpload=new QiniuUpload();
		String id=req.getParameter("id");
		System.out.println(id+"----------");
		String str=upload(req);
		String str2=str.substring(str.length()-6, str.length());
		IUserService userService=new UserService();
		String str3=str.replaceAll("\\\\", "\\\\\\\\");
		String result=qiniuUpload.uploadFile(str3, str2);
		userService.UpdateUserPhoto(id, result);
	
			try {
				resp.sendRedirect("/ZHIHU/pages/person.jsp?id="+id);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		
		
	}
	
	public String upload(HttpServletRequest req){
		QiniuUpload qiniuUpload=new QiniuUpload();
		// 配置上传参数
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 这是内存最大值
		factory.setSizeThreshold(1024 * 1024 * 3); // 3M
		// 设置临时目录
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		System.out.println(System.getProperty("java.io.tmpdir"));
		// 创建文件上传对象
		ServletFileUpload upload = new ServletFileUpload(factory);
		// 设置上传的文件的最大大小
		upload.setFileSizeMax(1024 * 1024 * 2000);
		// 中文处理
		upload.setHeaderEncoding("UTF-8");
		// 文件路径
		File file = new File(req.getSession().getServletContext().getRealPath("/")+UPLOAD_DIRECTORY);
		if (!file.exists()) {
			file.mkdirs();
		}
		
		List<FileItem> list;
		try {
			list = upload.parseRequest(req);
			for (FileItem fileItem : list) {
				// 取出文件名称
				String fileName = new File(fileItem.getName()).getName();
				// 添加存放完整路径
				String filePath = this.getServletContext().getRealPath("/")+UPLOAD_DIRECTORY + File.separator + fileName;
				//System.out.println(filePath);
				
				fileItem.write(new File(filePath));
				return filePath;
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
		
		
	}


