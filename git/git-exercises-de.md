# Übungen zu Git

Die nötigen Befehle findet ihre im [Git-Cheatsheet](git-cheatsheet-de.md).

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
1. Legt einen Branch an, legt dort einen Commmit an und cherry-pickt diesen auf
   einen anderen Branch. 

## RSA-Keys und Accounts
1. Erzeugt euch ein RSA-Schlüsselpaar **ohne Passphrase** (falls noch nicht
   geschehen). Hier die Anleitungen, wie man das unter Windows macht:
   - https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
   - https://dhue.de/git-fur-windows-installieren-und-ssh-keys-nutzen/
   - https://jdblischak.github.io/2014-09-18-chicago/novice/git/05-sshkeys.html
1. Loggt euch bei GitHub ein und ladet euren öffentlichen RSA-Schlüssel hoch.
   - https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
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
1. Wartet, bis Oliver etwas geändert und gepusht hat. Pullt euch die Änderungen.
1. Wechselt wieder auf den `master` und löscht den lokalen `gurkensalat`-Branch
   wieder.
1. Pullt euch die Änderungen.
1. Legt einen Branch an, legt dort einen Datei an und committet sie.
1. Wartet, bis Oliver etwas geändert und gepusht hat.
1. Wechselt zum `master`, pullt, wechselt zu eurem Branch, rebased, wechselt
   wieder zu `master`, merget euren Branch, pusht, und löscht euren Branch.

## Noch mehr Schadensbegrenzung
1. Erzeugt einen Branch nicht von `master`, sondern vom vorletzten Commit von `master`. Löscht den Branch dann wieder.
1. Schaut euch das Reflog an.
1. Stellt den gelöschten Branch `nacktmull` wieder her.
1. Wechselt auf den Branch.
1. Bearbeitet den obersten Commit per `amend`.
1. Vertauscht die letzten beiden Commits per interaktivem Rebase.
1. Löscht den vorletzten Commit aus dem Branch (per interaktivem Rebase).
1. Wechselt wieder auf den `master` und löscht den `nacktmull`-Branch.

## .gitignore
1. Bearbeitet die .gitignore so, dass Dateien ignoriert werden, die Endung
   `.html` haben, sowie die Datei `eigene-notizen.txt` (nur im Hauptverzeichnis
   des Projektes). Testet beides.
1. Legt ein Verzeichnis `logs` an. Sorgt dann dafür, dass dieses Verzeichnis
   im Git auftaucht, aber alle Dateien darin nicht.

## Verteiltes Arbeiten (Fortsetzung)
1. Erzeugt im Übungsprojekt einen lokalen Branch mit eurem eigenen Namen. Legt
   dort eine Datei an, die auch euren eigenen Namen trägt, und committet sie.
1. Pusht den Branch auf das Remote-Repository.
1. Erstellt einen Pull-Request, weist euch selbst als Assignee zu und die
   Person rechts neben euch als Reviewer.
1. Reviewt den Pull-Request der Person links neben euch, bittet um eine
   Änderung und markiert den Review als "Änderungen benötigt".
1. Macht auf eurem eigenen Branch die gewünschten Änderungen, amended und
   force-pusht.
1. Schaut euch den überarbeiteten Pull-Request an, reviewt erneut (diesmal
   positiv) und mergt. Löscht den Remote-Branch.
1. Pull und prunet euer lokales Repository und löscht lokal alle remote
   gelöschten Branches.

## Tags
1. Klont euch das [TDD-Seed-Projekt](https://github.com/oliverklee/tdd-seed),
   schaut euch die Tags an und auf GitHub die Releases. 
1. Erzeugt im Spielwiesen-Projekt ein Tag für euren Geburtstag, z.B. `v2.4.75`
   für den 2.4.1975.
1. Pusht alle Tags auf remote.
1. Schaut auf GitHub bei dem Projekt im Tab "Releases" nach.
1. Löscht das Tag wieder lokal.
1. Löscht das Tag wieder von origin.

## Open-Source-Arbeit mit Forks
1. Forkt das
   [Workshop-Handouts-Repository](https://github.com/oliverklee/workshop-handouts/).
1. Klont euch euren Fork auf lokal.
1. Legt euch lokal ein `upstream`-Remote an.
1. Sucht euch einen bisher leeren Abschnitt im [Git-Cheatsheet](git-cheatsheet-de.md)
   aus und erstellt dafür ein Ticket. Legt dafür einen Branch an und schreibt
   diesen Abschnitt in
   [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).
1. Erstellt daraus einen Pull-Request. Schreibt in die Beschreibung (nicht das
   Subject) der Commit-Message den Text `Fixes #<Ticketnummer>`, damit das
   Ticket beim Mergen des Pull-Requests automatisch geschlossen wird.
1. Wartet auf Review-Feedback. Überarbeitet und rebaset euren PR nach Bedarf. 
1. Wartet, bis Oliver euren PR gemergt hat.
1. Bringt dann euren Fork auf den aktuellen Stand und löscht den gemergten
   Branch.

## Bonusaufgaben
Falls ihr die Basics noch einmal wiederholen möchtet:
Spielt [Try Git](https://try.github.io/).

Falls ihr Lust auf Knobelaufgaben habt:
1. Spielt [The Git Game](https://github.com/git-game/git-game).
1. Spielt [The Git Game 2](https://github.com/git-game/git-game-v2).
