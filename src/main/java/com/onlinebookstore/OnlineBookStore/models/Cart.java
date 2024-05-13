package com.onlinebookstore.OnlineBookStore.models;

import lombok.Data;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "carts")
@Data
public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cart_id")
    private Long cartId;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    @OneToMany(mappedBy = "cart", fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.REMOVE}, orphanRemoval = true)
    private Set<CartBook> cartBooks;

    public Cart() {
        cartBooks = new HashSet<>();
    }

    // Helper methods to manage the bidirectional association
    public void addCartBook(CartBook cartBook) {
        this.cartBooks.add(cartBook);
        cartBook.setCart(this);
    }

    public void removeCartBook(CartBook cartBook) {
        this.cartBooks.remove(cartBook);
        cartBook.setCart(null);
    }

}