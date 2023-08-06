package com.jiat.webapp.middleware;

import com.jiat.webapp.annotations.IsAdmin;
import com.jiat.webapp.annotations.IsAdmin;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.container.ContainerRequestContext;
import jakarta.ws.rs.container.ContainerRequestFilter;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.ext.Provider;
import org.glassfish.jersey.server.mvc.Viewable;

import java.io.IOException;

@IsAdmin
@Provider
public class IsAdminImpl implements ContainerRequestFilter {
    @Context
    HttpServletRequest request;
    @Context
    HttpServletResponse response;

    @Override
    public void filter(ContainerRequestContext containerRequestContext) throws IOException {
        System.out.println("ok------IsAdminImpl");
        HttpSession session = request.getSession();
        if (session.getAttribute("admin") == null) {
            System.out.println("Unauthenticated Admin.Please Log IN-------");
            String errText ="404 Error - File Not Found";
            containerRequestContext.abortWith(Response.status(Response.Status.UNAUTHORIZED).entity(new Viewable("/404",errText)).build());
        } else {
            System.out.println("Authenticated Admin----------");
        }

    }


}
