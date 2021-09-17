package com.coeding.spring.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.imageio.ImageIO;

public class Certificate {

	public static void main(String[] args) {
		int width = 800;
        int height = 550;
        String s = "";
        // Constructs a BufferedImage of one of the predefined image types.
        try {
        	
			BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
			Graphics g = bufferedImage.createGraphics();
    
		 // Create a graphics which can be used to draw into the buffered image
		    g.setColor(new Color( 24, 116, 205 ));
	        g.fillRect(0, 0, width, height);
	        g.setColor(new Color(250, 250, 210));
	        g.fillRect(15, 15, 770 , 520);	        
	        g.setColor(new Color(0, 0, 139));
	        g.fillRect(20, 20, 760 , 510);
	        g.setColor(new Color(250, 250, 210));
	        g.fillRect(25, 25, 750 , 500);
	        
	        
	        
	        // create a string with yellow
	        g.setFont(new Font("Times New Roman", Font.BOLD, 50));
	        g.setColor(new Color(178, 34, 34));
	        g.drawString("CERTIFICATE", 100, 100);
	        
	        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
	        g.setColor(new Color(25, 25, 112));
	        g.drawString("OF COMPLETION", 100, 140);
	        
	        g.setFont(new Font("Times New Roman", Font.BOLD, 18));
	        g.setColor(new Color(54, 54, 54));
	        g.drawString("This is to certify that", 100, 200);
	        
////	        s = certificate.getStudent().getLastName() + " " + certificate.getStudent().getFirstName() ; // Name
	        s = "Tran Hoang Dang Vinh";
	        g.setFont(new Font("Kunstler Script", Font.BOLD, 70));
	        g.setColor(new Color(32, 178, 170));
	        g.drawString(s, 100, 275);
       
	        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
	        g.setColor(Color.black);
	        g.drawString("has successfullly completed the course", 100, 340);
	              
////	        s = certificate.getCourse().getTitle(); // Name
	        s = "Course 1";
	        g.setFont(new Font("Times New Roman", Font.BOLD, 40));
	        g.setColor(new Color(205, 16, 118));
	        g.drawString(s, 100, 385);
//	        
//	        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");  
////	        s = dateFormat.format(certificate.getFinishDate()); // finish date
	        s = "20-07-2021";
	        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
	        g.setColor(new Color(138, 43, 226));
	        g.drawString(s, 140, 450);
//	        
////	        s = certificate.getTeacher().getLastName() + " " + certificate.getTeacher().getFirstName();
	        s = "Teacher 1";
	        g.setFont(new Font("Times New Roman", Font.BOLD, 30));
	        g.setColor(new Color(0, 128, 128));
	        g.drawString(s, 450, 450);
	 
	        // Disposes of this graphics context and releases any system resources that it is using. 
	        
	        BufferedImage logo = ImageIO.read(new File("C:\\Users\\HP\\Desktop" + File.separator + "logo.png"));
			BufferedImage logoText = ImageIO.read(new File("C:\\Users\\HP\\Desktop" + File.separator + "logo-text.png"));
			g.drawImage(logo, 580, 20, null);
		    g.drawImage(logoText, 333, 493, null);
	        
	        g.dispose();
	        	    
	        File file = new File("C:\\Users\\HP\\Desktop" + File.separator + "certificate.png");
	        ImageIO.write(bufferedImage, "png", file);
		} catch (IOException e) {
			e.printStackTrace();
		}
          
	}
}
