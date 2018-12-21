package com.qiuzhibin.demo.common;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Dig {
    //弹出返回提示框
    public static void digBack(HttpServletResponse response, String message)  {
        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = null;
        try {
            out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        out.flush();
        out.println("<script>");
        out.println("alert('"+message+"');");
        out.println("history.back();");
        out.println("</script>");
    }

    //弹出向前提示框
    public static void digForword(HttpServletResponse response, String message)  {
        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = null;
        try {
            out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        out.flush();
        out.println("<script>");
        out.println("alert('"+message+"');");
//        out.println("history.back();");
        out.println("</script>");
    }
}
