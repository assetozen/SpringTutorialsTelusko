package com.assegd;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

@Component
public class MediaTech implements MobileProcessor{
    @Override
    public void process() {
        System.out.println("2nd Best CPU");
    }
}
