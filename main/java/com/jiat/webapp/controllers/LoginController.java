package com.jiat.webapp.controllers;


import com.jiat.webapp.annotations.IsCustomer;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.core.UriBuilder;
import org.glassfish.jersey.server.mvc.Viewable;


@Path("/")
public class LoginController {

    @GET
    @Path("/ ")
    @Produces(MediaType.TEXT_HTML)
    public Viewable get() {
        return new Viewable("/Home");
    }

    @GET
    @Path("singleview")
    @Produces(MediaType.TEXT_HTML)
    public Viewable Single() {
        return new Viewable("/SingleView");
    }
    @GET
    @Path("products")
    @Produces(MediaType.TEXT_HTML)
    public Viewable Products() {
        return new Viewable("/GlossaryProducts");
    }

    @POST
    public Response loginAction(@Context HttpServletRequest request, @Context HttpServletResponse response) {
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");
        HttpSession session = request.getSession();
        if (username.equals("1") && pass.equals("1")) {
            if (session.getAttribute("user") == null) {
                session.setAttribute("user", "Mahesh");
            }
            return Response.status(Response.Status.FOUND).location(UriBuilder.fromUri("home").build()).build();

        } else {
            return Response.status(Response.Status.FOUND).location(UriBuilder.fromUri("/").build()).build();

        }

    }
}
