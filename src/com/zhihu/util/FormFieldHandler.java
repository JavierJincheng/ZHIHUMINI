package com.zhihu.util;


import org.apache.commons.fileupload.FileItem;

public interface FormFieldHandler {
	void handleFormField(FileItem item);
}
