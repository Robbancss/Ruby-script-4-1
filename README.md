# Ruby-script-4-1
Script languages 4/1. assignment

A feladat az első résznél leírt program kibővítése úgy, hogy az input adatoknál már feldolgozott számításokra is lehet hívatkozni a nevükön keresztül:

f1, max, inputok: 10 2 4
f2, sum, inputok: 2 f1 5
f3, prod, inputok: 6 f2
f4, max, inputok: f2 f3 6 123 
A fent megadott adatokból itt is egy eredmeny.txt elnevezésű fájlt kell elkészíteni, ami tartalmazza a kiszámolt értékeket az első résszel megegyező alakban:

f1 = 10
f2 = 17
f3 = 102
f4 = 123
A fenti minta fájlok letölthető verziói.

További követelmények (itt is). - A bemeneti fájl a program parancssori paramétere legyen. - A kimeneti fájl neve mindig legyen "eredmeny.txt". - Hiányzó argumentum esetén a program "Adj meg egy file-t!" hibaüzenetet adjon (de mást ne csináljon). - Míg nem létező fájl esetén "Nincs ilyen file!" hibaüzenetet adjon (de mást ne csináljon).

A megoldást tartalmazó ruby fájl forráskódját kell feltölteni (UTF-8 kódolásnak megfelelően).