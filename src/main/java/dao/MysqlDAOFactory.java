package dao;

public class MysqlDAOFactory extends DAOFactory {

    @Override
    public UserDAO getUserDAO() {
        return new UserDAOImpl();
    }

    @Override
    public DiscoveryDAO getDiscoveryDAO() {
        return new DiscoveryDAOImpl();
    }

    @Override
    public VoteDAO getVoteDAO() {
        return new VoteDAOImpl();
    }
}
