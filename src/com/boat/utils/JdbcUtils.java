package com.boat.utils;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class JdbcUtils {
    private static DruidDataSource druidDataSource;

    static{
        try {
            Properties properties = new Properties();//配置文件类
            //从项目的ClassPath的根目录下获取资源流，不用带/，因为已经是从根目录下获取了（读取数据）
            InputStream resourceAsStream = JdbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
            //写入数据进配置中
            properties.load(resourceAsStream);
            //给连接池发送配置信息
            druidDataSource = (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取连接池DruidDataSource中的连接
     * @return 如果为null则连接失败，有值则连接成功
     */
    public static Connection getConnection(){
        Connection connection = null;//定义sql连接
        try {
            //获取连接
            connection = druidDataSource.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    /**
     * 关闭DruidDataSource连接池中的连接
     * @param connection 接受传来的连接变量
     */
    public static void close(Connection connection){
        if (connection!=null){
            try {
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}
