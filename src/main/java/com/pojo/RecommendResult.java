package com.pojo;


import lombok.Data;

@Data
public class RecommendResult {
    private Integer userid;
    private Integer movieid;
    private Float rating;
    private String moviename;
}
