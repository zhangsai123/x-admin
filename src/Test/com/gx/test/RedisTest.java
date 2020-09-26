package com.gx.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:spring/redisConfig.xml"})
public class RedisTest {

    //"classpath:spring/applicationContext.xml"

//    @Autowired
//    RedisService RedisService;

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Test
    public void hasKey() {
        String key = "k1";
        System.out.println(redisTemplate.hasKey(key));
    }

    @Test
    public void getKey(){
        String key = "k1";
        System.out.println(redisTemplate.opsForValue().get(key));
    }


}
