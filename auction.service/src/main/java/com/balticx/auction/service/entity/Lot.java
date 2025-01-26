package com.balticx.auction.service.entity;

import java.text.DecimalFormat;
import java.time.LocalDateTime;
import java.util.UUID;

public class Lot {

    private UUID id;
    private String title;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private DecimalFormat startingPrice;
    private DecimalFormat currentPrice;
    private LocalDateTime auctionStart;
    private LocalDateTime auctionEnd;

}
