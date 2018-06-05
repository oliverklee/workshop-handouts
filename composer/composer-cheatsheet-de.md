# Composer-Cheatsheet

## Installation
Aktuelle PHP-Version: `php --version`

Composer-Download: https://getcomposer.org/

Composer-Version: `composer --version`

Composer-Hilfe: `composer helper (<command>)`

Liste der Composer-Befehle: `composer list`

Composer-Update: `composer selfupdate`

## Grundlagen
Neues Projekt anlegen: `composer init`

Abhängigkeiten installieren: `composer install`

Standard-Ort der installierten Abhängigkeiten: `vendor/`

Standard-Ort des Composer-Autoloaders: `vendor/autoload.php`

## Abhängigkeiten
[Dokumentation von Requirement-Constraints](https://getcomposer.org/doc/articles/versions.md)

Abhängigkeit hinzufügen: `composer require <Paketname>`

Dev-Abhängigkeit hinzufügen: `composer require --dev <Paketname>`

Abhängigkeiten aktualisieren: `composer update`
