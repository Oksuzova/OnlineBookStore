package com.onlinebookstore.OnlineBookStore.services;

import com.onlinebookstore.OnlineBookStore.dao.BookReviewDao;
import com.onlinebookstore.OnlineBookStore.models.BookCategory;
import com.onlinebookstore.OnlineBookStore.models.BookReview;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BookReviewService {
    @Autowired
    private BookReviewDao bookreviewdao;


    @Transactional
    public void saveBookReview(BookReview bookReview) {
        bookreviewdao.saveBookReview(bookReview);
    }


//    Fetch a Specific Book Category by ID
    @Transactional(readOnly = true)
    public BookReview getReviewById(Long id) {
        return bookreviewdao.findById(id);
    }

//    Delete a Book Category from the Database by ID
    @Transactional
    public void deleteBookReview(Long id) {
        bookreviewdao.deleteBookReview(id);
    }

//    Update Details of a Book Category in the Database
    @Transactional
    public void updateBookReview(BookReview bookReview) {
        bookreviewdao.updateBookReview(bookReview);
    }
}
