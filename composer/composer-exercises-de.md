# Übungen zu Composer

## Installation
1. Prüft, dass PHP lokal installiert ist und im Pfad liegt, und welche Version
   installiert ist.
1. Geht auf https://getcomposer.org/und schaut, was beim Neuladen der Seite
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
1. Geht in das erzeugte Verzeichnis und installiert die Abhängigkeiten.
1. Schaut euch die generierte `composer.lock` an und schaut euch im Verzeichnis
   `vendor/` um.
1. Legt eine Datei `bin/start.php` an, die "Hello world!" ausgibt.
1. Bindet in der Datei den Composer-Autoloader ein und führt die Datei aus.

## Packagist
1. Geht auf https://packagist.org/ und schaut, welche Pakete besonders beliebt
   sind.
1. Schaut euch die Abhängigkeiten und die Beschreibung von `pelago/emogrifier`
   2.0.0 an und versteht diese.
1. Schaut euch die Abhängigkeiten und die Beschreibung von `symfony/symfony`
   4.1.0 an und versteht diese.
1. Findet heraus, welche Pakete es noch vom Vendor von `symfony/symfony` gibt.
1. Findet heraus, wer der der Maintainer von `phpunit/phpunit` ist und von
   welchen Paketen er der Maintainer ist.

## Abhängigkeiten
1. Fügt das Paket `phpunit/php-timer` als Abhängigkeit hinzu.
1. Bindet die Timer-Klasse in die `start.php` ein und lasst die Zeit
   von `sleep(1);` stoppen und ausgeben.
1. Schaut euch die composer.json von `phpunit/php-timer` an, findet die
   Dev-Abhängigkeiten heraus und schaut nach, ob diese installiert sind.
1. Installiert `squizlabs/php_codesniffer` als Dev-Abhängigkeit, lest euch die
   Anleitung durch und prüft die PHP-Datei in `bin/` darauf, dass sie dem
   PSR-2-Coding-Standard entspricht (und behebt etwaige Probleme).
1. Lest euch die
   [Dokumentation von Requirement-Constraints](https://getcomposer.org/doc/articles/versions.md)
   durch.
1. Tragt ein, dass euer Projekt mindestens PHP 7.0 und maximal PHP 7.2.x hat.
1. Ändert die Dev-Abhängigkeit von `squizlabs/php_codesniffer` so, dass alle
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
