package dao;

import exception.NoSuchDatabaseTypeException;

public abstract class DAOFactory {

    public static final int MYSQL_DAO_FACTORY = 1;

    public abstract UserDAO getUserDAO();

    public abstract DiscoveryDAO getDiscoveryDAO();

    public abstract VoteDAO getVoteDAO();

    public static DAOFactory getDAOFactory() {
        DAOFactory factory = null;
        try {
            factory = getDAOFactory(MYSQL_DAO_FACTORY);
        } catch (NoSuchDatabaseTypeException e) {
            e.printStackTrace();
        }
        return factory;
    }

    private static DAOFactory getDAOFactory(int type) throws NoSuchDatabaseTypeException {
        switch (type) {
            case MYSQL_DAO_FACTORY:
                return new MysqlDAOFactory();
            default:
                throw new NoSuchDatabaseTypeException();
        }
    }
}
