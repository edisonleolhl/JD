package com.shopping.service;

import java.util.Date;

public final class MyTask extends java.util.TimerTask{     
    
    String info = "INFO";  

    @Override     
    public void run(){     
        // TODO Auto-generated method stub     
        System.out.println(new Date() + "      " + info);     
    }     

    public String getInfo(){     
        return info;     
    }     
    public void setInfo(String info){     
        this.info = info;     
    }     
}     
  
   

