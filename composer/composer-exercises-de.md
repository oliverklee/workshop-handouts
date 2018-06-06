# Übungen zu Composer

[zum Cheatsheet](composer-cheatsheet-de.md)

## Installation
1. Prüft, dass PHP lokal installiert ist und im Pfad liegt, und welche Version
   installiert ist.
1. Geht auf https://getcomposer.org/ und schaut, was beim Neuladen der Seite
   passiert.
1. Installiert euch Composer so, dass er als `composer`
   (nicht: `composer.phar`) bei euch im Pfad liegt.
1. Lasst euch anzeigen, welche Version von Composer ihr installiert habt.
1. Lasst euch die generelle Composer-Hilfe anzeigen.
1. Lasst euch die Liste aller Composer-Befehle anzeigen.
1. Lasst euch die Composer-Hilfe zu `selfupdate` anzeigen.
1. Lasst ein Composer-Update laufen.

## Grundlagen
1. Erzeugt interaktiv ein neues Composer-Stand-Alone-Projekt.
   - Überlegt euch dafür einen Vendor-Namen (entweder für eure Firma oder euch
     als Person).
   - Nehmt `workshop` als Produktnamen.
   - Nehmt `GPL-3.0+` als Lizenz.
   - An dieser Steller braucht das Projekt noch keine Abhängkeiten zu haben.
1. Schaut euch die generierte `composer.json` an.
1. Schaut euch im Verzeichnis `vendor/` um.
1. Legt eine Datei `bin/start.php` an, die "Hello world!" ausgibt.

## Packagist
1. Geht auf https://packagist.org/ und schaut, welche Pakete besonders beliebt
   sind.
1. Schaut euch die Abhängigkeiten und die Beschreibung von `pelago/emogrifier`
   2.0.0 an und versteht diese.
1. Findet heraus, welche Pakete mit mehr als 10.000 Downloads von
   `pelago/emogrifier` abhängen.
1. Schaut euch die Abhängigkeiten und die Beschreibung von `symfony/symfony`
   4.1.0 an und versteht diese.
1. Findet heraus, welche Pakete es noch vom Vendor von `symfony/symfony` gibt.
1. Findet heraus, wer der der Maintainer von `phpunit/phpunit` ist und von
   welchen Paketen er der Maintainer ist.
1. Findet heraus, welche Pakete der User "oliverklee" maintaint.

## Abhängigkeiten
1. Fügt das Paket `phpunit/php-timer` als Abhängigkeit hinzu.
1. Schaut euch die generierte `composer.lock` an und schaut euch im Verzeichnis
   `vendor/` um.
1. Lasst euch anzeigen, welche Pakete jetzt alle installiert sind.
1. Bindet den Composer-Autoloader in `start.php` ein und führt die Datei erneut
   aus.
1. Benutzt die Timer-Klasse in der `start.php` ein und lasst die Zeit
   von `sleep(1);` stoppen und ausgeben.
1. Findet die Dev-Abhängigkeiten von `phpunit/php-timer` heraus (entweder
   lokal in `vendor` oder auf Packagist) und schaut nach, ob diese installiert
   sind.
1. Installiert `squizlabs/php_codesniffer` als Dev-Abhängigkeit, lest euch die
   Anleitung durch und prüft die PHP-Datei in `bin/` darauf, dass sie dem
   PSR-2-Coding-Standard entspricht (und behebt etwaige Probleme).
1. Lest euch die
   [Dokumentation von Requirement-Constraints](https://getcomposer.org/doc/articles/versions.md)
   durch.
1. Tragt ein, dass euer Projekt mindestens PHP 7.0 und maximal PHP 7.2.x hat.
   Lass ein `composer update` laufen, um zu schauen, ob das Requirement
   funktioniert.
1. Ändert die Dev-Abhängigkeit `squizlabs/php_codesniffer` so, dass alle
   non-breaking Updates ab Version 3.0.0 erlaubt sind.
1. Aktualisiert die Abhängigkeiten und schaut, welche Version von
   `squizlabs/php_codesniffer` installiert ist.
1. Aktualisiert mit `composer update` die Abhängigkeiten so, dass die
   ältestmöglichen Versionen installiert werden und schaut, welche Version von
   `squizlabs/php_codesniffer` installiert ist. Testet außerdem, dass der
   Codesniffer weiterhin funktioniert.
1. Ändert die Dev-Abhängigkeit von `squizlabs/php_codesniffer` so, dass nur
   Bugfix-Updates zu Version 3.0.0 erlaubt sind.
1. Aktualisiert die Abhängigkeiten und schaut, welche Version von
   `squizlabs/php_codesniffer` installiert ist.
1. Schaut euch die Abhängigkeiten von `phplist/core`,
   `phplist/base-distribution`, `phplist/rest-api` und `phplist/web-frontend`
   untereinander an und versucht, diese Struktur zu verstehen.

## Autoloading und Verzeichnisstruktur
1. Schaut euch die empfohlene
   [PHP-Projekt-Verzeichnisstruktur](https://github.com/php-pds/skeleton) an.
1. Überlegt euch einen Vendor- und Produkt-PHP-Namespace für euer
   Übungsprojekt.
1. Legt im Unter-Namespace `Service` eine Klasse `Greeter` an, die lediglich eine
   statische Methode `greet` hat, und verschiebt das Hello-World dahin. Benutzt
   diese Methode dann in der `start.php` und alles.
1. Verschafft euch einen Überblick, welche [PSR-Standards](https://www.php-fig.org/psr/)
   es gibt und was die einzelnen Standards grob abdecken.

## Weitere Befehle
1. Erzeugt ein neues Projekt aus `phplist/base-distribution`.
1. Erzeugt ein neues Projekt aus `helhum/typo3-distribution` und erzeugt dabei
   auch eine Seitenstruktur. (Ihr benötigt dafür eine MySQL-Datenbank.)
   Startet den PHP-Server und loggt euch ins TYPO3-Backend ein.
1. Aktualisiert die Pakete rekursiv mit allen Abhängigkeiten.
1. Findet heraus, warum das Paket `doctrine/inflector` installiert ist (mit
   der kompletten Abhängigkeitskette).
1. Überprüft, dass die `composer.json` valide ist.
