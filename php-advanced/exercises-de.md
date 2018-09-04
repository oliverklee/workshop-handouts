# Übungsaufgaben zu fortgeschrittenem PHP

## Über das Übungsprojekt

Das Übungsprojekt `words` wird ein kommandozeilen-basierter Werkzeugkasten
sein, mit dem ihr verschiedene Dinge mit Buchstaben, Wörtern und Wörterbüchern
tun könnt. Außerdem wird das Projekt ein paar Testfunktionen haben, mit denen
ihr einige PHP-Funktionalitäten ausprobieren könnt.

Das Projekt wird keine webbasierte Oberfläche haben, damit wir und bei dem
Workshop nicht mit Web-Frameworks oder CMSen zu beschäftigen brauchen.

## Infrastruktur-Checks

1. Loggt euch per SSH auf euren Container ein.
1. Prüft, welche PHP-Version installiert ist: `php --version`
1. Prüft, welche Composer-Version installiert ist: `composer --version`
1. Prüft, dass ihr mit eurer IDE Dateien im Container anlegen und bearbeiten
   könnt.

## Projektstruktur

1. Legt euch ein Verzeichnis `words` für das Übungsprojekt an.
1. Falls ihr das Projekt mit Git versionieren möchtet (was ich sehr empfehle),
   initialisiert das lokale Git-Repository.
1. Legt die empfohlene Verzeichnisstruktur an. Falls ihr mit arbeitet, legt
   auch die `.gitkeep`-Dateien in den leeren Verzeichnissen an.
1. Stellt bei euch in der IDE ein, dass ihr Unix-Zeilenenden benutzt und keine
   BOM einfügt.
1. Schaut auf Packagist nach, welche Paket der User `oliverklee`
   veröffentlicht hat.
1. Sucht euch einen aussagekräftigen Packagist-Usernamen aus und prüft, dass
   dieser Username noch nicht vergeben ist.
1. Falls ihr erwägt, irgendwann man Projekt auf Packagist zu veröffentlichen,
   registriert euch auf Packagist, damit euer Username dauerhaft euch gehört.
1. Lest euch die Doku zur `composer.json` durch.
1. Legt eine `composer.json` für euer Projekt mit dem Typ `project` an.
   Schaut euch die Dokumentation für die `composer.json` an und füllt alle
   Eigenschaften, für die ihr sinnvolle Daten angeben könnt. Tragt auch die
   erforderlichen PHP-Versionen ein.
   Haltet bei den Eigenschaften die Reihenfolge in der Doku ein.
1. Autoformatiert die `composer.json`.
1. Lest euch die Doku zum PSR-4-Autoloading durch.
1. Überlegt euch einen Composer-Vendor-Namespace für euch. Dieser muss nicht
   identisch mit eurem Packagist-Usernamen sein, auch wenn diese sich
   üblicherweise entsprechen.
1. Tragt für euren Composer-Vendor-Namespace und den Produktnamen `Words`
   PSR-4-Autoloading in eure `composer.json` ein.

## Symfony-Konsole

Die Symfony-Konsole wird unser Einstiegspunkt für all die Funktionalität sein,
die unser Projekt bekommt.

1. Lest euch die Doku zur Symfony-Konsole durch.
1. Legt eine Datei `bin/console` an und macht sie ausführbar.
1. Legt eine Klasse `Greet` im Unter-Namespace `Command` an.
1. Baut das `console`-Skript und ein Konsolen-Kommando, das mit `hello:greet`
   den Text "Hello world!" ausgibt. Sorgt für gute Doku zu dem Kommando.
1. Erweitert das Kommando um einen optionalen zweiten Parameter `name`. Falls
   dieser gesetzt ist, sieht die Ausgabe stattdessen so aus:

```bash
bin/console hello:greet Oliver
Hello, Oliver!
```

## Strikte Typisierung

1. Lest euch die Doku zu strikter Typisierung durch.
1. Lagert die beiden Begrüßungen (mit und ohne Namen) in separate Methoden aus.
1. Versorgt die neuen Methoden mit korrekten Typ-Deklarationen (und die alten
   auch, falls da noch etwas fehlen sollte). Falls ihr PHP >= 7.1 einsetzt,
   benutzt Nullable-Type-Declarations und Void-Funktionen, wo es passt.
1. Lest euch die Doku zum Strict-Mode durch und stellt alle PHP-Dateien auf
   Strict-Mode um. Testet, dass alles noch funktioniert.
1. Schreibt ein neues Konsolen-Kommando `php:comparisons`, das die folgenden
   Werte mit dem nicht-strikten Vergleichsoperator `==` vergleicht und in einer
   Tabelle die Ergebnisse "yes" bzw. "no" ausgibt. Benutzt `var_export`, um
   die Werte mit erkennbaren Typen zu erhalten.
   - 0
   - 0.0
   - "0.0"
   - 1
   - 1.0
   - "0"
   - "1"
   - "true"
   - false
   - true
   - null
   - 42
   - "42"
   - "42 cups of coffee"

## OOP

### Dinge bauen

1. Schreibt ein Kommando `word:reverse`, das ein Argument erwartet und den
   übergebenen String umdreht.
   Falls das übergebene Wort mit einem Großbuchstaben anfängt, soll das
   erzeugte Wort auch mit einem Großbuchstaben anfangen. (Mehrere Wörter sowie
   Binnenmajuskel braucht das Kommando nicht zu berücksichtigen.)
1. Sorgt dafür, dass die Funktion auch bei Umlauten am Wortanfang die Groß- und
   Kleinschreibung richtig umsetzt.
