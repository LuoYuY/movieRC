package com.task;

import com.Utils.RecommendUtil;
import com.dao.BannerDao;
import com.dao.RecommendResultDao;
import com.dao.UserDao;
import com.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.*;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class RecommendTask implements ServletContextListener {
    private Timer timer;

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
        if(timer!=null) timer.cancel();
    }

    @Override
    public void contextInitialized(ServletContextEvent arg0) {
        timer = new Timer();
        timer.schedule(new TimerTask() {

            @Override
            public void run() {
                work();
            }
        }, 1000, 60*60*1000);// 一秒后执行，间隔1小时执行一次。
    }

    private void work() {
        //文件存放路径
        String path = "/home/hadoop/recommend.sh";
        //执行的脚本，一个字符串就是一行。
        //启动HDFS
       // String[] strs1 = { "cd /usr/local/hadoop","./sbin/start-dfs.sh"};
        System.out.println("testjjj");

        String URL = "jdbc:mysql://127.0.0.1:3306/Supermarket?characterEncoding=utf-8";
        String USER = "root";
        String PASSWORD = "123";
        // 1.加载驱动程序
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            // 2.获得数据库链接
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/movierecommend?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC", "root", "lyy19971221");
            // 3.通过数据库的连接操作数据库，实现增删改查（使用Statement类）

            String sql="select * from user";
            PreparedStatement statement = conn.prepareStatement(sql);

            ResultSet rs = statement.executeQuery();
//			String sql="select * from userinfo where UserName='"+name+"'";
//			Statement statement = conn.createStatement();
//			ResultSet rs = statement.executeQuery(sql);
            // 4.处理数据库的返回结果(使用ResultSet类)
            while (rs.next()) {

                System.out.println("recommned for id "+rs.getString("id"));
                String temp = "./bin/spark-submit --class recommend.MovieLensALS /home/hadoop/data/Film_Recommend.jar /input_spark "+rs.getString("id");
                String[] strs = { "cd /usr/local/spark",temp};
                try {
                    RecommendUtil.createShell(path, strs);//创建shell脚本
                    String result = RecommendUtil.runShell(path); //运行系统命令
                    System.out.println(result);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            conn.close();
            rs.close();
            statement.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }catch (SQLException e) {
            e.printStackTrace();
        }

    }
}