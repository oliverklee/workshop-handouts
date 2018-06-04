# Übungen zu Git

## Git-Installation
1. Installiert euch Git (siehe die [README](README.md)).

## Bash/Linux-Kommandozeile
1. Lasst euch anzeigen, in welchem Verzeichnis ihr gerade seid.
1. Lasst euch anzeigen, welche Verzeichnisse und Dateien es im aktuellen
   Verzeichnis gibt.
1. Wechselt in ein Unterverzeichnis.
1. Lasst euch wieder anzeigen, in welchem Verzeichnis ihr gerade seid.
1. Wechselt wieder ein Verzeichnis nach oben.
1. Wechselt mit `cd -` wieder in das Unterverzeichnis und wieder zurück.
1. Wechselt in das Verzeichnis, in dem ihr die Übungen für heute machen
   möchtet, und in dem ihr Dateien anlegen möchtet.
1. Legt eine leere Datei an (`touch`).
1. Schaut, dass die Datei jetzt tatsächlich existiert.
1. Schaut noch einmal - aber benutzt diesmal den Befehl in der History über die
   Cursortasten.
1. Benennt die Datei um.
1. Schaut, dass die Datei jetzt anders heißt (indem ihr mit CTRL + R in der
   History sucht).
1. Löscht die Datei.
1. Schaut, dass die Datei jetzt tatsächlich nicht mehr existiert.

## Git-Konfiguration
1. Richtet euch Tab-Autovervollständigung für Git ein. Ihr könnt es testen,
   indem ihr `git check` tippt und dann Tab drückt. Wenn aus `check` ein
   `checkout` wird, tut's die Autovervollständigung.
1. Konfiguriert Git anhand der Anleitung im [README](README.md). Prüft die
   Einstellungen danach mit `git config --list`. Ersetzt dabei in den ersten
   beiden Zeilen die Platzhalter mit eurem echten vollen Namen und eurer
   Mailadresse.

## Lokales Arbeiten

1. Lasst euch die Git-Hilfe anzeigen.
1. Lasst euch die Git-Hilfe für `git init` anzeigen. Falls die Hilfe auf der
   Kommandozeile angezeigt wird, kommt ihr mit der `q`-Taste wieder raus.
1. Legt das Verzeichnis an, mit dem ihr lokal üben möchtet, und wechselt in das
   Verzeichnis.
1. Legt ein leeres Git-Repository an.
1. Lasst euch den Status des Repositories anzeigen.
1. Legt eine kleine Textdatei `hans.txt` an.
1. Lasst euch den Status anzeigen.
1. Fügt die Datei zur Staging-Area hinzu.
1. Lasst euch den Status anzeigen.
1. Lasst euch die Unterschiede zum letzten Commit anzeigen.
1. Lasst euch die Unterschiede der Staging-Area zum letzten Commit anzeigen.
1. Committet die Änderungen. Gebt dabei die Commit-Message direkt mit an.
1. Lasst euch den Status anzeigen.
1. Lasst euch das Log anzeigen.
1. Lasst euch den letzten Commit anzeigen.
1. Lasst euch die Liste der im letzen Commit geänderten Dateien anzeigen.
1. Und jetzt noch einmal dasselbe mit der Commit-ID.
1. Bearbeitet die existierende Datei `hans.txt` und legt außerdem eine zweite
   Datei `wurst.txt` neu an.
1. Lasst euch die Unterschiede zum letzten Commit anzeigen. (Mit `q` kommt ihr
   da wieder raus.)
1. Fügt die Datei zur Staging-Area hinzu.
1. Lasst euch den Status anzeigen.
1. Lasst euch die Unterschiede zum letzten Commit anzeigen.
1. Lasst euch die Unterschiede der Staging-Area zum letzten Commit anzeigen.
1. Commited die Änderungen, benutzt aber diesmal für die Commit-Message einen
   separaten Editor, indem ihr sie nicht direkt schon auf der Kommandozeile
   angebt.
1. Lasst euch Status und Log anzeigen.
1. Bearbeitet `hans.txt`. Commit die Datei, ohne vorher ein explizites `add`
   zu machen.
1. Lasst euch das Log einzeilig anzeigen.

## Schadensbegrenzung
1. Bearbeitet die `hans.txt` und fügt diese zum letzten Commit hinzu.
1. Lasst euch das Log anzeigen.
1. Bearbeitet `hans.txt` und setzt die Datei dann wieder die Version aus dem letzten Commit zurück.
1. Setzt `hans.txt` auf die Version auf dem vorletzten Commit zurück (ohne zu committen).
1. Macht den kompletten letzten Commit rückgängig.
1. Ändert eine Datei. Bringt die Änderungen mit dem Stash in Sicherheit.
1. Holt die Änderungen wieder aus dem Stash.
1. Setzt die Datei wieder auf den Ursprungszustand zurück.

