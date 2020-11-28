package com.boat.test;

import com.boat.pojo.BoatBase;
import com.boat.service.BoatService;
import com.boat.service.impl.BoatServiceImpl;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

public class BoatServiceImplTest {
    BoatService boatService = new BoatServiceImpl();
    @Test
    public void addBoat() {
        boatService.addBoat(new BoatBase("123","oyjt","123","123","123","123","123","123","123","123",new Date(),new BigDecimal("123"),new BigDecimal("123"),new BigDecimal("123"),new BigDecimal("123"),new BigDecimal("123"),"123","123","123",123,new BigDecimal("123"),"123",123,"123",123,"123",new Date(),"123","123",new Date()));
    }

    @Test
    public void queryBoatBases() {
        for (BoatBase queryBoatBase : boatService.queryBoatBases()) {
            System.out.println(queryBoatBase);
        }
    }
}