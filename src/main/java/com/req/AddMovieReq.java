package com.req;

import lombok.Data;

import java.sql.Date;

@Data
public class AddMovieReq {
    private String moviename;
    private String director;
    private Date releasetime;
    private String leadactors;
    private String[] typelist;
    private String description;
}
