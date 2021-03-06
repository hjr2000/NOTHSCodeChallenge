# Gilded Rose (Submission by Haden J-Robbins)

### Assumptions

It was necessary to make some assumptions to complete the task:

- The initial quality value of any non ‘Sulfura’ item is arbitrary and can take any positive non-zero integer value up to a maximum of 50.

- The rate of degradation of quality is one point per day for typical items prior to the sell by date, 2 points thereafter. However, the rate of degradation of quality is two points per day for ‘Conjured’ items prior to the sell by date, 4 points thereafter.

- Aged Brie increases in quality at the rate of 1 point per day. It has no ‘SellIn’ value. It simply gets more and more valuable until it hits 50 quality points.

- Items are listed at 12.00AM on the first day of listing. Therefore on the first day of listing, the item will have the initial quality value all day, until the moment the clock strikes midnight on day 2, at which point the quality value may change, depending on the type of item.

### Challenge Specification - Minor Errors

The specification is misleading at three points, as becomes evident when you reach some of the more detailed functional requirements later in the document.  

These errors may or may not be part of the test, i.e. the intention could be to ensure that the candidate is capable of being a proper ‘Amigo’ (referring to the ‘Three Amigos’ review process!)

### Miscellaneous Notes

- The directory structure supplied was not a standard Maven directory structure, however I have kept this structure for the time being. If the plan was to run the tests using Maven, then it would be advisable to restructure the application to use the standard Maven directory structure (https://maven.apache.org/guides/introduction/introduction-to-the-standard-directory-layout.html)

- The feature files are not in their own directory because IntelliJ will not support any new directory under the test folder, this could be because a non-standard Maven directory structure is in use.

- The tests chosen were intended to cover a full range of conditions including boundaries around significant changes, dealing with situations where an item's quality value hit zero or maxed out etc   



# Gilded Rose (Original Challenge Documentation)

### Guidance Notes

- Clone or fork this repo, and do this exercise in any of the available languages that you are most comfortable using.
- There is no time limit to this exercise, but try to time box it for yourself to avoid spending an inordinate amount of effort on it.
- A history of git commits will be very helpful when we go on to discuss the exercise.
- This exercise is about sparking a conversation, not about the "best" technical implementation.

### Additional notes for Junior developers

- You are not required to finish this exercise.
- Your approach to the problem is more interesting to us than a solution.
- This is mostly a refactoring exercise - you do not need to have any reverence for the current implementation!

### Requirements Specification

Hi and welcome to team Gilded Rose. 

As you know, we are a small inn with a prime location in a prominent city ran by a friendly innkeeper named Allison. We also buy and sell only the finest goods. Unfortunately, our goods are constantly degrading in quality as they approach their sell by date. We have a system in place that updates our inventory for us. It was developed by a no-nonsense type named Leeroy, who has moved on to new adventures. Your task is to add the new feature to our system so that we can begin selling a new category of items. First an introduction to our system:

- All items have a SellIn value which denotes the number of days we have to sell the item
- All items have a Quality value which denotes how valuable the item is
- At the end of each day our system lowers both values for every item

Pretty simple, right? Well this is where it gets interesting:

- Once the sell by date has passed, Quality degrades twice as fast
- The Quality of an item is never negative
- "Aged Brie" actually increases in Quality the older it gets
- The Quality of an item is never more than 50
- "Sulfuras", being a legendary item, never has to be sold or decreases in Quality
- "Backstage passes", like aged brie, increases in Quality as its SellIn value approaches;
- Quality increases by 2 when there are 10 days or less and by 3 when there are 5 days or less but
- Quality drops to 0 after the concert

We have recently signed a supplier of conjured items. This requires an update to our system:

```
"Conjured" items degrade in Quality twice as fast as normal items
```

Feel free to make any changes to the UpdateQuality method and add any new code as long as everything still works correctly. However __do not alter the Item class or Items property as those belong to the goblin in the corner who will insta-rage and one-shot you as he doesn't believe in shared code ownership__ (you can make the UpdateQuality method and Items property static if you like, we'll cover for you).

Just for clarification, an item can never have its Quality increase above 50, however "Sulfuras" is a legendary item and as such its Quality is 80 and it never alters.
