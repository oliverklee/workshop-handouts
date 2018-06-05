# Git-Cheatsheet

## Git-Installation

## Bash/Linux-Kommandozeile

Zeige Verzeichnisinhalt: `ls` 

In Verzeichnis \<dir\> wechseln: `cd <dir>`
 
Zum letzten Verzeichnis wechseln: `cd - `

Pfad des aktuellen Verzeichnis anzeigen: `pwd`

Verzeichnis erstellen: `mkdir <dir>`

Datei löschen: `rm <file>`

Datei verschieben oder umbenennen: `mv <file1> <file2>`

Datei anlegen oder Dateizeit auf aktuelle Zeit setzen: `touch <file>`

## Git-Konfiguration
Denkt daran, die Platzhalter durch euren echten vollen Namen und eure
Mailadresse zu ersetzen.

```bash
git config --global user.name "Jane Doe"
git config --global user.email "jane.doe@example.com"
git config --global color.ui auto
git config --global branch.autosetupmerge always
git config --global rerere.enabled true
git config --global pull.rebase true
git config --global push.default simple
git config --global core.precomposeunicode true
git config --global core.quotepath false
git config --global branch.autosetuprebase always
git config --global rebase.autostash true
git config --global core.autocrlf false
git config --global core.eol lf
```

## Lokales Arbeiten

## Schadensbegrenzung
### Teil 1

### Teil 2

## Branches

alle lokalen Branches anzeigen: `git branch`

einen Branch löschen, der keine ungemergten Änderungen hat:
`git branch -d <branchname>`

einen Branch löschen (auch mit ungemergten Änderungen):
`git branch -D <branchname>`

## Rebase und Konflikte

### Interaktiver Rebase

Rebase ausführen: `git rebase -i HEAD~<Anzahl der Schritte>`

```
Commands in File-Edit Mode:

p, pick = Commit verwenden
r, reword = Commit verwenden und Commit Log ändern
e, edit = Commit verwenden und den Commit selbst ändern Log und Inhalt
s, squash = Commit verwenden und mit dem vorhergehende Commit verschmelzen
f, fixup = wie "squash" und Log verwerfen
x, exec = shell commando ausführen - restliche zeile nach x, exec
d, drop = Commit löschen
```

Datei speichern und schließen

## .gitignore
Verzeichnis `.idea/` im Hauptverzeichnis ignorieren: `/.idea/`

alle `*.backup`-Dateien in allen Verzeichnissen ignorieren: `*.backup`

Alle Dateien in `/var/log/` ignorieren bis auf die Datei `.gitkeep` dort (damit
das Verzeichnis trotzdem im Git-Repository vorhanden ist):
```
/var/log/*
!/var/log/.gitkeep
```

Alles in `/private/` und `/private/typo3conf/` ignorieren, aber das
Verzeichnis `/private/typo3conf/l10n` nicht ignorieren (das von TYPO3
automatisch erzeugt wird, sodass wir da keine `.gitignore` benötigen):
```
/private/*
!/private/typo3conf
/private/typo3conf/*
!/private/typo3conf/l10n
```

## Verteiltes Arbeiten

## Arbeiten mit GitHub im selben Projekt

## Tags

alle lokalen Tags anzeigen: `git tag`

annotierten Tag erzeugen: `git tag -a <tagname> -m "<Commit message>"`

GPG-signierten Tag erzeugen: `git tag -s <tagname> -m "<Commit message>"`

alle Tags auf remote pushen: `git push --tags`

Tag lokal löschen: `git tag -d <tagname>`

Tag remote von origin löschen: `git push origin :<tagname>` 

## Open-Source-Arbeit mit Forks

### Mit dem Fork verbinden
in Github auf das Original-Repository wechseln und über den Button **Fork** einen eigenen Fork anlegen.

den Fork lokal clonen: `git clone <fork-repository> (<zielverzeichnis>)`

in das Zielverzeichnis wechseln: `cd <zielverzeichnis>`

mit dem Original-Repository verknüpfen: `git remote add upstream <Repository-URL>`

### Den lokalen Master mit Upstream synchronisieren und auf euren Fork pushen
zum Master wechseln: `git checkout master`

den Fork mit dem Original abgleichen: `git fetch upstream`

den lokalen Master abgleichen: `git rebase upstream/master`

### Einen Pull-Request bearbeiten
die Änderungen im bestehenden Commit veröffentlichen: `git commit --amend`

die Änderungen auf den Fork verschieben (force): `git push -f`

**Wichtig**
in der Beschreibung `Fixes #<Ticketnummer>` angeben, damit beim Merge das Ticket automatisch geschlossen werden kann. Üblicherweise steht die Zeile am Ende der Beschreibung.

### Nach dem geschlossenen Pull-Request das eigene Fork wieder updaten
online in der Maske den Remote-Branch löschen
1. zum geschlossenen Pull-Request wechseln
1. den Branch löschen

zum Master wechseln: `git checkout master`

prüfen, ob der Remote-Branch noch existiert: `git remote prune origin`

den lokalen Branch löschen `git branch -D <Branch Name>`

den lokalen Master mit Upstream synchronisieren und auf euren Fork pushen
