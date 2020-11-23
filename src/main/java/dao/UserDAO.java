package dao;

import model.User;

import java.util.List;

public interface UserDAO extends GenericDAO<User, Long> {

    @Override
    List<User> getAll();

    User getUserByUsername(String username);
}
