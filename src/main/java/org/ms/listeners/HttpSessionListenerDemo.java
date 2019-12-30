package org.ms.listeners;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class HttpSessionListenerDemo implements HttpSessionListener {

	private int sessioCount;

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		System.out.println("sessionCreated");
		synchronized (this) {
			sessioCount++;
			System.out.println("sessioncount " + sessioCount);
		}
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		System.out.println("session destroyed");
		synchronized (this) {
			sessioCount--;
			System.out.println("sessioncount " + sessioCount);
			
			
			
			
			
			
			
			
			
		}
	}
}
