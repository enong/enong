var ioc = {
	dataSource : {
		type : "org.apache.commons.dbcp2.BasicDataSource",
		events : {
			depose : 'close'
		},
		fields : {
			driverClassName : 'com.mysql.jdbc.Driver',
			url : 'jdbc:mysql://192.168.79.6:3306/enong?useUnicode=true&amp;characterEncoding=utf8',
			username : 'enong',
			password : 'enong'
		}
	},
	dao : {
		type : "org.nutz.dao.impl.NutDao",
		args : [ {
			refer : 'dataSource'
		} ]
	}
};