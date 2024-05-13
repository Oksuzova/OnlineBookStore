package com.onlinebookstore.OnlineBookStore.models;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "orders")
@Data
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long orderId;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)  // Correct, assuming the column name in DB is user_id
    private User user;

    @Column(name = "order_date", nullable = false)  // Ensure this matches the database column name
    private Date orderDate;

    @Column(name = "total_price", nullable = false)  // Use the correct column name
    private BigDecimal totalPrice;

    @Column(name = "status", nullable = false)
    private String status;
}
