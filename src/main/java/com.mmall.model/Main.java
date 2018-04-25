package com.mmall.model;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner s = new Scanner("123 asda bf 12 123 nh l,sf.fl ...adafafa    lda");
//                s.useDelimiter(" |,|\\.");
        while (s.hasNext()) {
            System.out.println(s.next());
        }
    }



    String replaceSpace(String iniString)
    {
        String newString="";
        for(int i=0;i<iniString.length();i++)
        {
            if(iniString=="")
            {
                //newString+=iniString[i];
                newString=newString+"%20";
                continue;
            }
            newString+=iniString;
        }
        return newString;
    }
}
