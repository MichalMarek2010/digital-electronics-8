Runing text 7-seg display

-Tlacitka:
* BTNC (prostredni): reset
* BTNU,BTND (nahoru,dolu): rychlost behu +-
* BTNL,BTNR (vpravo,vlevo): pokud je rychlost snizena na minimum -> posun o jeden znak

* RGB LED(16,17) - signalizace rychlosti

* SWITCH 0-15  +  LED 0-15  -> prednastavene texty, podle zvoleneho switche bude behat text (maximalne 16 prednastavenych textu)

![7-seg-Alphabet](images/7-seg-Alphabet.jpg)

Ukradeno z https://codegolf.stackexchange.com/questions/173837/longest-seven-segment-word

** Components:
  * Clock1 -- překreslování displeje
  * Clock2 -- posun displeje
  * alphabet_7seg -- 7 digit number to display
  * memoryForMesages -- uchování až 16 zpráv v paměti pro výběr
  * codeText7Seg -- převod textu to binary number
  * move              -- posun textu za každou časovou jednotku a jeden znak
  * select         -- výběr 8 znaků z memory
  * reset          -- rychlost 0, posun na začátek textu
  
  top
  
  
