package com.coeding.spring.service.impl;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;

public class CertificateImpl {
	public static void main(String[] args) throws IOException {
		 
        int width = 700;
        int height = 500;
        // Constructs a BufferedImage of one of the predefined image types.
        BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
 
        // Create a graphics which can be used to draw into the buffered image
        Graphics g = bufferedImage.createGraphics();
    
        g.drawRect(0, 0, width, height);
        g.setColor(Color.white);
        g.fillRect(3, 3, width-5, height-5);
        // create a string with yellow
        g.setFont(new Font("Times New Roman", Font.BOLD, 40));
        g.setColor(Color.red);
        g.drawString("CERTIFICATE", 220, 60);
        
        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
        g.setColor(Color.black);
        g.drawString("This is to certify that", 20, 100);
        
        String s = "Student Name"; // Name
        g.setFont(new Font("Times New Roman", Font.BOLD, 60));
        g.setColor(Color.black);
        g.drawString(s, 20, 200);
        
        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
        g.setColor(Color.black);
        g.drawString("has successfullly completed the course", 20, 280);
        
        s = "Course Name"; // Name
        g.setFont(new Font("Times New Roman", Font.BOLD, 30));
        g.setColor(Color.blue);
        g.drawString(s, 20, 350);
        
        s = "07-08-2021"; // finish date
        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
        g.setColor(Color.green);
        g.drawString(s, 20, 420);
        
        s = "Teacher Name";
        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
        g.setColor(Color.green);
        g.drawString(s, 450, 420);
 
        // Disposes of this graphics context and releases any system resources that it is using. 
        g.dispose();
        
        // Save as PNG
        File file = new File("C:\\Users\\HP\\Desktop\\" + File.separator + "myimage.png");
        ImageIO.write(bufferedImage, "png", file);
 
// 
    }
}
