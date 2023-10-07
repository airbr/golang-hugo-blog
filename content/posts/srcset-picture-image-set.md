---
title: "Responsive Images: Pōhutukawa tree example using image-set CSS"
date: 2023-10-01T8:00:00-08:00
draft: false
tags: 
    - Pōhutukawa
    - New Zealand
    - Aotearoa
    - Responsive Images
    - image-set CSS
    - CSS
    - pixel density
show_reading_time: true
read_more_copy: Gaze upon this beautiful tree (again)... and learn about image-set
featured_image: /opito-hero-lg.jpg
---

![](/opito-hero-lg.jpg)

*A beautiful tree*

Today I learned some about responsive images, and launched a practical demonstration to see the difference in action. If you visit this awesome website it will serve you a different image based on pixel density. This is done using the `image-set` property in CSS.

> [The image-set() CSS functional notation is a method of letting the browser pick the most appropriate CSS image from a given set, primarily for high pixel density screens.](https://developer.mozilla.org/en-US/docs/Web/CSS/image/image-set)

```css
    body {
        /* https://drafts.csswg.org/css-images-4/#image-set-notation */
        /* fallback */
        background-image: url("static/img/opito-hero-med.jpg")
        background-image: image-set(
        url("static/img/opito-hero-med.jpg") 1x,
        url("static/img/opito-hero-lg.jpg") 2x
        );
        background-size: 100%;
    }
```

### [See: image-set Pōhutukawa deployed with Netlify](https://morganwebdev.com)