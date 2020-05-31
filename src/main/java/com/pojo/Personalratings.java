package com.pojo;

import lombok.Data;

@Data
public class Personalratings {
    private Integer userid;
    private Integer movieid;
    private Integer rating;
    private String timestamp;
}
