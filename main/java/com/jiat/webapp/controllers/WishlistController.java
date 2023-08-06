package com.jiat.webapp.controllers;

import com.jiat.webapp.annotations.IsCustomer;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import org.glassfish.jersey.server.mvc.Viewable;
//@IsCustomer
@Path("wishlist")
public class WishlistController {
    @GET
    @Produces(MediaType.TEXT_HTML)
//    @Path("/{id}/{status}")
    public Viewable get() {
        return new Viewable("/Wishlist");
    }
}
