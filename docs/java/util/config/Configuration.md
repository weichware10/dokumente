---
title: Configuration
parent: config
grand_parent: util
---

# Configuration


## `public class Configuration`

Speichert allgemeine Konfiguration sowie Tool-Konfigurationen.

## `protected Configuration()`

Konstruktor ohne Initialisierungen, sodass eine leere Konfiguration erstellt werden kann. auch wichtig für Michael JSON Jackson.

## `public Configuration(String configId, String imageUrl, String intro, String outro, boolean tutorial, CodeChartsConfiguration codeChartsConfiguration)`

Konstruktor für Configuration vom Typ CodeChartsConfiguration.

 * **Parameters:**
   * `configId` — configId der übergebenen Konfiguration
   * `imageUrl` — die URL des Bildes
   * `intro` — das Intro
   * `outro` — das Outro
   * `tutorial` — ob das Tutorial angezeigt werden soll
   * `codeChartsConfiguration` — Konfiguration von CodeCharts

## `public Configuration(String configId, String question, String imageUrl, String intro, String outro, boolean tutorial, ZoomMapsConfiguration zoomMapsConfiguration)`

Konstruktor für Configuration vom Typ ZoomMapsConfiguration.

 * **Parameters:**
   * `configId` — configId der übergebenen Konfiguration
   * `question` — Fragestellung zum Versuch
   * `zoomMapsConfiguration` — Konfiguration von ZoomMaps
