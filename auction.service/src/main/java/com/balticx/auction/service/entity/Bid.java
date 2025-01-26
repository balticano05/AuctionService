package com.balticx.auction.service.entity;

import java.text.DecimalFormat;
import java.time.LocalDateTime;
import java.util.UUID;

public class Bid {

    private UUID id;
    private UUID user;
    private DecimalFormat amount;
    private LocalDateTime createdAt;

}
