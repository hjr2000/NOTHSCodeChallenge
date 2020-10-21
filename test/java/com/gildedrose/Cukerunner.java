package com.gildedrose;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)

@CucumberOptions(

        features = {"test/"},

        glue = {""},

        plugin = {"pretty",

                "html:target/cucumber-html-report",

                "junit:target/cucumber-junit-report/allcukes.xml"},

        tags = "@Runme",
        monochrome=true
)

public class Cukerunner {

}