package com.gildedrose;

class GildedRose {

    Item[] items;

    public GildedRose(Item[] items) {
        this.items = items;
    }

    public void updateQuality()
    {
        for (Item item : items) {
            switch (item.name) {

                case "Aged Brie":
                    System.out.println("Aged Brie detected");
                    HandleAgedBrieItemCase(item);
                    break;

                case "Backstage passes to a TAFKAL80ETC concert":
                    System.out.println("Backstage passes to a TAFKAL80ETC concert detected");
                    HandleBackstagePassItemCase(item);
                    break;

                case "Sulfuras, Hand of Ragnaros":
                    System.out.println("Sulfuras, Hand of Ragnaros detected");
                    HandleSulfurasItemCase(item);
                    break;

                case "Conjured Mana Cake":
                    System.out.println("Conjured Mana Cake detected");
                    HandleConjuredItemCase(item);
                    break;

                default:
                    System.out.println("Standard item detected");
                    HandleStandardItemCase(item);
            }
        }
    }

    public int getCurrentQuality(Item item){
        return item.quality;
    }

    public void HandleStandardItemCase(Item item){

        if (item.quality > 0)
        {
            item.quality = item.quality - 1;
        }

        item.sellIn = item.sellIn - 1;

        if (item.sellIn < 1)
        {
            if (item.quality > 0)
            {
                    item.quality = item.quality - 1;
            }
        }
    }

    public void HandleAgedBrieItemCase(Item item) {

        if (item.quality < 50)
        {
            item.quality = item.quality + 1;
        }
    }

    public void HandleConjuredItemCase(Item item){

        item.quality = item.quality - 2;

        item.sellIn = item.sellIn - 1;

        if (item.sellIn < 1)
        {
            item.quality = item.quality - 2;
        }

        if (item.quality < 0)
            item.quality = 0;
    }

    public void HandleBackstagePassItemCase(Item item) {

        item.sellIn = item.sellIn - 1;

        if (item.sellIn < 1)
        {
            item.quality = 0;
            return;
        }

        if (item.sellIn < 11){
            if (item.sellIn < 6){
                item.quality = item.quality + 3;
            }
            else
            {
                item.quality = item.quality + 2;
            }
        }
        else
        {
            item.quality = item.quality + 1;
        }

        if (item.quality > 50)
        {
            item.quality = 50;
        }
    }

    public void HandleSulfurasItemCase(Item item)
    {
        item.quality = 80;
    }
}