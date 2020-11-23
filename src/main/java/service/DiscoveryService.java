package service;

import dao.DAOFactory;
import dao.DiscoveryDAO;
import model.Discovery;
import model.User;

import java.sql.Timestamp;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

public class DiscoveryService {
    public void addDiscovery(String name, String description, String url, User user) {
        Discovery discovery = createDiscoveryObject(name, description, url, user);
        DAOFactory factory = DAOFactory.getDAOFactory();
        DiscoveryDAO discoveryDAO = factory.getDiscoveryDAO();
        discoveryDAO.create(discovery);
    }

    public Discovery getDiscoveryById(long discoveryId) {
        DAOFactory factory = DAOFactory.getDAOFactory();
        DiscoveryDAO discoveryDAO = factory.getDiscoveryDAO();
        Discovery discovery = discoveryDAO.read(discoveryId);
        return discovery;
    }

    public List<Discovery> getAllDiscoveries() {
        return getAllDiscoveries(null);
    }

    public boolean updateDiscovery(Discovery discovery) {
        DAOFactory factory = DAOFactory.getDAOFactory();
        DiscoveryDAO discoveryDAO = factory.getDiscoveryDAO();
        boolean result = discoveryDAO.update(discovery);
        return result;
    }

    public List<Discovery>getAllDiscoveries(Comparator<Discovery> comparator) {
        DAOFactory factory = DAOFactory.getDAOFactory();
        DiscoveryDAO discoveryDAO = factory.getDiscoveryDAO();
        List<Discovery> discoveries = discoveryDAO.getAll();
        if (comparator != null && discoveries != null) {
            discoveries.sort(comparator);
        }
        return discoveries;
    }

    private Discovery createDiscoveryObject(String name, String description, String url, User user) {
        Discovery discovery = new Discovery();
        discovery.setName(name);
        discovery.setDescription(description);
        discovery.setUrl(url);
        User userCopy = new User(user);
        discovery.setUser(userCopy);
        discovery.setTimestamp(new Timestamp(new Date().getTime()));
        return discovery;
    }
}
