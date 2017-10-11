package com.zhihu.model;

import java.math.BigDecimal;

public class TopicType {
	private BigDecimal typeId;
	private String typeName;
	private String typePic;

	

	public BigDecimal getTypeId() {
		return typeId;
	}

	public void setTypeId(BigDecimal typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getTypePic() {
		return typePic;
	}

	public void setTypePic(String typePic) {
		this.typePic = typePic;
	}

}
