package com.balticx.auction.service.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.UUID;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.ManyToAny;
import org.hibernate.annotations.UpdateTimestamp;
import org.hibernate.annotations.UuidGenerator;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

@Setter
@Getter
@Entity
@Table(name = "lots")
@Accessors(chain = true) 
public class Lot {
    
    @Id
    @UuidGenerator
    private UUID id;

    @Column(name = "title", nullable = false)
    private String title;
    
    @CreationTimestamp
    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;

    @UpdateTimestamp
    @Column(name = "created_at", nullable = false)
    private LocalDateTime updatedAt;

    @Column(name = "starting_price", nullable = false)
    private BigDecimal startingPrice;
    
    @Column(name = "current_price", nullable = false)
    private BigDecimal currentPrice;

    @Column(name = "auction_start")
    private LocalDateTime auctionStart;

    @Column(name = "auction_end")
    private LocalDateTime auctionEnd;

    @ManyToMany
    @JoinTable(
        name = "lots_categories",
        joinColumns = @JoinColumn(name = "lot_id"),
        inverseJoinColumns = @JoinColumn(name = "category_id")
    )
    HashSet<Category> lotCategories;

    @ManyToMany
    @JoinTable(
        name = "lots_statuses",
        joinColumns = @JoinColumn(name = "lot_id"),
        inverseJoinColumns = @JoinColumn(name = "status_id")
    )
    HashSet<Category> lotStatuses;

    @OneToMany(mappedBy= "lot")
    HashSet<Bid> bids;

}
