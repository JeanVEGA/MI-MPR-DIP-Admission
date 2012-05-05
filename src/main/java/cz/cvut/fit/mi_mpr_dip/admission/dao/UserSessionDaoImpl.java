package cz.cvut.fit.mi_mpr_dip.admission.dao;

import java.util.Date;
import java.util.Iterator;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserIdentity;
import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserSession;

@Repository
public class UserSessionDaoImpl extends AbstractDao<UserSession> implements UserSessionDao {

	@Transactional(readOnly = true)
	@Override
	public UserSession getUserSession(String identifier) {
		return getUserSessionQuietly(identifier);
	}

	private UserSession getUserSessionQuietly(String identifier) {
		UserSession userSession;
		try {
			userSession = uniqueResult(UserSession.findUserSessionsByIdentifierEqualsAndGrantValidToGreaterThan(
					identifier, getNow()));
		} catch (Exception e) {
			userSession = processException(e);
		}
		return userSession;
	}

	private Date getNow() {
		return new Date();
	}

	@Transactional
	@Override
	public void remove(String username, String identifier) {
		UserIdentity userIdentity = UserIdentity.findUserIdentitysByUsernameEquals(username).getSingleResult();
		for (Iterator<UserSession> iterator = userIdentity.getSessions().iterator(); iterator.hasNext();) {
			UserSession userSession = iterator.next();
			if (identifier.equals(userSession.getIdentifier())) {
				iterator.remove();
				userSession.remove();
			}
		}
	}

	@Override
	protected UserSession createEmptyResult() {
		return new UserSession();
	}
}