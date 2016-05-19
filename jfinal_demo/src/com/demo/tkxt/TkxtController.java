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
        Page<Tksqd> page = null;
        String sqdzt = getPara("sqdzt");
        if(null == sqdzt || "".trim().equals(sqdzt)){
           page = Tksqd.dao.paginate(getParaToInt(0, 1), 10);
        }else{
            page = Tksqd.dao.paginateBySqdzt(getParaToInt(0, 1), 10, sqdzt);
        }
        renderJson(EasyuiUtil.adapterEasyuiPage(page));
    }

    public void showListPage() {
        render("tksqd_list.jsp");
    }
    
    
    //-----------新立
    public void showXinjianPage() {
        render("tksqd_xinjian.jsp");
    }
    
    public void xinli() {
    	Tksqd tksqd = getModel(Tksqd.class);
    	tksqd.setSqdzt("新立");
    	tksqd.save();
        renderText(JsonKit.toJson(new Result()));
    }
    
    //-----------查看
    public void showChaKanPage() {
        setAttr("tksqd", Tksqd.dao.findById(getParaToInt("id")));
        render("tksqd_chakan.jsp");
    }
    
    //-----------变更
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
    
    //-----------注销
    public void showZhuXiaoPage() {
        setAttr("tksqd", Tksqd.dao.findById(getParaToInt("id")));
        render("tksqd_zhuxiao.jsp");
    }
    
    public void zhuxiao() {
        Tksqd tksqd = getModel(Tksqd.class);
        tksqd.setSqdzt("注销");
        tksqd.update();
        renderText(JsonKit.toJson(new Result()));
    }
    
    //-----------转让
    public void showZhuanRangPage() {
        setAttr("tksqd", Tksqd.dao.findById(getParaToInt("id")));
        render("tksqd_zhuanrang.jsp");
    }
    
    public void zhuanrang() {
        Tksqd tksqd = getModel(Tksqd.class);
        tksqd.setSqdzt("转让");
        tksqd.update();
        renderText(JsonKit.toJson(new Result()));
    }
    
    //-----------地调
    public void showDiDiaoPage() {
        setAttr("tksqd", Tksqd.dao.findById(getParaToInt("id")));
        render("tksqd_didiao.jsp");
    }
    
    public void didiao() {
        Tksqd tksqd = getModel(Tksqd.class);
        tksqd.setSqdzt("地调");
        tksqd.update();
        renderText(JsonKit.toJson(new Result()));
    }
    
    //-----------年检
    public void showNianJianPage() {
        setAttr("tksqd", Tksqd.dao.findById(getParaToInt("id")));
        render("tksqd_nianjian.jsp");
    }
    
    public void nianjian() {
        Tksqd tksqd = getModel(Tksqd.class);
        tksqd.setSqdzt("年检");
        tksqd.update();
        renderText(JsonKit.toJson(new Result()));
    }
    
    //-----------帮助
    public void showBangZhuPage() {
        render("tksqd_bangzhu.jsp");
    }
}
