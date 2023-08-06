package com.jiat.webapp.controllers;

import com.jiat.webapp.annotations.IsCustomer;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import org.glassfish.jersey.server.mvc.Viewable;

//@IsCustomer
@Path("cart")
public class CartController {
    @GET
    @Produces(MediaType.TEXT_HTML)
    public Viewable get() {
        return new Viewable("/Cart");
    }

}
