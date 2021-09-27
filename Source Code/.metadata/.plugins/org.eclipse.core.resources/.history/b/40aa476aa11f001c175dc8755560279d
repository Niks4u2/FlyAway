package com.dao;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.dto.Admin;

public class AdminDaoImpl implements AdminDao{
	
	private SessionFactory factory;
	Admin admin = null;
	
	public AdminDaoImpl() 
	{
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();
		factory = meta.getSessionFactoryBuilder().build();
	}
	
	public Integer addAdmin(Admin admin) {
		Integer adminId = null;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		adminId = (Integer) session.save(admin);
		txn.commit();
		session.close();
		return adminId;
	}

	public void updateAdminPassword(String email, String password) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		
		Admin admin = searchAdminByEmail(email);
		admin.setPassword(password);
		
		session.update(admin);
		txn.commit();
		session.close();
	}

	public void deleteAdmin(Integer adminId) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		Admin employee = session.get(Admin.class, adminId);

		session.delete(employee);
		txn.commit();
		session.close();
	}
	
	public Admin searchAdminByEmail(String email) {
		Session session = factory.openSession();
		
		String hql = "FROM Admin where email = :mail";
		TypedQuery<Admin> query = session.createQuery(hql);
		query.setParameter("mail", email);
		Admin admin = query.getSingleResult();
		session.close();
		return admin;
	}

	public boolean validateAdmin(Admin admin) {
		boolean isAdminValid = false;
		String email = admin.getEmail();
		String password = admin.getPassword();
		
		if(email.equals(admin.getEmail()) && password.equals(admin.getPassword()))
			isAdminValid = true;
		
		return isAdminValid;
	}

}
