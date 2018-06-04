# Git-Cheatsheet

## Git-Installation

## Bash/Linux-Kommandozeile

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

## Rebase und Konflikte

## Verteiltes Arbeiten

## .gitignore

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

```bash
git remote add upstream <Repository-URL>
```

Den lokalen Master mit Upstream synchronisieren und auf euren Fork pushen:

```bash
git checkout master
git fetch upstream
git rebase upstream/master
git push
```
