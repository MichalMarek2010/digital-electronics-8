# Bežící text na 7-seg displeji

### Členové týmu

David Strouhal 230671
* https://github.com/20David2/digital-electronics-1

Martin Zárecký 230916
* https://github.com/Martinececicek

Michal Marek 195387
* https://github.com/MichalMarek2010/digital-electronics-1


### Obsah projektu

* [Cíle projektu](#objectives)
* [Popis hardwaru](#hardware)
* [Popis a simulace modulů VHDL](#modules)
* [Popis modulu TOP a jeho simulace](#top)
* [Video](#video)
* [Reference](#references)

<a name="objectives"></a>

## Cíle projektu

* Text na 7-seg displeji bude obsahovat všechny čísla, písmnena z abecedy a mezeru


-Tlacitka:
* BTNC (prostredni): reset
* 
* BTNU,BTND (nahoru,dolu): rychlost behu +-
* BTNL,BTNR (vpravo,vlevo): pokud je rychlost snizena na minimum -> posun o jeden znak
* RGB LED(16,17) - signalizace rychlosti
* SWITCH 0-15  +  LED 0-15  -> prednastavene texty, podle zvoleneho switche bude behat text (maximalne 16 prednastavenych textu)

<a name="hardware"></a>

## Popis hardwaru

* Nexys A7

Pro zobrazení vytvořených programů využíváme desku Nexys A7 s FPGA Artix-7. Jedná se platformu pro vytvaření a simulovaní digitalních obvodů. Obsahuje velkou externí paměť, velkokapacitní FPGA a může komunikovat přes usb porty.  

<a name="modules"></a>

## Popis a simulace modulů VHDL

Write your text here.

<a name="top"></a>

## Popis modulu TOP a jeho simulace

Write your text here.

<a name="video"></a>

## Video

Write your text here

<a name="references"></a>

## Reference

1. https://codegolf.stackexchange.com/questions/173837/longest-seven-segment-word
