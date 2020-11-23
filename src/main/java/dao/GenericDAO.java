package dao;

import java.util.List;

import java.io.Serializable;

public interface GenericDAO<T, PK extends Serializable> {

    T create(T newObject);
    T read(PK primaryKey);
    boolean update(T updateObject);
    boolean delete(PK key);
    List<T> getAll();
}
