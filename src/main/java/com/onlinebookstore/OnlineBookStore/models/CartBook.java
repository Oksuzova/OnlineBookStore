package com.onlinebookstore.OnlineBookStore.models;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "cart_books")
@Data
public class CartBook {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cart_book_id")
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "cart_id", referencedColumnName = "cart_id")
    private Cart cart;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "book_id", referencedColumnName = "book_id")
    private Book book;

    private Integer quantity;
}