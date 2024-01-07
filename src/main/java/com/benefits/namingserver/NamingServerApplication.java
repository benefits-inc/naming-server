package com.benefits.namingserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class NamingServerApplication {

	// commit cicd scm test - 3
	public static void main(String[] args) {
		SpringApplication.run(NamingServerApplication.class, args);
	}

}
