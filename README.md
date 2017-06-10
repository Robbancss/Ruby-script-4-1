# Ruby-script-4-1
Script languages 4/1. assignment

A feladat egy olyan RUBY program elkészítése, ami összeadást, szorzást és maximumot tud számolni adott bemeneti értékekre. A program egy fájlból olvassa be a számításhoz szükséges adatokat. A bemeneti fájl alakja a következő:

f1, max, inputok: 10 2 4
f2, sum, inputok: 2 4 5
f3, prod, inputok: 6 5
Minden sorban egy számítás adatai vannak megadva, elöszőr a neve, ami mindig egy "f" betű és egy sorszám, majd az elvégzendő művelet, végül az input adatok, amikre ki kell számolnunk a művelet eredményét.

A fent megadott adatokból egy olyan fájlt (a neve mindig legyen eredmeny.txt) kell elkészíteni, ami tartalmazza a kiszámolt értékeket a következő alakban:

f1 = 10
f2 = 11
f3 = 30
Azaz minden sor egy kiszámolt értéket ír le, megadva a számításhoz adott nevet és egyenlőségjelet követően a kiszámolt értéket. Az ellenőrizhetőség miatt az egyenlőségjel mindkét oldalán pontosan egy SPACE kell álljon.

A fenti minta fájlok letölthető verziói.

További követelmények. - A bemeneti fájl a program parancssori paramétere legyen. - A kimeneti fájl neve mindig legyen "eredmeny.txt". - Hiányzó argumentum esetén a program "Adj meg egy file-t!" hibaüzenetet adjon (de mást ne csináljon). - Míg nem létező fájl esetén "Nincs ilyen file!" hibaüzenetet adjon (de mást ne csináljon).

A megoldást tartalmazó ruby fájl forráskódját kell feltölteni (UTF-8 kódolásnak megfelelően).