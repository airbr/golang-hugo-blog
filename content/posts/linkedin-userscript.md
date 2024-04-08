---
title: "Linkedin Userscript: ✂️ the distractions"
date: 2023-08-26T8:00:00-08:00
draft: true
tags: 
    - userscript
    - Linkedin
    - scissors
    - digital cuts
    - digital minimalism
    - social media
    - news feed
show_reading_time: true
read_more_copy: Read about streamlining your Linkedin experience with userscripts...
featured_image: /linkedin-feed.png
---

# Problem:

#### The Linkedin News Feed. 

If you know, you know. The news feed is not a great source of information at times. Honestly, it should seem to be optional. I don't think its added much to my life and sometimes the headlines are annoying. 

Quitting the website Linkedin is still a far off option as it is useful sometimes to keep in touch with people through the platform. I still want to check to see occasionally what is happening but there are features I could do without. 

# Solution: 

#### Edit the website once it is loaded and in your control with a userscript to remove the news feed everytime you load the page.

![An augmented experience of visiting Linkedin, with the news feed removed](/linkedin-feed.png)

My new reality of browsing LinkedIn^. Unless I turn the script off I dont see the news feed or even main feed.


Today we have just the tool for the job:

[Userscript](https://en.wikipedia.org/wiki/Userscript):

```
// ==UserScript==
// @name         Linkedin Scissors
// @namespace    https://linkedin.com
// @version      0.2
// @description  To cut extra stuff
// @author       morganwebdev
// @match        https://www.linkedin.com/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=google.com
// @grant        none
// @require      http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js
// @require      https://gist.github.com/raw/2625891/waitForKeyElements.js
// ==/UserScript==

function scissors (jNode) {
        jNode.remove ();
}
//waitForKeyElements ("div.share-box-feed-entry__closed-share-box", scissors);
//waitForKeyElements (".scaffold-finite-scroll__content", scissors);
waitForKeyElements ("#feed-news-module", scissors);
waitForKeyElements (".ad-banner-container", scissors);
```

That is my new browsing reality and can be yours with this handy script.

### Notes on the script

Note the require sections which imports jQuery and a script called waitForKeyElements that check for elements even if they are loaded by Ajax. They are critical for this to work. 

Once those are available in the require section you can call the waitForKeyElements function with the selector of the item you are waiting to appear and a function i.e scissors which gets passed a jNode of the selected element.

In this example, all there is to do with the element once it is found is to use `remove()` to remove it from the page ✂️.

The selectors for these elements were found using Chrome Dev Tools.