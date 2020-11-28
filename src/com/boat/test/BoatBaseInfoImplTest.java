package com.boat.test;

import com.boat.dao.BoatBaseInfo;
import com.boat.dao.impl.BoatBaseInfoImpl;
import com.boat.pojo.BoatBase;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;

import static org.junit.Assert.*;

public class BoatBaseInfoImplTest {
    BoatBaseInfo boatBaseInfo = new BoatBaseInfoImpl();
    @Test
    public void saveBoatBase() {
        System.out.println(boatBaseInfo.saveBoatBase(new BoatBase("123","oyjt","123","123","123","123","123","123","123","123",new Date(),new BigDecimal("123"),new BigDecimal("123"),new BigDecimal("123"),new BigDecimal("123"),new BigDecimal("123"),"123","123","123",123,new BigDecimal("123"),"123",123,"123",123,"123",new Date(),"123","123",new Date())));
        boatBaseInfo.saveBoatBase(new BoatBase("123","oyjt","123","123","123","123","123","123","123","123",new Date(),new BigDecimal("123"),new BigDecimal("123"),new BigDecimal("123"),new BigDecimal("123"),new BigDecimal("123"),"123","123","123",123,new BigDecimal("123"),"123",123,"123",123,"123",new Date(),"123","123",new Date()));
    }
}