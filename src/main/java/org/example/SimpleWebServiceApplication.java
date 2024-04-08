package org.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class SimpleWebServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(SimpleWebServiceApplication.class, args);
    }
}

@RestController
class GreetingController {

    @GetMapping("/hello")
    public String hello() {
        return "Привет, мир!";
    }
}
