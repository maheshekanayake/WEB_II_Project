package com.jiat.webapp.middleware;

import com.jiat.webapp.annotations.IsCustomer;
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

@Provider
@IsCustomer

public class IsCustomerImpl implements ContainerRequestFilter {
    @Context
    HttpServletRequest request;
    @Context
    HttpServletResponse response;

    @Override
    public void filter(ContainerRequestContext containerRequestContext) throws IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("customer") == null) {
            String errText ="401 Error - File Not Found";
            containerRequestContext.abortWith(Response.status(Response.Status.UNAUTHORIZED).entity(new Viewable("/404",errText)).build());
        } else {
            System.out.println("Authenticated Customer----------");
        }

    }
}
