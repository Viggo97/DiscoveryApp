package dao;

import model.Discovery;

import java.util.List;

public interface DiscoveryDAO extends GenericDAO<Discovery, Long> {

    @Override
    List<Discovery> getAll();
}
