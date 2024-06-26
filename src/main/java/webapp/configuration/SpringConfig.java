package webapp.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import webapp.models.User;
import webapp.services.UserService;
import webapp.services.impl.UserServiceImpl;

import java.util.Properties;

@Configuration
@ComponentScan(basePackages = "webapp")
@EnableTransactionManagement
public class SpringConfig {

    @Bean
    public DriverManagerDataSource getDriverManagerDataSource(){
        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/springwebmvc");
        ds.setUsername("root");
        ds.setPassword("root");
        return ds;
    }

    @Bean
    public Properties getProperties(){
        Properties properties = new Properties();
        properties.setProperty("hibernate.dialect","org.hibernate.dialect.MySQL8Dialect");
        properties.setProperty("hibernate.hbm2ddl.auto","update");
        properties.setProperty("hibernate.show_sql","true");
        return properties;
    }

    @Bean
    public LocalSessionFactoryBean getLocalSessionFactoryBean(){
        LocalSessionFactoryBean sessionFactoryBean = new LocalSessionFactoryBean();
        sessionFactoryBean.setDataSource(getDriverManagerDataSource());
        sessionFactoryBean.setHibernateProperties(getProperties());
        sessionFactoryBean.setAnnotatedClasses(User.class);
        return sessionFactoryBean;
    }

    @Bean
    public HibernateTemplate getHibernateTemplate(){
        HibernateTemplate template = new HibernateTemplate();
        template.setSessionFactory(getLocalSessionFactoryBean().getObject());
        template.setCheckWriteOperations(true);
        return template;
    }

    @Bean("userService")
    public UserService userRepository(){
        UserServiceImpl userService = new UserServiceImpl();
        userService.setHibernateTemplate(getHibernateTemplate());
        return userService;
    }

    @Bean
    public HibernateTransactionManager hibernateTransactionManager(){
        HibernateTransactionManager transactionManager = new HibernateTransactionManager();
        transactionManager.setSessionFactory(getLocalSessionFactoryBean().getObject());
        return transactionManager;
    }
}
