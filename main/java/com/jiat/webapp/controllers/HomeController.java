package com.jiat.webapp.controllers;

import com.jiat.webapp.annotations.IsCustomer;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("home")
public class HomeController {
    @GET
    @Produces(MediaType.TEXT_HTML)
    public Viewable get() {
        return new Viewable("/Home");
    }
}
