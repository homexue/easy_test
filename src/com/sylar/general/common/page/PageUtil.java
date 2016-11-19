package com.sylar.general.common.page;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.annotate.JsonIgnore;

/**
 * PageUtil. 分页专用.
 * 由于使用的是easyUI, 获取参数的时候 rows:每页显示的数据量    返回的时候是数据data所以 这里的get,set会有点儿不一样.
 * @author Administrator
 *
 */
public class PageUtil {  
    
    private int pageSize;  
      
    private int total;  
      
    private int page;  
      
    private String orderStr;  
      
    private String sort;  
      
    private String order;  
      
    private Object queryObj;  
      
    private List<?> rows;  
      
    public String getOrderStr() {  
        orderStr = "";  
        if (StringUtils.isNotEmpty(order)) {  
            String[] orders = order.split(",");  
            String[] sorts = sort.split(",");  
            for (int i = 0; i < sorts.length; i++) {  
                orderStr += sorts[i] + " " + orders[i] + ", ";  
            }  
            orderStr = orderStr.endsWith(", ") ? orderStr.substring(0, orderStr.length() - 2) : orderStr;  
        }  
        return orderStr;  
    }  
      
    public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<?> getRows() {
		return rows;
	}

	public void setRows(List<?> rows) {
		this.rows = rows;
	}

	public int getTotal() {  
        return total;  
    }  
  
    public void setTotal(int total) {  
        this.total = total;  
    }  
  
    public int getPage() {  
        return page;  
    }  
  
    public void setPage(int page) {  
        this.page = page;  
    }  
  
    public String getSort() {  
        return sort;  
    }  
  
    public void setSort(String sort) {  
        this.sort = sort;  
    }  
  
    public String getOrder() {  
        return order;  
    }  
  
    public void setOrder(String order) {  
        this.order = order;  
    }  
  
    public Object getQueryObj() {  
        return queryObj;  
    }  
  
    public void setQueryObj(Object queryObj) {  
        this.queryObj = queryObj;  
    }  
  
    public void setOrderStr(String orderStr) {  
        this.orderStr = orderStr;  
    }  
  
  
    @Override  
    public String toString() {  
        return "PageUtil [pageSize=" + pageSize + ", total=" + total + ", page=" + page  
                + ", orderStr=" + orderStr + ", sort=" + sort + ", order="  
                + order + ", queryObj=" + queryObj + ", rows=" + rows + "]";  
    }  
  
}  
