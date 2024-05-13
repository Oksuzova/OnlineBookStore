package com.onlinebookstore.OnlineBookStore.dao;

import com.onlinebookstore.OnlineBookStore.exceptions.DataAccessException;
import com.onlinebookstore.OnlineBookStore.models.BookCategory;
import com.onlinebookstore.OnlineBookStore.models.BookReview;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookReviewDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    
//    Save or Update a Book Category in the Database
    public void saveBookReview(BookReview bookReview) {
        try (Session session = sessionFactory.openSession()) {
            session.saveOrUpdate(bookReview); // Spring will handle the transaction
        } catch (Exception e) {
            e.printStackTrace();
            throw new DataAccessException("Failed to save book reviews", e);
        }
    }


//    Fetch a Book Category by ID from the Database
    public BookReview findById(Long id) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(BookReview.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new DataAccessException("Failed to retrieve book review by ID", e);
        }
    }

//    Delete a Book Category from the Database
    public void deleteBookReview(Long id) {
        try (Session session = sessionFactory.openSession()) {
            BookReview bookReview = session.get(BookReview.class, id);
            if (bookReview != null) {
                session.beginTransaction();
                session.delete(bookReview);
                session.getTransaction().commit();
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new DataAccessException("Failed to delete book review", e);
        }
    }

//    Update a Book Category in the Database
    public void updateBookReview(BookReview bookReview) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.update(bookReview);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            e.printStackTrace();
            throw new DataAccessException("Failed to update book review", e);
        }
    }
}
