package com.zhihu.util;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FileUpLoadUtil {
	public static String upLoadFile(HttpServletRequest request, String path, FormFieldHandler formFieldHandler)
			throws Exception {

		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 设置向硬盘写数据时所用的缓冲区的大小，此处为4K
		factory.setSizeThreshold(4 * 1024);
		// 设置临时目录

		File file = new File(request.getSession().getServletContext().getRealPath("/")+path+"-temp");
		if (!file.exists()) {
			file.mkdirs();
		}
		factory.setRepository(file);
		// 创建一个文件上传处理器
		ServletFileUpload upload = new ServletFileUpload(factory);
		// 设置允许上传的文件的最大尺寸，此处为4M
		upload.setSizeMax(10 * 1024 * 1024);

		List<FileItem> items = upload.parseRequest(request);
		String result = null;
		Iterator<FileItem> iter = items.iterator();
		while (iter.hasNext()) {
			FileItem item = iter.next();
			if (item.isFormField()) {
				formFieldHandler.handleFormField(item);
			} else {
				result = processUploadedFile(item, request.getSession().getServletContext().getRealPath("/")+path);
				// 处理上传文件
			}
		}
		return result;

	}

	private static String processUploadedFile(FileItem item, String path) throws Exception {
		String filename = item.getName();
		int index = filename.lastIndexOf("//");
		filename = filename.substring(index + 1, filename.length());
		 System.out.println("filename"+filename);
		 if(filename==null||filename.length()==0){
			 return null;
		 }
		String media = filename.substring(filename.lastIndexOf("."));
		// System.out.println(media);
		long fileSize = item.getSize();
		if (filename.equals("") && fileSize == 0) {
			System.out.println("文件名为空");
			return null;
		}
		String result = Stringutil.getUUID() + media;
		File uploadedFile = new File(path);
		if (!uploadedFile.exists()) {
			uploadedFile.mkdirs();
		}
		File resultFile=new File(path + "/" + result);
		item.write(resultFile);
//		System.out.println(resultFile.getAbsolutePath());
//		System.out.println("上传成功！");
		return result;
	}

}