1. Schreibt ein Kommando `word:sort`, das das übergebene Wort alphabetisch
   sortiert. Aus "hello" wird dann beispielsweise "ehllo". Groß- und
   Kleinschreibung sollen wir bei `word:reverse` funktionieren.
1. Schreibt ein Kommando `anagram:check`, das zwei Wörter erwartet und prüft,
   ob die beiden Wörter Anagramme voneinander sind (unabhängig von der Groß-
   und Kleinschreibung). "Leo" ist beispielsweise ein Anagramm von "Ole".
1. Findet eine Liste aller Wörter eine Sprache als Textdatei im Netz
   (de_DE, en_GB oder en_US oder auch eine andere Sprache) und legt sie im
   Projekt ab.
1. Schreibt ein Kommando `resources:read-words`, das alle Wörter aus der
   Datei ausliest und auf der Konsole ausgibt.
1. Schreibt ein Kommando `palindrome:find-all`, das alle Palindrome in der
   Wortliste findet und auf der Konsole ausgibt.
1. Schreibt ein Kommando `anagram:find-all`, das alle Anagramme in der
   Wortliste findet und ausgibt.

### Die Dinge strukturieren

1. Schaut euch die Doku zu den verschiedenen OOP-Themen an.
1. Überlegt euch auf Papier ein Konzept, wie ihr euren Code mit diesen
   Konzepten überarbeiten könnt, damit ihr weniger Dopplung habt und der Code
   mehr der Absicht hinter dem Code entspricht.
1. Besprecht dieses Konzept mit mir.
1. Setzt dieses Konzept um. Geht dabei kleine Schritte, sodass ihr sehr
   schnell immer wieder korrekt funktionierenden Code habt.

Unter anderen solltet ihr dabei diese Klasse bzw. Methoden haben
(alle innerhalb eures Project-Namespaces):

- `Domain\Model\Word`
- `Word::isAnagramOf(Word $word)`
- `Domain\Model\WordSet implements \Iterator`
- `File\WordListReader`
- `WordProcessing\AnagramFinder::findAnagrams(Word[] $words): WordSet[]`
- `WordProcessing\AnagramFinder::findPalindromes(Word[] $words): Word[]`

## Eingebaute Klassen

1. Lest euch die Doku zum `ZipArchive` durch.
1. Packt das Wörterbuch in eine ZIP-Datei.
1. Stellt die Funktionen, die das Wörterbuch lesen, auf das ZIP um.
   Arbeitet zuerst mit einer Variante, die das ZIP in ein Verzeichnis entpackt,
   und stellt dann darauf um, dass die Datei mit den Wörtern direkt aus dem
   ZIP gelesen wird.
1. Überlegt euch eine XML-Struktur, in der man Anagramme aus einer Wortliste
   gut darstellen kann. Besprecht diese Struktur mit mir.
1. Fügt dem Kommando `anagram:find-all` ein optionales Argument hinzu, mit dem
   man angeben kann, in welche Datei das Ergebnis der Suche nach Anagrammen
   geschrieben werden soll. Dies soll dann eine XML-Datei mit der Struktur
   sein, die ihr vorher definiert habt.
1. Fügt zur XML-Struktur den aktuellen Zeitstempel als ISO 8601 hinzu.
   Arbeitet dabei mit der `DateTime`-Klasse.
1. Schaut, ob ihr wieder etwas refactoren solltet. Falls ja, besprecht die
   Änderungen mit mir und setzt sie um.

## Sauber programmieren

1. Lintet den PHP-Code in `src/` und `bin`.
1. Schreibt euch ein Composer-Script `ci:php:lint`, das in diesen beiden
   Ordnern den PHP-Code lintet.
1. Baut einen PHP-Syntaxfehler ein und testet, dass der Linter diesen findet.
1. Überfliegt die Doku zu PHPDoc.
1. Fügt PHPDoc zu eurem Code hinzu, wo die Typ-Deklarationen und die
   Methodennamen nicht schon aussagekräftig genug sind.
1. Lest euch PSR-1 und PSR-2 durch.
1. Installiert in eurem Projekt per Composer (als Development-Abhängigkeit)
   PHP_CodeSniffer.
1. Lasst den Sniffer mit dem PSR-2-Standard auf den Ordnern `src/` und `bin`
   laufen.
1. Schreibt euch ein Composer-Script `ci:php:sniff`, das die beiden Ordner
   mit PHP_CodeSniffer snifft.
1. Behebt alle Warnungen und Fehler, die PHP_CodeSniffer gefunden hat.
1. Kopiert euch die PHP_CodeSniffer-Konfiguration von phpList, ergänzt das
   Composer-Skript entsprechend und schaut, was es jetzt an neuen Warnungen
   gibt.
1. Installiert euch PHP-CS-Fixer (wieder als Development-Abhängigkeit) und
   kopiert euch die PHP-CS-Fixer-Konfiguration von oelib. Schreibt euch ein
   Composer-Skript `php:cs:fix`, das die beiden Ordner fixt.
1. Fixt mit PHP-CS-Fixer möglichst viele Warnungen. Behebt die anderen
   Warnungen manuell.
1. Installiert euch PHPStan, schreibt dafür ein Composer-Skript `ci:php:stan`,
   und arbeitet euch nach und nach durch die Levels, bis ihr alle Warnungen
   behoben habt.
1. Installiert euch Psalm, schreibt dafür ein Composer-Skript `ci:php:psalm`,
   und arbeitet euch nach und nach durch die Levels, bis ihr alle Warnungen
   behoben habt.
1. Installiert euch PHPMD, kopiert euch die Konfiguration von phpList,
   schreibt dafür ein Composer-Skript `ci:php:md`, und behebt alle Warnungen.
