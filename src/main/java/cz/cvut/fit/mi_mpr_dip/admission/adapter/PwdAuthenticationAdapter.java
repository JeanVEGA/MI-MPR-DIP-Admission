package cz.cvut.fit.mi_mpr_dip.admission.adapter;

import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserIdentity;

public interface PwdAuthenticationAdapter extends AuthenticationAdapter {

	public boolean authenticate(UserIdentity userIdentity, String password);
}
