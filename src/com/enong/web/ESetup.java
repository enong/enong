package com.enong.web;

import java.util.List;

import org.nutz.dao.Dao;
import org.nutz.ioc.Ioc;
import org.nutz.ioc.impl.NutIoc;
import org.nutz.ioc.loader.json.JsonLoader;
import org.nutz.mvc.NutConfig;
import org.nutz.mvc.Setup;

import com.enong.utils.Configer;

public class ESetup implements Setup {


	public void destroy(NutConfig config) {
		
	}

	public void init(NutConfig config) {
		/*Ioc ioc = new NutIoc(new JsonLoader("ioc/dao.js"));
		Dao dao = ioc.get(Dao.class, "dao");*/
//		List<EStaticConfig> list = dao.query(EStaticConfig.class, null);
//		for(EStaticConfig esc : list){
//			Configer.addConfig(esc.getType(), esc.getName(), esc.getValue());
//		}
	}

}
