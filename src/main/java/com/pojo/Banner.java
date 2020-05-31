package com.pojo;


import lombok.Data;

import java.io.Serializable;
import java.sql.Date;

@Data
public class Banner implements Serializable {

    private Integer id;
    private Integer movieid;
    private Date pushdate ;
}
