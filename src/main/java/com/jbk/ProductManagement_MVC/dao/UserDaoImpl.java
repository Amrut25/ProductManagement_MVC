package com.jbk.ProductManagement_MVC.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.jbk.ProductManagement_MVC.entity.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory factory;

	public User loginUser(User user) {
		Session session = factory.openSession();
		User usr = null;
		try {
			usr = session.get(User.class, user.getUsername());

			if (usr != null) {
				if (!usr.getPassword().equals(user.getPassword())) {

					usr = null;
				}
			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			session.close();
		}

		return usr;
	}

	@Override
	public boolean addUserForm(User user) {

		Session session = factory.openSession();
		 User usr = session.get(User.class, user.getUsername());
		Transaction transaction = session.beginTransaction();
		boolean isAdded = false;
		
		try {

			if (usr == null) {
				
				session.save(user);
				transaction.commit();
				isAdded = true;
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return isAdded;
	}

	@Override
	public List<User> userList() {
		Session session=factory.openSession();
		
		try {
			
			List<User> users=session.createCriteria(User.class).list();
			for (User user : users) {
				System.out.println(user);
			}
			return users;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return null;
	}

	@Override
	public User getUserByUsername(String username) {
		Session session=factory.openSession();
		User user=null;
		try {
			user=session.get(User.class, username);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return user;
	}

}
