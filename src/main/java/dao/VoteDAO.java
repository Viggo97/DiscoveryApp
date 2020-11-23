package dao;

import model.Vote;

public interface VoteDAO extends GenericDAO<Vote, Long> {

    Vote getVoteByUserIdDiscoveryId(long userId, long discoveryId);
}
