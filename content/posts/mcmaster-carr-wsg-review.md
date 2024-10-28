---
title: "McMaster-Carr Sustainability Example: the nuts and bolts of web design"
date: 2024-10-26T8:00:00-08:00
draft: false
tags: 
   - web
   - performance
   - design
   - sustainability
   - CSS
   - HTML
   - JS
   - Preloading
   - Prefetching
   - McMaster-Carr
   - Web Sustainability Guidelines
   - WSG
   - WSG 1.0
show_reading_time: false
read_more_copy: Read more about McMasters design virtues...
blurb: Taking a Web Sustainability Guidelines look at some of the praised features of McMaster.com
featured_image: /mcmaster-desktop.gif   
---

### Initial Draft version; Still researching website

Sustainability makes people happy and have joy in interacting with your products. User-Experience Design is one key feature of sustainability and the web is no exception. 

The Web Sustainability Guidelines (WSG) are not just about reducing the environmental impact of a website but also happy people. In the following example we look at a few outstanding use of techniques for a fast website experience that seems to wow people, and also contributes to sustainability. This is not a comprehensive attempt at an audit, just aiming to highlight a few qualities that stand out!

# The example:  McMaster-Carr

[McMaster](https://www.mcmaster.com/) is a dramatic show of force at several guidelines that I argue explains why this website resonates with people. At least, it sort of gained a lot of traction and discussion in various groups and I am aware it made some [impact in media, credit to Wes Bos](https://www.youtube.com/watch?v=-Ln-8QM8KhQ).

McMaster exemplifies some sustainable web design principles to such a strong degree that it has at least a medium impact to some degrees in considering the web Sustainability Guidelines. The real world experience of selling such hardware must have taught them many lessons, and these seem built into the design of the website:

## 1. [Lightweight by Default](https://w3c.github.io/sustyweb/#create-a-lightweight-experience-by-default) 

Open the website and there you are, you are looking at the product(s) available down to a list.

## 2. [Avoids Overabundance of Assets](https://w3c.github.io/sustyweb/#avoid-unnecessary-or-an-overabundance-of-assets)

Very minimal, consistent use of assets. There doesn't feel like anymore than what needs to be there.

The web browser may download or preload or prefetch more resources than technically necessary. However, visually and functionally, the website exhibits a very minimalist quality that has real benefits.

## 3. [Uses a Design System to prioritize interface consistency](https://w3c.github.io/sustyweb/#use-a-design-system-to-prioritize-interface-consistency)

The whole website has a consistent theme and style. There is a very spartan and clear visual hierarchy to the website.

--- 

# The web performance of McMaster-Carr

McMaster is pretty awesome at some guidelines but in terms of web performance it has got [some INP-related web performance issues](https://www.webpagetest.org/result/241027_BiDcRK_5T/) that seem to get in the way of it meeting the title of passing Core Web Vitals. Despite this, it is full of features to make the experience better for at least many users.

The [desktop experience, under these WebPageTest settings, was pretty good?](https://www.webpagetest.org/result/241027_AiDcRD_1YA/)

![Desktop Loading Screen](/mcmaster-desktop.gif).

1. Preloads fonts
2. Prefetch's 
3. Caches content
4. Uses [Service Worker](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API) Technology
5. Inlined CSS

# Conclusion

In this outstanding example of McMaster some qualities really stand out as good sustainable design on some guidelines. There may be room for critical writing at a later date about other guidelines, for now, I recognize some good standout qualities and techniques!

Also, for what it is worth, the website also passed a test with Are My Third Parties Green? for a quick sustainability related check.




