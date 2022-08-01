package com.example.aop.controller;


import com.example.aop.annotation.Decode;
import com.example.aop.annotation.Timer;
import com.example.aop.dto.User;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class RestApiController {

    @GetMapping("/get/{id}")
    public  String  get(@PathVariable long id , @RequestParam String name){

        System.out.println("  get Method  ");
        System.out.println("  get Method  " + id);
        System.out.println("  get Method  " + name);
        return id+ "  " +name;
    }


    @PostMapping("/post")
    public User post(@RequestBody User user){
        System.out.println(" post Method "+ user);
        return user;
    }

    @Timer
    @DeleteMapping("/delete")
    public void delete() throws InterruptedException {

        Thread.sleep(2000);
    }

    @Decode
    @PutMapping("/put")
    public User put(@RequestBody User user){
        /*
        *{
           "id" : "steve"
          ,"pw" : "1234"
          ,"email" : "c3RldmVAZ21haWwuY2t"
        }
        * */

        System.out.println(" put Method "+ user);

        return user;
    }

}
