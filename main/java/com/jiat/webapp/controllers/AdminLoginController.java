package com.jiat.webapp.controllers;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("admin")
public class AdminLoginController {

    @GET
    public Viewable getDashboard(){
        return new Viewable("/AdminDashboard");

    }
}
