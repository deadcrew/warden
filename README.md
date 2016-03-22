# Development

## 3 screens
### (1) contact filter (list)

* automatically detect bank contacts
    * disproportional amount of incoming sms in comparison with outgoing sms
    * major amount of sms has numbers with fractional part
    * major amount of sms can be presented as template with components
        * spent
            * card id
            * datetime
            * seller id
            * amount
            * balance (-)
        * income
            * card id
            * datetime
            * amount
            * balance (+)
* bank contacts displayed on top of the list; contacts separated by four categories, from top to bottom of the list:
    * green: contacts that has all sms parsed via template
    * yellow: contacts, that has sms which are unparsed, but selected by user as bank contacts
    * white: all other contacts, which are currently unfiltered by used, ordered by last received sms date;
    * grey: blacklisted by user
* user can tap on the contact to do action with contact
    * green: nothing to do, display text, that contact is parsed
    * yellow: go to the screen (2), linked with that contact
    * white: swipe left/right to blacklist (make grey), tap to make yellow and go to the screen (2)
    * grey: tap to make yellow and go the the screen (2)

### (2) sms filter (list)

* display sms, which are currently does not filtered
    * swipe left/white to blacklist all sms, that has similar pattern (a) and display undo key
        * example of alike sms:
            * TBD
        * tap once to add all sms with similar pattern (a) to accounting, displaying dialog to rename seller name
            * by default, show seller name that is parsed from sms text
    * after all sms are filtered, display confirmation button, that will send user to screen (3)

### (3) accounting breakdown (list)

* display total balance at the top
* display total income
* display total spend with breakdown by sellers:
    * sublist with sellers, each item displaying total spend on that seller and percentage
        * tapping on seller will display sublist with monthly breakdown by that seller with percentage


