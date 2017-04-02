---
title: "README"
author: "Jim Porzak"
date: "April 1, 2017"
output: html_document
---

# rfmr

## Recency, Frequency, and Monetary Value (aka RFM) in R.

This is a work in progress!

The general goal is to modernize and package the first half of my classic useR! 2008 tutorial  [Using R for Customer Segmentation](https://ds4ci.files.wordpress.com/2013/09/user08_jimp_custseg_revnov08.pdf) (slides 1-40)

Specifically, the detailed goals for **rfmr** are to have:

* Sample data sets. The original one plus a sanitized order file from a movie theater
* Functions to build RFM metrics from a customer order file
* Functions to visualize these RFM metrics
* Functions to segment customers based on their RFM metrics
* Functions to visualize these customer segments
* Functions to track customers migrating between segments over time and fire off alarms to trigger marketing actions
* Augment basic RFM with additional engagement metrics such as breadth
* Vignettes covering 
  * Basic RFM methods
  * Using a remote SQL database for the customer data (as opposed to local in-memory tables)
  * Integrating with other marketing systems
  
"Modernize" above means moving to the "tidyverse"  

## Roadmap
_Subject to user feedback!_

* Initial release will have the first four bullets above implemented against local data and the first vignette.
* Second release will add customer segment tracking.
* Third release will add remote SQL database capability.
* Finally we'll add the integration piece.



