package com.gildedrose;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class MyStepdefs {

    Item[] items;
    GildedRose app;

    String itemInQuestion = "";
    String typicalItemName = "+5 Dexterity Vest";
    String agedBrieItem = "Aged Brie";
    String conjuredItem = "Conjured Mana Cake";
    String sulfuraItem = "Sulfuras, Hand of Ragnaros";
    String backstagePassItem = "Backstage passes to a TAFKAL80ETC concert";
    int initialQuality = -99;
    int sellInValue = -99;
    int daysInValue = -99;
    int finalQualityValueExpected = -99;

    @Given("I have a typical item")
    public void iHaveATypicalItem() {

        itemInQuestion = typicalItemName;
    }

    @Given("I have an Aged Brie item")
    public void iHaveAnAgedBrieItem() {

        itemInQuestion = agedBrieItem;
    }

    @Given("I have a Conjured item")
    public void iHaveAConjuredItem() {

        itemInQuestion = conjuredItem;
    }

    @Given("I have a Sulfuras item")
    public void iHaveASulfuraItem() {

        itemInQuestion = sulfuraItem;
    }

    @Given("I have a Backstage Pass item")
    public void iHaveABackstagePassItem() {

        itemInQuestion = backstagePassItem;
    }

    @And("this item has an initial quality value of {int}")
    public void thisItemHasAnInitialQualityValueOfInitialQuality(Integer _initialQuality) {

        initialQuality = _initialQuality;
    }

    @And("a Sell In value of {int}")
    public void aSellInValueOfSellIn(Integer _sellInValue) {

        sellInValue = _sellInValue;
    }

    @When("we have reached {int} of the listing being live")
    public void weHaveReachedDaysInOfTheListingBeingLive(Integer _daysInValue) {
        System.out.println("*** Number of days in value: " + _daysInValue);
        daysInValue = _daysInValue;
    }

    @Then("the final quality value is {int}")
    public void theFinalQualityValueIsFinalQualityValue(Integer _finalQualityValueExpected) {
        System.out.println("*** finalQualityValueExpected: " + _finalQualityValueExpected);
        finalQualityValueExpected = _finalQualityValueExpected;

        items = new Item[] {

//                new Item("Elixir of the Mongoose", 5, 7), //
                new Item(itemInQuestion, sellInValue, initialQuality), //
        };

        app = new GildedRose(items);

        int todaysQuality = -99;

        for (int i = 1; i < daysInValue + 1; i++)
        {
            System.out.println("-------- day " + i + " --------");
            System.out.println("name, sellIn, quality");
            for (Item item : items)
            {
                System.out.println(item);
                todaysQuality = app.getCurrentQuality(item);
            }
            System.out.println();
            app.updateQuality();
        }

        Assert.assertEquals(finalQualityValueExpected,todaysQuality);
    }
}
