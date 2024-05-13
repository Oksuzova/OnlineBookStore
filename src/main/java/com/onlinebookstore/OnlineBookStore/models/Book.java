package com.onlinebookstore.OnlineBookStore.models;

import lombok.*;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@Table(name = "books")
public class Book {

    @Setter
    @Getter
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_id")
    private Long id;

    @Setter
    @Getter
    private String title;
    private String author;
    private String image;
    private Double price;
    private Integer stock;

    @Column(name = "description", length = 4096)
    private String description;


    @Setter
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "category_id")
    private BookCategory category;

    public Book() {
    }

    @Getter
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "book", cascade = CascadeType.ALL)
    private List<BookReview> reviews = new ArrayList<BookReview>();

    protected boolean canEqual(final Object other) {
        return other instanceof Book;
    }

}
