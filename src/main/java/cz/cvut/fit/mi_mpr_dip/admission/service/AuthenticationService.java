package cz.cvut.fit.mi_mpr_dip.admission.service;

public interface AuthenticationService {

	public boolean authenticate(String username, String password);
}