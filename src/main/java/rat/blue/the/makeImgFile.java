//버려짐

package rat.blue.the;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import org.apache.commons.codec.binary.Base64;

public class makeImgFile {
	
	private void makePngFile(String imgbase64, File saveFilePath, String savename) throws Exception {
		/**
		 * imgbase64 (imgbase64data:image/png;base64,iVBORw0KGgoAA 로 시작)
		 * saveFilePath (저장경로)
		 * savename (파일이름)
		 */ 
		try {
			// create a buffered image
			BufferedImage image = null;

			String[] base64Arr = imgbase64.split(","); // image/png;base64, 이 부분 버리기 위한 작업
			byte[] imageByte = Base64.decodeBase64(base64Arr[1]); // base64 to byte array로 변경
			
			ByteArrayInputStream bis = new ByteArrayInputStream(imageByte);
			image = ImageIO.read(bis);
			bis.close();

			// write the image to a file
			savename = savename;
			File outputfile = new File(saveFilePath + savename + ".png");
			ImageIO.write(image, "png", outputfile); // 파일생성
			
		} catch (IOException e) {
			throw e;
		}
	}

}
