# Übungen zu Composer

# Installation
1. Prüft, dass PHP lokal installiert ist und im Pfad liegt, und welche Version
   installiert ist.
1. Installiert euch [Composer](https://getcomposer.org/) so, dass er als
   `composer` (nicht: `composer.phar`) bei euch im Pfad liegt.
1. Lasst euch anzeigen, welche Version von Composer ihr installiert habt.
1. Lasst euch die generelle Composer-Hilfe anzeigen.
1. Lasst euch die Liste aller Composer-Befehle anzeigen.
1. Lasst euch die Composer-Hilfe zu `selfupdate` anzeigen.
1. Lasst ein Composer-Update laufen.

# Grundlagen
1. Erzeugt interaktiv ein neues Composer-Stand-Alone-Projekt. Überlegt euch
   dafür einen Vendor-Namen (entweder für eure Firma oder euch als Person).
   Nehmt `workshop` als Produktnamen. An dieser Steller braucht das Projekt
   noch keine Abhängkeiten zu haben.
1. Schaut euch die generierte `composer.json` an.
1. Geht in das erzeugte Verzeichnis und installiert die Abhängigkeiten.
1. Schaut euch die generierte `composer.lock` an und schaut euch im Verzeichnis
   `vendor/` um.
1. Legt eine Datei `bin/start.php` an, die "Hello world!" ausgibt.
1. Bindet in der Datei den Composer-Autoload ein und führt die Datei aus.
