package com.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.sql.Date;

@Data
public class Movieinfo implements Serializable {
    private Integer movieid;
    private String moviename;
    private Date releasetime;
    private String director;
    private String leadactors;
    private String picture;
    private Double averating;
    private Integer numrating;
    private String description;
    private String typelist;

    public Movieinfo() {
    }

    public Movieinfo(Integer movieid, String moviename, Date releasetime, String director, String leadactors, String picture, Double averating, Integer numrating, String description, String typelist) {
        this.movieid = movieid;
        this.moviename = moviename;
        this.releasetime = releasetime;
        this.director = director;
        this.leadactors = leadactors;
        this.picture = picture;
        this.averating = averating;
        this.numrating = numrating;
        this.description = description;
        this.typelist = typelist;
    }

}