## Branches
1. Lasst euch anzeigen, welche Branches es gibt und auf welchem Branch ihr gerade seid.
1. Legt einen Branch `pinguin` an.
1. Wechselt auf den Branch.
1. Legt in dem Branch eine Datei `watscheln.txt` an und committet sie.
1. Schaut euch das Log an.
1. Wechselt wieder auf den `master`-Branch und schaut euch wieder das Log an.
1. Lasst euch den Unterschied zum `pinguin`-Branch anzeigen.
1. Wechselt mit `git checkout -` zum `pinguin` und wieder zurück zum `master`.
1. Merget den `pinguin`-Branch in den master und schaut euch das Log an.
1. Löscht den `pinguin`-Branch.
1. Legt mit einem Kommando einen Branch `nacktmull` an und wechselt direkt in den Branch.
1. Legt eine Datei `frittiertes-mars.txt` an und committet sie.
1. Wechselt wieder in den `master`.
1. Löscht den `nacktmull`-Branch, ohne ihn zu mergen.

## Rebase und Konflikte
1. Legt einen Branch `tee` an, wechselt in den Branch, legt dort eine Datei
   `earl grey.txt` (mit Leerzeichen!) mit ein paar Zeilen Text an und committet
   sie.
1. Wechselt in den `master`, legt dort eine Datei `brot.txt` an und committet
   sie.
1. Wechselt auf den `tee`-Branch und rebased von `master`.
1. Wechselt in den `master`, bearbeitet `brot.txt` und committet die
   Änderungen.
1. Wechselt nach `tee`, bearbeitet in `brot.txt` dieselben Zeilen und committet
   die Änderungen.
1. Rebased von `master` und lasst euch den Status der Konflikte anzeigen.
1. Brecht das Rebase ab.
1. Rebased noch einmal. Löst diesmal die Konflikte im Editor, added die Datei
   und führt den Rebase dann zu Ende.

## RSA-Keys und Accounts
1. Erzeugt euch ein RSA-Schlüsselpaar (falls noch nicht geschehen).
1. Loggt euch bei GitHub ein und ladet euren öffentlichen RSA-Schlüssel hoch.
1. Teilt Oliver euren GitHub-Usernamen mit und bittet ihn, euch zum
   Übungs-Repository hinzuzufügen.

## Verteiltes Arbeiten
1. Klont euch das Übungsrepository von GitHub. Achtet dabei darauf, dass ihr es
   per SSH klont und nicht per HTTPS.
1. Wechselt in das Verzeichnis des geklonten Repositories.
1. Lasst euch die Remotes anzeigen.
1. Und jetzt mit den URLs.
1. Lasst euch die lokalen Branches anzeigen.
1. Lasst euch die Remote-Branches anzeigen.
1. Check den `gurkensalat`-Remote-Branch aus und wechselt direkt auf den Branch.
1. Wartet, bis Oliver etwas geändert und gepusht hat.
1. Wechselt wieder auf den `master` und löscht den lokalen `gurkensalat`-Branch
   wieder.
1. Pullt euch die Änderungen.
1. Legt einen Branch an, legt dort einen Datei an und committet sie.
1. Wartet, bis Oliver etwas geändert und gepusht hat.
1. Wechselt zum `master`, pullt, wechselt zu eurem Branch rebased, wechselt
   wieder zu `master`, merget euren Branch, pusht, und löscht euren Branch.

## Noch mehr Schadensbegrenzung
1. Erzeugt einen Branch nicht von `master`, sondern vom vorletzten Commit von `master`. Löscht den Branch dann wieder.
1. Schaut euch das Reflog an.
1. Stellt den gelöschten Branch `nacktmull` wieder her.
1. Wechselt auf den Branch.
1. Vertauscht die letzten beiden Commits per interaktivem Rebase.
1. Löscht den vorletzten Commit aus dem Branch (per interaktivem Rebase).
1. Wechselt wieder auf den `master` und löscht den `nacktmull`-Branch.

## .gitignore
1. Bearbeitet die .gitignore so, dass Dateien ignoriert werden, die Endung
   `.html` haben, sowie die Datei "eigene-notizen.txt" (nur im Hauptverzeichnis
   des Projektes). Testet beides.

## Bonusaufgaben
1. Spielt [The Git Game](https://github.com/git-game/git-game).
1. Spielt [The Git Game 2](https://github.com/git-game/git-game-v2).
