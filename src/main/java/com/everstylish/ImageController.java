
package com.everstylish;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;



public class ImageController {
	private static final Logger log = LoggerFactory.getLogger(ImageController.class);
	public static String uploadFile(MultipartFile file)
	{
		String name=null;
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.base");
				File dir = new File(rootPath + File.separator+"wtpwebapps/everstylish/resources/images" );
				if (!dir.exists())
					dir.mkdirs();
				  name=String.valueOf(new Date().getTime()+".jpg");
				 // Create the file on server
				File serverFile = new File(dir.getAbsolutePath()	+ File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				log.info("Server File Location="	+ serverFile.getAbsolutePath());

				return  name;
			} catch (Exception e) {
				return "You failed to upload " + name + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + name+ " because the file was empty.";
		}
	}
}
