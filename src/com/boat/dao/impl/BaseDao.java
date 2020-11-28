package com.boat.dao.impl;

import com.boat.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public abstract class BaseDao {

    private QueryRunner queryRunner = new QueryRunner();//sql查询运行器

    /**
     * update()方法用来执行CRUD -create read update delete 增删查改的操作
     * @param sql 要更新的sql语句
     * @param args 传入的参数
     * @return    如果返回-1则更新失败，否之则更新成功，返回更新影响的行数
     */
    public int update(String sql,Object ... args){
        Connection connection = JdbcUtils.getConnection();//获取连接
        try {
            return queryRunner.update(connection,sql,args); //通过连接、参数、sql语句传入查询器中运行
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    /**
     * 查询并返回一个JavaBean的sql语句
     * @param type 返回的对象类型
     * @param sql   查询的sql语句
     * @param args  参数
     * @param <T>   返回的类型的泛型
     * @return  如果为null则查询失败，反之则返回与数据库连接执行sql语句的查询结果
     */
    public <T> T queryForOne(Class<T> type, String sql, Object... args) {
        Connection con = JdbcUtils.getConnection();
        try {
            return queryRunner.query(con, sql, new BeanHandler<T>(type), args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.close(con);
        }
        return null;
    }

    /**
     *查询并返回多个JavaBean sql结果集
     * @param type 返回的对象类型
     * @param sql   查询的sql语句
     * @param args  参数
     * @param <T>   返回的类型的泛型
     * @return  如果为null则查询失败，反之则返回与数据库连接执行sql语句的查询结果
     */
    public <T> List<T> queryForList(Class<T> type, String sql, Object ... args){
        Connection connection = JdbcUtils.getConnection(); //获取连接
        try {
            return  queryRunner.query(connection,sql,new BeanListHandler<T>(type),args);
            //以Class<T>的类型返回输出的结果
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JdbcUtils.close(connection); //关闭连接池
        }
        return null;
    }

    /**
     * 返回执行一行一列的SQL语句
     * @param sql 要执行的SQL语句
     * @param args  sql对应的参数
     * @return  返回数据库连接的信息
     */
    public Object queryForSingleValue(String sql,Object ... args){
        Connection connection = JdbcUtils.getConnection(); //获取连接
        try {
            return  queryRunner.query(connection,sql,new ScalarHandler(),args);
            //返回一个对象
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JdbcUtils.close(connection); //关闭连接池
        }
        return null;
    }
}
