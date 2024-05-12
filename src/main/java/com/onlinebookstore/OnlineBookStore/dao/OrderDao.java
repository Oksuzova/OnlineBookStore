package com.onlinebookstore.OnlineBookStore.dao;

import com.onlinebookstore.OnlineBookStore.exceptions.DataAccessException;
import com.onlinebookstore.OnlineBookStore.models.Book;
import com.onlinebookstore.OnlineBookStore.models.Order;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OrderDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public OrderDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Order getOrderById(Long orderId) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("SELECT cb FROM Order cb WHERE cb.orderId = :orderId", Order.class)
                    .setParameter("orderId", orderId).uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exception appropriately
            return null;
        }
    }

    public List<Order> getOrders() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("SELECT cb FROM Order cb", Order.class).list();
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exception appropriately
            return null;
        }
    }

    public void deleteOrder(Long id) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            Order order = session.get(Order.class, id);
            if (order != null) {
                session.delete(order);
            }
            session.getTransaction().commit();
        } catch (Exception e) {
            throw new RuntimeException("Failed to delete the book with ID: " + id, e);
        }
    }

    public void updateOrder(Order order) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.update(order);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            e.printStackTrace();
            throw new DataAccessException("Failed to update order", e);
        }
    }
}
