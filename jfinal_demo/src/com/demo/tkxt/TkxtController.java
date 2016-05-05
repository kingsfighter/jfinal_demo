package com.demo.tkxt;

import com.demo.common.model.Tksqd;
import com.demo.common.result.Result;
import com.demo.util.EasyuiUtil;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * UserController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class TkxtController extends Controller {
    public void index() {
        render("tksqd_list.jsp");
    }

    public void list() {
        Page<Tksqd> page = Tksqd.dao.paginate(getParaToInt(0, 1), 10);
        renderJson(EasyuiUtil.adapterEasyuiPage(page));
    }

    public void showListPage() {
        render("tksqd_list.jsp");
    }
    
    public void showXinjianPage() {
        render("tksqd_xinjian.jsp");
    }
    
    public void xinli() {
    	Tksqd tksqd = getModel(Tksqd.class);
    	tksqd.setSqdzt("新立");
    	tksqd.save();
        renderText(JsonKit.toJson(new Result()));
    }
    
    public void showBianGengPage() {
    	setAttr("tksqd", Tksqd.dao.findById(getParaToInt("id")));
        render("tksqd_biangeng.jsp");
    }
    
    public void biangeng() {
    	Tksqd tksqd = getModel(Tksqd.class);
    	tksqd.setSqdzt("变更");
    	tksqd.update();
        renderText(JsonKit.toJson(new Result()));
    }
    
}
