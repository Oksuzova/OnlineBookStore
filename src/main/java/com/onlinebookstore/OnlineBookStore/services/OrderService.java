package com.onlinebookstore.OnlineBookStore.services;

import com.onlinebookstore.OnlineBookStore.dao.BookDao;
import com.onlinebookstore.OnlineBookStore.dao.CartDao;
import com.onlinebookstore.OnlineBookStore.dao.OrderDao;
import com.onlinebookstore.OnlineBookStore.dao.userDao;
import com.onlinebookstore.OnlineBookStore.models.Order;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrderService {
    private final OrderDao orderDao;
    private final BookDao bookDao;
    private final com.onlinebookstore.OnlineBookStore.dao.userDao userDao;
    private static final Logger logger = LoggerFactory.getLogger(CartService.class);

    @Autowired
    public OrderService(CartDao cartDao, OrderDao orderDao, BookDao bookDao, com.onlinebookstore.OnlineBookStore.dao.userDao userDao) {
        this.orderDao = orderDao;
        this.bookDao = bookDao;
        this.userDao = userDao;
    }

    @Transactional(readOnly = true)
    public Order getOrderById(Long id) {
        return orderDao.getOrderById(id);
    }
}
