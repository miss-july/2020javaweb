package cn.edu.lingnan.book.service.impl;
/**
 * 产品模块的业务层的实现类
 * @author Administrator
 *
 */

import org.apache.log4j.Logger;

import cn.edu.lingnan.book.bean.Book;
import cn.edu.lingnan.book.dao.BookDao;
import cn.edu.lingnan.book.dao.impl.BookDaoImpl;
import cn.edu.lingnan.book.service.BookService;
import cn.edu.lingnan.pager.PageBean;

public class BookServiceImpl implements BookService {
	//声明BookDao层对象
	private BookDao bookDao=new BookDaoImpl();
	//创建日志对象
	Logger logger=Logger.getLogger(BookServiceImpl.class);
	
	/**
	 * 猜你喜欢
	 */
	public PageBean<Book> findBookByLikeService(int uid,int pc) {
		return bookDao.findBookByLikeDao(uid,pc);
	}

	/**
	 * 调用Dao层的findBookByCategoryDao(String cid int pc)方法通过分类查找产品方法
	 * @param cid
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByCategoryService(String cid, int pc) {
		return bookDao.findBookByCategoryDao(cid, pc);
	}

	/**
	 * 调用Dao层的findBookByBnameDao(String bname,int pc)方法通过名字查找产品
	 * @param bname
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByBnameService(String bname, int pc) {
		return bookDao.findBookByBnameDao(bname, pc);
	}

	/**
	 * 调用Dao层的findBookByAuthorDao(String author,int pc)方法通过商家查询产品
	 * @param author
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByAuthorService(String author, int pc) {
		return bookDao.findBookByAuthorDao(author, pc);
	}

	/**
	 * 调用Dao层的findBookByPressDao(String press,int pc)方法通过商圈查询产品
	 * @param press
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByPressService(String press, int pc) {
		return bookDao.findBookByPressDao(press, pc);
	}

	/**
	 * 调用Dao层的findBookByCombinationDao(Book criteria,int pc)方法多条件组合查询产品
	 * @param criteria
	 * @param pc
	 * @return
	 */
	public PageBean<Book> findBookByCombinationService(Book criteria, int pc) {
		return bookDao.findBookByCombinationDao(criteria, pc);
	}

	/**
	 * 调用Dao层的findBookByBidDao(String bid)方法查询指定产品
	 * @param bid
	 * @return
	 */
	public Book findBookByBidService(String bid) {
		return bookDao.findBookByBidDao(bid);
	}

	public int findBookCountByCategoryService(String cid) {
		// 返回结果
		return bookDao.findBookCountByCategoryDao(cid);
	}

	/**
	 * 添加产品
	 * @param book
	 */
	public boolean addBookService(Book book) {
		//返回结果
		return bookDao.addBookDao(book);
	}

	/**
	 * 修改产品信息
	 * @param book
	 * @return
	 */
	public boolean updateBookByBidService(Book book) {
		// 返回结果
		return bookDao.updateBookByBidDao(book);
	}

	/**
	 * 删除产品
	 * @param bid
	 * @return
	 */
	public boolean deleteBookService(String bid) {
		// 返回结果
		return bookDao.deleteBookDao(bid);
	}

	/**
	 * 修改产品数量
	 * @param number
	 * @return
	 */
	public boolean updateBookNumberService(int number, String bid) {
		Book book=bookDao.findBookByBidDao(bid);
		number=book.getNumber()+number;
		if(number<0) {
			return false;
		}else {
			// 返回结果
			return bookDao.updateBookNumberDao(number, bid);
		}
		
	}
}
