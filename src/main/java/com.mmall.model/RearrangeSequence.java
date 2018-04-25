package com.mmall.model;

import java.util.Scanner;

public class RearrangeSequence {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (sc.hasNext()) {
            int t = sc.nextInt();
            for (int i = 0; i < t; i++) {

                int n = sc.nextInt();

                //表示4的倍数的个数
                int cnt4 = 0;
                //表示2的倍数的个数
                int cnt2 = 0;
                //表示其他数
                int cnt1 = 0;

                for (int j = 0; j < n; j++) {
                    int x = sc.nextInt();
                    if (x % 4 == 0) {
                        cnt4++;
                    } else if (x % 2 == 0) {
                        cnt2++;
                    } else {
                        cnt1++;
                    }
                }

                if (cnt2 == 0) {
                    if (cnt4 >= cnt1 - 1) {
                        System.out.println("Yes");
                    } else {
                        System.out.println("No");
                    }
                } else {
                    if (cnt4 >= cnt1) {
                        System.out.println("Yes");
                    } else {
                        System.out.println("No");
                    }
                }
            }
        }
    }
}
