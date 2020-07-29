package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.authentication.ShiroRealm;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.utils.Md5Util;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.system.entity.Order;

import cc.mrbird.febs.system.entity.UserDataPermission;
import cc.mrbird.febs.system.entity.UserRole;
import cc.mrbird.febs.system.mapper.OrderMapper;

import cc.mrbird.febs.system.service.IOrderService;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * @author MrBird
 */
@Service
@RequiredArgsConstructor
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class OrderServiceImpl extends ServiceImpl<OrderMapper, Order> implements IOrderService {

    private final ShiroRealm shiroRealm;

    @Override
    public Order findByName(String customername) {
        return this.baseMapper.findByName(customername);
    }

    @Override
    public IPage<Order> findOrderDetailList(Order order, QueryRequest request) {
        if (StringUtils.isNotBlank(order.getCreateTimeFrom()) &&
                StringUtils.equals(order.getCreateTimeFrom(), order.getCreateTimeTo())) {
            order.setCreateTimeFrom(order.getCreateTimeFrom() + " 00:00:00");
            order.setCreateTimeTo(order.getCreateTimeTo() + " 23:59:59");
        }
        Page<Order> page = new Page<>(request.getPageNum(), request.getPageSize());
        page.setSearchCount(false);
        page.setTotal(baseMapper.countOrderDetail(order));
        SortUtil.handlePageSort(request, page, "orderId", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findOrderDetailPage(page, order);
    }

    @Override
    public Order findOrderDetailList(String customerName) {
        Order param = new Order();
        param.setCustomerName(customerName);
        List<Order> order = this.baseMapper.findOrderDetail(param);
        return CollectionUtils.isNotEmpty(order) ? order.get(0) : null;
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public void createOrder(Order order) {
        order.setCreateTime(new Date());
        save(order);

    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteOrders(String[] orderIds) {
        List<String> list = Arrays.asList(orderIds);
        // 删除订单
        this.removeByIds(list);

    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateOrder(Order order) {
        updateById(order);

    }


}
