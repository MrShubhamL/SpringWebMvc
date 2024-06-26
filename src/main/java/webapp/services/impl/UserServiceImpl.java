package webapp.services.impl;

import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import webapp.models.User;
import webapp.services.UserService;

import java.util.List;


@Component
@Data
public class UserServiceImpl implements UserService {
    private HibernateTemplate hibernateTemplate;

    @Override
    @Transactional
    public User addUser(User user) {
        hibernateTemplate.saveOrUpdate(user);
        return user;
    }

    @Override
    public User getUserByEmailAndPassword(User user) {
        String hql = "from User where email = :email and password = :password";
        List<User> users = (List<User>) hibernateTemplate.findByNamedParam(hql,
                new String[]{"email", "password"},
                new Object[]{user.getEmail(), user.getPassword()});
        return users.isEmpty() ? null : users.get(0);
    }
}
