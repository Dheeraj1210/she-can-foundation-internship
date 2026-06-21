package com.app.shecan.resource;

import com.app.shecan.model.Application;
import com.app.shecan.database.ApplicationDatabase;

import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/applications")
public class ApplicationResource {

    private final ApplicationDatabase DB = new ApplicationDatabase();


    @jakarta.ws.rs.OPTIONS
    @Path("{path : .*}")
    public Response handleOptions() {
        return Response.status(Response.Status.OK)
                .header("Access-Control-Allow-Origin", "*")
                .header("Access-Control-Allow-Headers", "origin, content-type, accept, authorization")
                .header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS, HEAD")
                .build();
    }
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response submitApplication(Application app) {
        // ADD THIS LINE HERE TO TEST CONNECTION:
        System.out.println("⚠️ BACKEND ENDPOINT HIT! Incoming Name: " + (app != null ? app.getName() : "null"));

        if (app.getName() == null || app.getEmail() == null || app.getMessage() == null) {
            return Response.status(Response.Status.BAD_REQUEST)
                    .entity("{\"error\":\"Fields cannot be empty\"}").build();
        }
        // ... rest of your code

//    @POST
//    @Consumes(MediaType.APPLICATION_JSON)
//    @Produces(MediaType.APPLICATION_JSON)
//
//    public Response submitApplication(Application app){
//
//        if(app.getName() == null || app.getEmail() == null || app.getMessage() == null){
//            return Response.status(Response.Status.BAD_REQUEST)
//                    .entity("{\\\"error\\\":\\\"Fields cannot be empty\\\"}").build();
//
//        }
        boolean successffullySaved = DB.saveApplication(app);

        if(successffullySaved){
            return Response.status(Response.Status.CREATED)
                    .entity("{\"status\":\"Form Submitted Successfully\"}").build();
        }
        else{
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR)
                    .entity("{\"error\":\"Internal storage fault\"}").build();
        }
    }
}
