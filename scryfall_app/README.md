# Scryfall app

## API endpoints used
*  https://api.scryfall.com/cards/named?fuzzy={card_name}
*  https://api.scryfall.com/cards/search?q=name%3A{incomplete_card_name}

## Pages
* **Search Page**

    * **Searchbar:** when submit the app tries first the fuzzy endpoint, if it don't return a card, the app tries search endpoint. 
* **Card Pages:** return card image, type of card, artist the ilustration and a legalities list. There are two types of card and its pages:
    
    * **CardPage:** when it is a single face card.
    * **DoubleFacePage:** when it is a double face card.

* **Cards list:** page for result of search endpoint. It returns a list with card images and if clicked return the card page.