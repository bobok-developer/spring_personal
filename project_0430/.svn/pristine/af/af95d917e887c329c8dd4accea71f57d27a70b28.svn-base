package site.levinni.domain;

import lombok.Data;

@Data
public class AttachFileDTO {
	private String fileName; // 파일의 실제 이름
	private String uploadPath;
	private String uuid;
	private boolean image;
	
	public String getDownPath() {
		return uploadPath + "/" + uuid + "_" + fileName;
	}
	
	public String getThumbPath() {
		return uploadPath + "/s_" + uuid + "_" + fileName;
	}
}
