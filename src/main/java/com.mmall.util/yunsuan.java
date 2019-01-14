package com.mmall.util;

import java.util.LinkedList;
import java.util.Stack;

/**
 * @Author: Jay
 * @Date: Created in 16:50 2018/5/11
 * @Modified By:
 */
public class yunsuan {

    public int add(int a,int b){

        return (a+b);
    }

    public int times(int a, int b){

        return a*b;
    }

    public char getChar(){
        char ch;
        ch=" abc".charAt(1);
        return ch;
    }

    Stack<Integer> stack = new Stack<Integer>();
    LinkedList<Integer> linkedList = new LinkedList<Integer>();
}
