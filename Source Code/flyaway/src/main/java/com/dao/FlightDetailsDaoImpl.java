package com.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.dto.FlightDetails;

public class FlightDetailsDaoImpl implements FlightDetailsDao {
	
	private SessionFactory factory;
	FlightDetails flight = null;
	
	public FlightDetailsDaoImpl() 
	{
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();
		factory = meta.getSessionFactoryBuilder().build();
	}

	public Integer addFlight(FlightDetails flight) {
		Integer flightId = null;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		flightId = (Integer) session.save(flight);
		txn.commit();
		session.close();
		return flightId;
	}
	
	public List<FlightDetails> searchFlights(String source, String destination) {
		List<FlightDetails> flights = null;
		Session session = factory.openSession();
		
		String hql = "FROM FlightDetails where source = :src AND destination = : dest";
		TypedQuery<FlightDetails> query = session.createQuery(hql);
		query.setParameter("src", source);
		query.setParameter("dest", destination);
		flights = query.getResultList();
		session.close();
		return flights;
	}
	
	public List<FlightDetails> getAllFlights() {
		List<FlightDetails> flights = null;
		Session session = factory.openSession();
		
		String hql = "FROM FlightDetails";
		TypedQuery<FlightDetails> query = session.createQuery(hql);
		flights = query.getResultList();
		session.close();
		return flights;
	}

}
