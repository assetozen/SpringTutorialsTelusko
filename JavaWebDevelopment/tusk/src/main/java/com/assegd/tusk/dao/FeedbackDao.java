package com.assegd.tusk.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.assegd.tusk.entity.Feedback;

@Component
public class FeedbackDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void addFeedback(Feedback feedback) {
		System.out.println("in addFeedback" + feedback);
		Session session = sessionFactory.getCurrentSession();
		session.save(feedback);
		
	}
	
	
	@Transactional
	public List<Feedback> getFeedbacks() {
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Feedback"); // HQL:- Hybernate Query language 
		List<Feedback> feedbacks = (List<Feedback>)query.list();
		return feedbacks;
		
	}
}
