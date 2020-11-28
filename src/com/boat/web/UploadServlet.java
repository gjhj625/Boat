package com.boat.web;


import com.boat.pojo.BoatImg;
import com.boat.service.BoatService;
import com.boat.service.impl.BoatServiceImpl;
import com.google.gson.Gson;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UploadServlet extends HttpServlet {
    BoatService boatService = new BoatServiceImpl();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    /**
     * 用来处理图片上传
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        //判断是否为多段数据请求
        if (ServletFileUpload.isMultipartContent(req)){
            BoatImg boatImg = new BoatImg();
            //true为多段，否则不是多段
            //建立fileItem工厂用于获取表单项
            FileItemFactory fileItemFactory = new DiskFileItemFactory();
            ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
            //获取每一个表单项
            Map map = new HashMap<String,Object>();
            try {
                List<FileItem> list = servletFileUpload.parseRequest(req);
                //查看每一个表单项是否是普通表单项，是为true，否则为文件上传表单项
                for (FileItem fileItem : list) {
                    if (fileItem.isFormField()){
                        //普通表单项
                        System.out.println("表单项的name属性值："+fileItem.getFieldName());
                        //map.put(fileItem.getFieldName(),fileItem.getString("UTF-8"));
                        //fileItem.getString()可以获取value属性值且获取时用特定的编码获取
                        System.out.println("表单项的value属性值："+fileItem.getString("UTF-8"));
                        boatImg.setName(fileItem.getString("UTF-8"));
                    }else {
                        //文件上传表单项
                        System.out.println("文件上传名："+fileItem.getName());
                        fileItem.write(new File("D:\\JAVA\\javaweb\\boat\\web\\static\\img\\"+fileItem.getName()));
                        boatImg.setImgFile("static\\img\\" + fileItem.getName());
                        String imgType=fileItem.getContentType();
                        boatImg.setImgType(imgType);
                        //resp.sendRedirect(req.getContextPath()+"/manager/bookServlet?action=page");
                    }
                }
                boatService.saveBoatImg(boatImg);
                map.put("msg","ok");
                map.put("code",200);
                //WebUtils.copyParamToBean(map,new Book());
            } catch (Exception e) {
                map.put("msg","error");
                map.put("code",0);
                e.printStackTrace();

            }
            Gson gson = new Gson();
            String json = gson.toJson(map);
            resp.getWriter().write(json);
        }

    }
}
