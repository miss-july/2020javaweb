package cn.edu.lingnan.book.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.edu.lingnan.book.bean.Book;
import cn.edu.lingnan.book.dao.BookDao;
import cn.edu.lingnan.category.bean.Category;
import cn.edu.lingnan.order.bean.Order;
import cn.edu.lingnan.pager.Expression;
import cn.edu.lingnan.pager.PageBean;
import cn.edu.lingnan.pager.PageConstants;
import cn.edu.lingnan.util.JDBC;

/**
 * 产品模块的持久层的实现类
 * @author Administrator
 *
 */
public class BookDaoImpl implements BookDao {
	/**
	 * 封装产品信息
	 * @param rSet
	 * @return
	 */
	public Book Encapsulation(ResultSet rSet) {
		Book book=new Book();
		try {
			book.setBid(rSet.getString("bid"));
			book.setBname(rSet.getString("bname"));
			book.setAuthor(rSet.getString("author"));
			book.setPrice(rSet.getDouble("price"));
			book.setCurrPrice(rSet.getDouble("currPrice"));
			book.setDiscount(rSet.getDouble("discount"));
			book.setPress(rSet.getString("press"));
			book.setPublishtime(rSet.getString("publishtime"));
			book.setEdition(rSet.getInt("edition"));
			book.setPageNum(rSet.getInt("pageNum"));
			book.setWordNum(rSet.getString("wordNum"));
			book.setPrinttime(rSet.getString("printtime"));
			book.setBooksize(rSet.getString("booksize"));
			book.setPaper(rSet.getString("paper"));
			book.setNumber(rSet.getInt("number"));
			book.setImage_w(rSet.getString("image_w"));
			book.setImage_b(rSet.getString("image_b"));
			Category category=new Category();
			category.setCid(rSet.getString("cid"));
			book.setCategory(category);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return book;
	}
	/**
	 * 封装产品信息到Book对象中
	 * @param rSet
	 * @return
	 */
	public Book EncapsulationBook(ResultSet rSet) {
		Book book=null;
		try {
			if(rSet.next()) {
				book=Encapsulation(rSet);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBC.closeAll(rSet, JDBC.ps, JDBC.conn);
		}
		return book;
	}
	/**
	 * 封装产品信息到List<Book>对象中
	 * @param rSet
	 * @return
	 */
	public List<Book> EncapsulationBookList(ResultSet rSet) {
		//声明变量
		List<Book> bookList=new ArrayList<Book>();
		Book book=null;
		try {
			while(rSet.next()) {
				book=Encapsulation(rSet);
				bookList.add(book);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBC.closeAll(rSet, JDBC.ps, JDBC.conn);
		}
		return bookList;
	}
	/**
	 * 通过产品id查询指定产品
	 * @param bid
	 * @return
	 */
	public Book findBookByBidDao(String bid) {
		//创建jdbc对象
		ResultSet rSet=null;
		//声明变量
		Book book=null;
		//创建sql语句
		String sql="select * from t_book where bid=?";
		//给占位符赋值
		Object[] params= {bid};
		//执行sql命令
		rSet=JDBC.executeQuery(sql, params);
		book=EncapsulationBook(rSet);
		return book;
	}
	/**
	 * 按分类查找产品
	 * @param cid
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByCategoryDao(String cid, int pc) {
		List<Expression> exprList = new ArrayList<Expression>();
		exprList.add(new Expression("cid", "=", cid));
		return findByCriteriaDao(exprList, pc);
	}
	/**
	 * 通过名字查找产品
	 * @param bname
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByBnameDao(String bname, int pc) {
		List<Expression> exprList = new ArrayList<Expression>();
		exprList.add(new Expression("bname", "like", "%" + bname + "%"));
		return findByCriteriaDao(exprList, pc);
	}
	/**
	 * 通过商家查询产品
	 * @param author
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByAuthorDao(String author, int pc) {
		List<Expression> exprList = new ArrayList<Expression>();
		exprList.add(new Expression("author", "like", "%" + author + "%"));
		return findByCriteriaDao(exprList, pc);
	}
	/**
	 * 通过商圈查询产品
	 * @param press
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByPressDao(String press, int pc) {
		List<Expression> exprList = new ArrayList<Expression>();
		exprList.add(new Expression("press", "like", "%" + press + "%"));
		return findByCriteriaDao(exprList, pc);
	}
	/**
	 * 多条件组合查询
	 * @param criteria
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByCombinationDao(Book criteria, int pc) {
		List<Expression> exprList = new ArrayList<Expression>();
		exprList.add(new Expression("bname", "like", "%" + criteria.getBname() + "%"));
		exprList.add(new Expression("author", "like", "%" + criteria.getAuthor() + "%"));
		exprList.add(new Expression("press", "like", "%" + criteria.getPress() + "%"));
		return findByCriteriaDao(exprList, pc);
	}
	
	
	/**
	 * 通用的分页查询方法
	 * @param expressions
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findByCriteriaDao(List<Expression> exprList, int pc) {
		
		//创建jdbc对象
		ResultSet rSet=null;
		//声明变量
		int tr = 0;//总数据量
		Object[] params=new Object[exprList.size()];//占位符辅赋值数组
		int k=0;
		int ps;//产品每页记录数
		/*
		 * 1.得到ps
		 * 2.得到tr
		 * 3.得到beanList
		 * 4.创建PageBean，返回
		 */
		//1.得到ps
		ps=PageConstants.BOOK_PAGE_SIZE;//每页记录数
		//2.通过exprList生成where子句
		StringBuilder whereSql=new StringBuilder(" where 1=1");
		for(Expression expr:exprList) {
			whereSql.append(" and ").append(expr.getName()).append(" ").append(expr.getOperator()).append(" ");
			if(!"is null".equals(expr.getValue())) {
				whereSql.append("?");
				params[k]=expr.getValue();
				k++;
			}
		}

		//3.得到总记录数
			//创建sql语句
			String sql="select count(*) from t_book"+whereSql;
			try {
				//执行sql语句
				rSet=JDBC.executeQuery(sql, params);
				//获取结果集结果
				if(rSet.next()) {
					tr=rSet.getInt("count(*)");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				JDBC.closeAll(rSet, JDBC.ps, JDBC.conn);
			}
		//4.得到beanList,即当前页记录
			//声明变量
			List<Book> beanList=new ArrayList<Book>();
			//创建sql语句
			sql="select * from t_book"+whereSql+"  order by orderBy limit ?,?";
			int length=params.length;
			//给占位符赋值
			Object[] params1= {(pc-1)*ps,ps};
			Object[] params2=new Object[params.length+params1.length];
			System.arraycopy(params, 0, params2, 0, length);
			System.arraycopy(params1, 0, params2, length, params1.length);
			ResultSet rSet1=null;
			//执行sql
			rSet1=JDBC.executeQuery(sql, params2);
			beanList=EncapsulationBookList(rSet1);
		//5.创建PageBean,设置参数
			PageBean<Book> pageBean=new PageBean<Book>();
			pageBean.setBeanList(beanList);
			pageBean.setPc(pc);
			pageBean.setPs(ps);
			pageBean.setTr(tr);
			return pageBean;
	}
	
	/**
	 * 通过大数据来猜测用户喜爱的商品
	 * @param expressions
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByLikeDao(int uid,int pc) {
		
		//创建jdbc对象
		ResultSet rSet0=null;
		ResultSet rSet=null;
		ResultSet rSet1=null;
		ResultSet rSet2=null;
		
		//声明变量
		int tr=0;
		int ps;
		List<Book> beanList=new ArrayList<Book>();
		ps=PageConstants.BOOK_PAGE_SIZE;//每页记录数
		//如果用户已登录
		if(uid!=0) {
			Object[] params0= {uid};
			String sql0="select count(distinct t_orderitem.bid) as sum from t_order,t_orderitem,t_book where t_order.oid=t_orderitem.oid and t_orderitem.bid=t_book.bid and t_order.uid=?";
			try {
				//执行sql语句
				rSet0=JDBC.executeQuery(sql0, params0);
				//获取结果集结果
				if(rSet0.next()) {
					tr=rSet0.getInt("sum");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				JDBC.closeAll(rSet, JDBC.ps, JDBC.conn);
			}
			if(tr!=0) {
				//得到beanList,即当前页记录
				String sql="select t_orderitem.bid,t_book.bname,t_book.author,t_book.price,t_book.currPrice,t_book.discount,\r\n" + 
						"	t_book.press,t_book.publishtime,t_book.edition,t_book.pageNum,t_book.wordNum,t_book.printtime,t_book.booksize,\r\n" + 
						"	t_book.paper,t_book.number,t_book.image_w,t_book.image_b,t_book.cid,count(*) as shoptime from t_order,t_orderitem,t_book \r\n" + 
						"	where t_order.oid=t_orderitem.oid and t_orderitem.bid=t_book.bid and t_order.uid=? group by t_orderitem.bid order by shoptime desc";
				Object[] params= {uid};
				rSet=JDBC.executeQuery(sql, params);
				//获取结果集结果
	            beanList=EncapsulationBookList(rSet);
			}
			else {
				String sql1="select t_orderitem.bid,t_book.bname,t_book.author,t_book.price,t_book.currPrice,t_book.discount,\r\n" + 
						"	t_book.press,t_book.publishtime,t_book.edition,t_book.pageNum,t_book.wordNum,t_book.printtime,t_book.booksize,\r\n" + 
						"	t_book.paper,t_book.number,t_book.image_w,t_book.image_b,t_book.cid,count(*) as shoptime from t_order,t_orderitem,t_book \r\n" + 
						"	where t_order.oid=t_orderitem.oid and t_orderitem.bid=t_book.bid group by t_orderitem.bid order by shoptime desc";
				rSet1=JDBC.executeQuery(sql1, null);
				beanList=EncapsulationBookList(rSet1);
			}
		}
		else {
			String sql3="select count(distinct t_orderitem.bid) as sum from t_order,t_orderitem,t_book where t_order.oid=t_orderitem.oid and t_orderitem.bid=t_book.bid";
			try {
				//执行sql语句
				rSet2=JDBC.executeQuery(sql3, null);
				//获取结果集结果
				if(rSet2.next()) {
					tr=rSet2.getInt("sum");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			String sql2="select t_orderitem.bid,t_book.bname,t_book.author,t_book.price,t_book.currPrice,t_book.discount,\r\n" + 
					"	t_book.press,t_book.publishtime,t_book.edition,t_book.pageNum,t_book.wordNum,t_book.printtime,t_book.booksize,\r\n" + 
					"	t_book.paper,t_book.number,t_book.image_w,t_book.image_b,t_book.cid,count(*) as shoptime from t_order,t_orderitem,t_book \r\n" + 
					"	where t_order.oid=t_orderitem.oid and t_orderitem.bid=t_book.bid group by t_orderitem.bid order by shoptime desc";
			rSet2=JDBC.executeQuery(sql2, null);
			beanList=EncapsulationBookList(rSet2);
		}
		//5.创建PageBean,设置参数
		PageBean<Book> pageBean=new PageBean<Book>();
		pageBean.setBeanList(beanList);
		pageBean.setPc(pc);
		pageBean.setPs(ps);
		pageBean.setTr(tr);
		return pageBean;
	}
	
	/**
	 * 查询指定分类下的产品的个数
	 * @param cid
	 * @return
	 */
	public int findBookCountByCategoryDao(String cid) {
		// 创建jdbc对象
		ResultSet rSet=null;
		//声明变量
		int index=0;
		//创建sql语句
		String sql="select count(*) from t_book where cid=?";
		//给占位符赋值
		Object[] params= {cid};
		try {
			//执行sql语句
			rSet=JDBC.executeQuery(sql, params);
			if(rSet.next()) {
				index=rSet.getInt("count(*)");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBC.closeAll(rSet, JDBC.ps, JDBC.conn);
		}
		return index;
	}
	
	/**
	 * 添加产品
	 * @param book
	 * @return
	 */
	public boolean addBookDao(Book book) {
		// 创建sql语句
		String sql = "insert into t_book(bid,bname,author,price,currPrice," +
				"discount,press,publishtime,edition,pageNum,wordNum,printtime," +
				"booksize,paper,cid,number,image_w,image_b)" +
				" values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		//给占位符赋值
		Object[] params = {book.getBid(),book.getBname(),book.getAuthor(),
				book.getPrice(),book.getCurrPrice(),book.getDiscount(),
				book.getPress(),book.getPublishtime(),book.getEdition(),
				book.getPageNum(),book.getWordNum(),book.getPrinttime(),
				book.getBooksize(),book.getPaper(), book.getCategory().getCid(),
				book.getNumber(),book.getImage_w(),book.getImage_b()};
		//执行sql语句
		return JDBC.executeUpdate(sql, params);
	}
	
	/**
	 * 修改产品信息
	 * @param book
	 * @return
	 */
	public boolean updateBookByBidDao(Book book) {
		//创建sql语句
		String sql = "update t_book set bname=?,author=?,price=?,currPrice=?," +
				"discount=?,press=?,publishtime=?,edition=?,pageNum=?,wordNum=?," +
				"printtime=?,booksize=?,paper=?,cid=?,number=? where bid=?";
		//给占位符赋值
		Object[] params = {book.getBname(),book.getAuthor(),
				book.getPrice(),book.getCurrPrice(),book.getDiscount(),
				book.getPress(),book.getPublishtime(),book.getEdition(),
				book.getPageNum(),book.getWordNum(),book.getPrinttime(),
				book.getBooksize(),book.getPaper(), 
				book.getCategory().getCid(),book.getNumber(),book.getBid()};
		//执行sql语句
		return JDBC.executeUpdate(sql, params);
	}
	/**
	 * 删除产品
	 * @param bid
	 * @return
	 */
	public boolean deleteBookDao(String bid) {
		// 创建sql语句
		String sql="delete from t_book where bid=?";
		//给占位符赋值
		Object[] params= {bid};
		//执行sql语句
		return JDBC.executeUpdate(sql, params);
	}
	/**
	 * 修改产品数量
	 * @param number
	 * @return
	 */
	public boolean updateBookNumberDao(int number,String bid) {
		// 创建sql语句
		String sql="update t_book set number=? where bid=?";
		//给占位赋值
		Object[] params= {number,bid};
		//执行sql语句
		return JDBC.executeUpdate(sql, params);
	}
	
	
}
