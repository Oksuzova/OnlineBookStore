package com.onlinebookstore.OnlineBookStore.models;

import lombok.Data;
import lombok.Getter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import static com.fasterxml.jackson.databind.type.LogicalType.Collection;

@Entity
@Table(name = "books")
@Data
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_id")
    private Long id;

    private String title;
    private String author;
    private String image;
    private Double price;
    private Integer stock;

	@Column(name = "description", length = 4096)
	private String description;


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "category_id")
    private BookCategory category;

    // Constructors, getters, and setters omitted for brevity
    public BookCategory getCategory() {
        if (this.category == null) {
            this.category = new BookCategory();
        }
        return category;
    }

	@Getter
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "book", cascade = CascadeType.ALL)
	private List<BookReview> reviews = new ArrayList<BookReview>();

}
