package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.common.utils.Md5Util;
import cc.mrbird.febs.system.entity.Order;
import cc.mrbird.febs.system.entity.User;
import cc.mrbird.febs.system.service.IOrderService;
import cc.mrbird.febs.system.service.IUserService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.wuwenze.poi.ExcelKit;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Map;

/**
 * @author MrBird
 */
@Slf4j
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping("order")
public class OrderController extends BaseController {

    private final IOrderService orderService;

    @GetMapping("{customername}")
    public Order getUser(@NotBlank(message = "{required}") @PathVariable String customername) {
        return this.orderService.findOrderDetailList(customername);
    }


    @GetMapping("list")
    @RequiresPermissions("user:view")
    public FebsResponse orderList(Order order, QueryRequest request) {
        Map<String, Object> dataTable = getDataTable(this.orderService.findOrderDetailList(order, request));
        return new FebsResponse().success().data(dataTable);
    }

    @PostMapping
    @RequiresPermissions("user:add")
    @ControllerEndpoint(operation = "新增订单", exceptionMessage = "新增订单失败")
    public FebsResponse addUser(@Valid Order order) {
        this.orderService.createOrder(order);
        return new FebsResponse().success();
    }

    @GetMapping("delete/{userIds}")
    @RequiresPermissions("user:delete")
    @ControllerEndpoint(operation = "删除订单", exceptionMessage = "删除订单失败")
    public FebsResponse deleteOrders(@NotBlank(message = "{required}") @PathVariable String orderIds) {
        String[] ids = orderIds.split(StringPool.COMMA);
        this.orderService.deleteOrders(ids);
        return new FebsResponse().success();
    }

    @PostMapping("update")
    @RequiresPermissions("user:update")
    @ControllerEndpoint(operation = "修改订单", exceptionMessage = "修改订单失败")
    public FebsResponse updateOrder(@Valid Order order) {
        if (order.getOrderId() == null) {
            throw new FebsException("订单ID为空");
        }
        this.orderService.updateOrder(order);
        return new FebsResponse().success();
    }

}
