---
title: End
parent: gui
grand_parent: toolbox
---

# End


## `public class End`

Zuständig für die Funktionalität vom Endfenster.

## `public End(Stage primaryStage, ConfigClient configClient, DataBaseClient dataBaseClient, TrialData trialData)`

Erstellt den Abschluss Bildschirm.

 * **Parameters:**
   * `primaryStage` — das Hauptfenster
   * `dataBaseClient` — Datenbankverbindung
   * `trialData` — die erhobenen Daten

## `protected void closeProgramm()`

schließt das Programm.

## `protected void newTest()`

Kehrt zum Startbildschirm zurück.

## `private void setPermissionAccess()`

(de)aktiviert Elemente, basierend auf den Permissions des Datenbank-Nutzers.
