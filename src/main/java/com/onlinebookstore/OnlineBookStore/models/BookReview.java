package com.onlinebookstore.OnlineBookStore.models;

import lombok.Data;
import lombok.Setter;

import javax.persistence.*;


@Entity
@Table(name = "book_reviews")
@Data
public class BookReview {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    private Long id;


    @Setter
    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
    @JoinColumn(name = "book_id")
    private Book book;


    @Setter
    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "rating")
    private String rating;

    @Column(name = "description", length = 4096)
    private String description;

    public BookReview() {
    }
}