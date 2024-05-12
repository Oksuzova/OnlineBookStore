package com.onlinebookstore.OnlineBookStore.models;

import lombok.Getter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import static com.fasterxml.jackson.databind.type.LogicalType.Collection;

@Entity
@Table(name = "books")
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

    public void setCategory(BookCategory category) {
        this.category = category;
    }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
