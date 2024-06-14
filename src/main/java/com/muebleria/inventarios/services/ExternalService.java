package com.muebleria.inventarios.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.retry.annotation.Backoff;
import org.springframework.retry.annotation.Retryable;
import org.springframework.stereotype.Service;

@Service
public class ExternalService {
    private Logger logger = LoggerFactory.getLogger(ExternalService.class);
    private int counter = 1;
    @Retryable(value = {RuntimeException.class}, maxAttempts = 3, backoff = @Backoff(delay = 2000))
    public String fetchData(int value) {
        logger.info("Attempting to fetch data...");
        if (counter < 3) {
            logger.error("Failed to fetch data!");
            throw new RuntimeException("Simulated error occurred");
        }
        counter ++;
        return "Data fetched successfully!";
    }
}
