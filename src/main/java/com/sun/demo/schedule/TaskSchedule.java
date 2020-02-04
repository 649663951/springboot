package com.sun.demo.schedule;

import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * 定时任务
 * @author andy
 *
 */
@Component
public class TaskSchedule {

	@Scheduled(cron = "0 0/50 * * * *")
	public void reportCurrentTime() {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    System.out.println("定时任务，当前时间为： " + dateFormat.format(new Date()));
	}	

}
