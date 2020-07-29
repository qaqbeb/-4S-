package cc.mrbird.febs.system.service;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Order;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.scheduling.annotation.Async;

/**
 * @author MrBird
 */
public interface IOrderService extends IService<Order> {

    /**
     * 通过客户名称查找用户
     *
     * @param customerName 客户姓名
     * @return 订单
     */
    Order findByName(String customerName);

    /**
     * 查找订单详细信息
     *
     * @param request request
     * @param order    订单对象，用于传递查询条件
     * @return IPage
     */
    IPage<Order> findOrderDetailList(Order order, QueryRequest request);

    /**
     * 通过客户名查找订单详细信息
     *
     * @param customerName 客户名
     * @return 订单信息
     */
    Order findOrderDetailList(String customerName);



    /**
     * 新增订单
     *
     * @param Order order
     */
    void createOrder(Order order);

    /**
     * 删除订单
     *
     * @param orderIds 订单 id数组
     */
    void deleteOrders(String[] orderIds);

    /**
     * 修改订单
     *
     * @param Order order
     */
    void updateOrder(Order order);




}
