package com.onlinebookstore.OnlineBookStore.services;

import com.onlinebookstore.OnlineBookStore.dao.OrderDao;
import com.onlinebookstore.OnlineBookStore.models.Order;
import com.onlinebookstore.OnlineBookStore.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrderService {
    private final OrderDao orderDao;

    @Autowired
    public OrderService(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    public List<Order> getOrders() {
        return orderDao.getOrders();
    }

    @Transactional(readOnly = true)
    public Order getOrderById(Long id) {
        return orderDao.getOrderById(id);
    }

    public void deleteOrderById(Long id) {
        orderDao.deleteOrder(id);
    }

    public void updateOrder(Order order) {
        if (order == null || order.getOrderId() == null) {
            throw new RuntimeException("Invalid user details provided");
        }
        Order existingOrder = orderDao.getOrderById(order.getOrderId());
        if (existingOrder == null) {
            throw new RuntimeException("Order not found");
        }

        // Check each field to see if it's present and only then update it
        if (order.getTotalPrice() != null)
            existingOrder.setTotalPrice(order.getTotalPrice());
        if (order.getStatus() != null && !order.getStatus().isEmpty())
            existingOrder.setStatus(order.getStatus());

        orderDao.updateOrder(existingOrder);
    }
}
