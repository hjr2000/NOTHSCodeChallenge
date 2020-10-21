package com.gildedrose;

import io.cucumber.java.en.Given;

public class MyStepdefs {

    @Given("I am say something in the console")
    public void iAmSaySomethingInTheConsole() {

        System.out.println("Something in the console!");
        System.out.println("Starting Gilded Rose");

        Item[] items = new Item[] {
//                new Item("+5 Dexterity Vest", 5, 10), //
//                new Item("+5 Dexterity Vest", 10, 20), //
//                new Item("Aged Brie", 2, 45), //
//                new Item("Elixir of the Mongoose", 5, 7), //
                new Item("Sulfuras, Hand of Ragnaros", 0, 80), //
//                new Item("Sulfuras, Hand of Ragnaros", -1, 80),
//                new Item("Backstage passes to a TAFKAL80ETC concert", 15, 10),
//                new Item("Backstage passes to a TAFKAL80ETC concert", 10, 49),
//                new Item("Backstage passes to a TAFKAL80ETC concert", 5, 49),
//                // this conjured item does not work properly yet
//                new Item("Conjured Mana Cake", 4, 20)
        };

        GildedRose app = new GildedRose(items);

        int days = 20;
 
        for (int i = 1; i < days + 1; i++) {
            System.out.println("-------- day " + i + " --------");
            System.out.println("name, sellIn, quality");
            for (Item item : items) {
                System.out.println(item);
            }
            System.out.println();
            app.updateQuality();
        }
    }
}
