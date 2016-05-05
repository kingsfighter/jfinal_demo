package com.demo.common.model;

import com.demo.common.model.base.BaseTksqd;
import com.jfinal.plugin.activerecord.Page;

/**
 * Generated by JFinal.
 */
@SuppressWarnings("serial")
public class Tksqd extends BaseTksqd<Tksqd> {
	public static final Tksqd dao = new Tksqd();
	/**
     * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
     */
    public Page<Tksqd> paginate(int pageNumber, int pageSize) {
        return paginate(pageNumber, pageSize, "select *", "from tksqd order by id asc");
    }
}
