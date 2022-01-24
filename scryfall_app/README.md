# Scryfall app

## API endpoints used
*  https://api.scryfall.com/cards/named?fuzzy={card_name}
*  https://api.scryfall.com/cards/search?q=name%3A{incomplete_card_name}

## Pages
* **Search Page** (main_page.dart)

    * **Searchbar:** when submit the app tries first the fuzzy endpoint, if it don't return a card, the app tries search endpoint. 
    * **Page routes for fuzzy:**

        * CardPage (card_page.dart)
        * DoubleFacePage (double_face_page.dart)

    * **Page route for search:** 

        * CardListPage (card_list_page.dart) 
        
