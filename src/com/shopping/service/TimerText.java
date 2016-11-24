package com.shopping.service;  
import java.awt.image.ImagingOpException;
import java.util.Timer;  
    
public class TimerText{     
           
    public static void main(String[] args){     
        Timer timer = new Timer();     
        timer.schedule(new MyTask(), 1000, 1000);//在1秒后执行此任务,每次间隔2秒执行一次,如果传递一个Data参数,就可以在某个固定的时间执行这个任务.     
        while(true){//这个是用来停止此任务的,否则就一直循环执行此任务     
            try{    
            	System.out.println("11112124235346457");
                    
            } catch (ImagingOpException e){     
                // TODO Auto-generated catch block     
                e.printStackTrace();     
            }     
        } 
    }
}
    


        
