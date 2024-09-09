---
title: "Discernible Text: Improving accessibility"
date: 2024-08-22T12:00:00-08:00
draft: false
show_reading_time: false
tags: 
    - Aria
    - Discernible Text
    - Links
    - Anchor Tags
blurb: Lets improve accessibility with this one introductory best practice!    
featured_image: /discernible-text-link.png
read_more_copy: Read More...

---
The Anchor tag is a powerhouse of the web. It is basically what has made hyperlinking with HTML work. I could go on to say that countless fortunes and paths of history start with an anchor tag link going somewhere new.

It is important that we use anchor tags in a way that is optimal with assistive technology. One of these ways is to ensure that [**Links have discernible text**](https://dequeuniversity.com/rules/axe/4.1/link-name). 

What do we mean?

Well often, but not always, an anchor tag will have text within it.

`<a href="https://example.com">This is discernible text</a>`.

Assistive tech software will be able to read to interpret the text contained within that element. However, sometimes there is no text inside the anchor tag, such as an image:

`<a href="https://example.com"><img src="example.png"></a>`.

Other examples could include a button with an SVG Icon within it but no text. These kinds of anchor tag can be improved for accessibility by adding an [Aria Label](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-label):

`<a aria-label="Go to Example dot com" href="https://example.com"><img src="example.png"></a>`.

An Aria Label in this instance allows a screenreader to read what the link does with more accessibility.