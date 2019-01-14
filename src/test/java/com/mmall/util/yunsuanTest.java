package com.mmall.util; 

import org.junit.Test; 
import org.junit.Before; 
import org.junit.After;

import static org.junit.Assert.assertEquals;

/** 
* yunsuan Tester. 
* 
* @author <Authors name> 
* @since <pre>五月 11, 2018</pre> 
* @version 1.0 
*/ 
public class yunsuanTest { 

@Before
public void before() throws Exception { 
} 

@After
public void after() throws Exception { 
} 

/** 
* 
* Method: add(int a, int b) 
* 
*/ 
@Test
public void testAdd() throws Exception { 
//TODO: Test goes here...
    assertEquals(9,new yunsuan().add(4,5));
} 

/** 
* 
* Method: times(int a, int b) 
* 
*/ 
@Test
public void testTimes() throws Exception { 
//TODO: Test goes here...
    assertEquals(15,new yunsuan().times(3,5));
}

@Test
    public void testGetChar(){
    String s = "Hello!你好!";
    System.out.println(s.compareToIgnoreCase("hello!你好!"));
}


} 
