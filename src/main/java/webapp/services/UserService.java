package webapp.services;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import webapp.models.User;

@Component
public interface UserService {
    User addUser(User user);
    User getUserByEmailAndPassword(User user);
}
