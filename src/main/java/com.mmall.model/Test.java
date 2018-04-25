package com.mmall.model;

import java.util.*;

/**
 * @Author: Jay
 * @Date: Created in 15:30 2018/3/8
 * @Modified By:
 */
public class Test {

    static TreeSet<String> ts=new TreeSet<String>();

    public static void main(String[] args) {

        String[] d={"1","2","2","3","4","5"};
//        List<String> s=new ArrayList<String>();
        StringBuilder rs=new StringBuilder();
//        for(int i=0;i<d.length;i++)
//            s.add(d[i]);

        List<String> s = Arrays.asList(d);

        pl(s, rs);

        Iterator<String> iterator=ts.iterator();
        while (iterator.hasNext())
            System.out.println(iterator.next());


        System.out.println("总数是："+ts.size());


    }

    //全排列
    public static void pl(List<String> s,StringBuilder rs){


        if(s.size()==1){

            rs.append(s.get(0));
            if(rs.indexOf("4")!=2
                    && (!rs.toString().contains("35")&& !rs.toString().contains("53"))  )
            {

                ts.add(rs.toString());

            }
            //if(rs.length()>0)
            rs.delete(rs.length()-1, rs.length());

        }else{


            for(int i=0;i<s.size();i++)
            {

                rs.append(s.get(i));
                List<String> tmp=new ArrayList<String>();
                for(String a:s)
                    tmp.add(a);


                tmp.remove(i);
                pl(tmp, rs);
                //if(rs.length()>0)
                rs.delete(rs.length()-1, rs.length());

            }
        }
    }

}
