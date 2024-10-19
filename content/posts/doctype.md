---
title: "<!DOCTYPE html>: a preamble"
date: 2024-08-22T12:00:00-08:00
draft: false
show_reading_time: true
tags:
  - post
  - MDN
  - HTML
  - HTMX
  - XHTML
  - DocType
  - Web Standards
blurb: DocType is important... or is it?     
read_more_copy: Read More about DOCTYPE...
---


# What is truly required of a [fault tolerant](https://en.wikipedia.org/wiki/Fault_tolerance) system?

### Some say you must... but they may not make you... and that is the way forward.

MDN states:

> In [HTML](https://developer.mozilla.org/en-US/docs/Glossary/HTML), the **doctype** is the _required_ "`<!DOCTYPE html>`" preamble found at the top of all documents. Its sole purpose is to prevent a [browser](https://developer.mozilla.org/en-US/docs/Glossary/Browser) from switching into so-called ["quirks mode"](https://developer.mozilla.org/en-US/docs/Web/HTML/Quirks_Mode_and_Standards_Mode) when rendering a document; that is, the "`<!DOCTYPE html>`" doctype ensures that the browser makes a best-effort attempt at following the relevant specifications, rather than using a different rendering mode that is incompatible with some specifications.

In times past, there were separate versions of web pages for different browsers.  Quirks mode is not a practice endorsed or considered modern at all given the rise of web standards, as basically no one does this approach anymore. However, your website may work completely fine even without this supposedly required DocType, as far anyone may experience it. 
# A preamble for working on a commentary on HTML

As I begin on a journey to working on a markdown file for every single HTML Element, I aim to add some sort of commentary, but won't strive for perfection. I just want to write something new every few days. I feel like this is consistent with what I am going to be discussing.
## Forward compatibility: [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)

Browsers will push forward the best they can even when they encounter things they don't understand in HTML and CSS like incorrect syntax. HTML in the browser, the markup language that is the foundation of web pages, won't tell you if your tag is wrongly placed. The lesson here, it seems to some, is that **forgiveness by default is absolutely _required_ for the kind of large-scale, worldwide adoption that the web has enjoyed**.

## The strict, the fallen ancients: [XHTML](https://www.tbray.org/ongoing/When/200x/2004/01/16/DraconianHistory?ref=blog.codinghorror.com)

XHTML is an alternative to HTML but had strict error checking introduced. [This history of this decision is momentous in web lore](https://lists.w3.org/Archives/Public/w3c-sgml-wg/1997May/0079.html). I was about 8 years old when this occurred. You can still build pages with XHTML, but where is it today? It seems it is part of lore because of its error strictness.

## The curious case of [HTMX](https://htmx.org/)

HTMX is a library maintained by [Big Sky Software](https://github.com/bigskysoftware) with a tagline: 
>**We find hot new trends in the industry & then build the opposite of that**

I admire this energy and I am a fan: I am an owner of the hardback book [Hypermedia Systems](https://hypermedia.systems/book/contents/) and have been a sponsor of the project. As it turned out, [their website didn't have a Doctype for months while the project was getting more popular](https://github.com/bigskysoftware/htmx/commit/206912b71d355477377aade60d06ea013c8e5455) and advocating for insight in the industry about the excess of build steps and JavaScript in development. 

What this lesson means to me is a reminder to focus on providing value even if things aren't as neatly organized as you might wish. If Big Sky can fly the standard high of their ideas while not using this supposedly MDN-required tag, then maybe just any of us can build things that don't match every requirement. 

## Conclusion
  
The story of HTML is partly to forgive incompleteness and strongly encourage web standards. [The Web Almanac has data on doctypes of websites for more information](https://almanac.httparchive.org/en/2022/markup#doctypes)