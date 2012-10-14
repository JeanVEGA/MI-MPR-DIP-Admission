package cz.cvut.fit.mi_mpr_dip.admission.endpoint.mapper;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.ext.ExceptionMapper;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.context.SecurityContextHolderStrategy;

import cz.cvut.fit.mi_mpr_dip.admission.exception.BusinessException;

@SuppressWarnings("unused")
@RooJavaBean
public class AccessDeniedExceptionMapper extends BaseExceptionMapper<AccessDeniedException> implements
		ExceptionMapper<AccessDeniedException> {

	private AuthenticationTrustResolver authenticationTrustResolver;
	private SecurityContextHolderStrategy securityContextHolderStrategy;

	@Override
	protected void logErrorResponse(AccessDeniedException exception) {
		getLoggingService().logErrorResponse(new BusinessException(getResponseCode(exception), exception));
	}

	@Override
	protected String createMessage(AccessDeniedException exception) {
		return exception.getMessage();
	}

	@Override
	protected Integer getResponseCode(AccessDeniedException exception) {
		if (isAnonymous()) {
			return HttpServletResponse.SC_UNAUTHORIZED;
		}
		return HttpServletResponse.SC_FORBIDDEN;
	}

	private boolean isAnonymous() {
		return getAuthenticationTrustResolver().isAnonymous(
				getSecurityContextHolderStrategy().getContext().getAuthentication());
	}

	@Required
	public void setAuthenticationTrustResolver(AuthenticationTrustResolver authenticationTrustResolver) {
		this.authenticationTrustResolver = authenticationTrustResolver;
	}

	@Required
	public void setSecurityContextHolderStrategy(SecurityContextHolderStrategy securityContextHolderStrategy) {
		this.securityContextHolderStrategy = securityContextHolderStrategy;
	}

}
