package com.hjrz.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hjrz.admin.dao.FeedbackMapper;
import com.hjrz.admin.entity.Feedback;

@Service
public class FeedbackService {

	@Autowired
	private FeedbackMapper feedbackMapper;

	/**
	 * @author RodulphLiu
	 * @description findallfeedback
	 * @date 2017年10月19日
	 * @version 1.0
	 */
	public List<Feedback> findallfeedback(Feedback feedback)throws Exception
	{
		List<Feedback> feedbacks = feedbackMapper.selectAllFeedBack(feedback);
		return feedbacks;
	}
}
