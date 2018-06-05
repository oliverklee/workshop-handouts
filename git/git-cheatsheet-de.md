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

Zeigt Branches an: `git branch`

Löscht Branches: `git branch -d <branchname>`

Löscht Branches (force) `git branch -D <branchname>`

## Rebase und Konflikte

## .gitignore
Verzeichnis `.idea/` im Hauptverzeichnis ignorieren: `/.idea/`

Alle `*.backup`-Dateien in allen Verzeichnissen ignorieren: `*.backup`

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

Tags anzeigen: `git tag`

annotierten Tag erzeugen: `git tag -a <tagname> -m "<Commit message>"`

GPG-signierten Tag erzeugen: `git tag -s <tagname> -m "<Commit message>"`

alle Tags auf remote pushen: `git push --tags`

Tag lokal löschen: `git tag -d <tagname>`

Tag remote von origin löschen: `git push origin :<tagname>` 

## Open-Source-Arbeit mit Forks

Das Original eines Forks als `upstream`-Remote lokal hinzufügen:

```
git remote add upstream <Repository-URL>
```

Den lokalen Master mit Upstream synchronisieren und auf euren Fork pushen:

```bash
git checkout master
git fetch upstream
git rebase upstream/master
git push
```
