---
title: "WSG-o-matic: Small Sustainability Wins"
date: 2025-02-24T12:00:00-08:00
draft: false
show_reading_time: false
tags:
  - HTML
  - CSS
  - JS
  - Web Sustainability Guidelines
  - WSG 1.0
  - WSG
  - Morgan Murrah
  - Sustainability
  - SystemFontStack
  - ServiceWorker
  - Lightweight
blurb: A small website project that focuses on value and a lightweight experience by default
featured_image: /screenshot-wsg-o-matic.png  
read_more_copy: Learn more about the WSG's
---

The website concept was simple and hopefully fun: Take the wonderful draft [Web Sustainability Guidelines](https://github.com/w3c/sustainableweb-wsg) and provide a bite sized sample of the guidelines to hopefully spark further interest in the reader. Throw in a little randomness and whimsy with it as well to make it stick with people!

Ideally someoneone would get a single sample of the WSG's and then investigate further back at the real source of truth, the 94 WSG's themselves under construction by the W3C, which are linked to several times in the website. Why? Well why not, it seemed good for sustainability. I took this concept and ran with it and so far I have the following:

## [https://wsg-o-matic.netlify.app/](https://wsg-o-matic.netlify.app/)
## [GitHub Repo](https://github.com/airbr/wsg)

Built with HTML5 Boilerplate and JSON API from the WSG Draft, WSG[-o-matic](https://en.wiktionary.org/wiki/-o-matic) aims to be a simple and engaging educational tool making the best of the guidelines themselves to guide its development.

If you visit [https://wsg-o-matic.netlify.app/](https://wsg-o-matic.netlify.app/), Try clicking either the:
* big button OR
* the package (on initial load only, a little surprise also included) OR
* a topic button in the dropdown

![Screenshot of website](/screenshot-wsg-o-matic.png)

Any of these three inputs will produce a populated guideline onto the page for browsing. You can even try holding enter focused on the big yellow button to see a bunch of guidelines whizz past pretty fast. Selecting the button dynamically loads from JSON a guideline at random, with some relatively simple JavaScript.

# Features:

* Built with the Web Sustainability Guidelines in mind. Many guidelines were inspected as I built this!
* Semantic HTML
* Less than 10kb CSS
* Less than 10kb JS
* 533 KB of JSON Data- The entire Web Sustainability Guidelines!
* No Images (Emoji is used for the Largest Contentful Paint)
* Maintains some usability and integrity without JS
* System Font Stack - Downloads no Web fonts
* Responsive for Tablet and Mobile
* Service Worker providing basic Offline Mode

### The website does amazing when you test it:
* Local Testing with 3G and 20x CPU Slowdown in Chrome. It slows down some but still works reasonably well!
* Nu HTML Validator - [No errors or warnings](https://validator.w3.org/nu/?doc=https%3A%2F%2Fwsg-o-matic.netlify.app%2F)
* CSS Checker - [No errors, few notices](https://jigsaw.w3.org/css-validator/validator?uri=https%3A%2F%2Fwsg-o-matic.netlify.app%2F&profile=css3svg&usermedium=all&warning=1&vextwarning=&lang=en#css)
* Lighthouse - [100x4 Mobile and Desktop](https://pagespeed.web.dev/analysis/https-wsg-o-matic-netlify-app/0kbjeguc5a?form_factor=mobile)
* WebPageTest - [Very well, even on a lower power mobil device on 3G Slow](https://www.webpagetest.org/result/250225_AiDc7D_20A/)
* Yellow Lab Tools: 100/100 on Desktop and Mobile

# Conclusion

I am going to keep working on this project, but I like the first draft version of the WSG-o-matic!


### Do you have any thoughts for making this better? let me know! (Email in About page)