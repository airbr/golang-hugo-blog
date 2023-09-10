---
title: "Responsive Images: Pōhutukawa tree example"
date: 2023-09-09T8:00:00-08:00
draft: false
tags: 
    - Pōhutukawa
    - New Zealand
    - Aotearoa
    - Responsive Images
    - srcset attribute
    - picture element
    - web performance
    - performance
show_reading_time: true
read_more_copy: Gaze upon this beautiful tree...
featured_image: /opito-hero-lg.jpg
---

![](/opito-hero-lg.jpg)

*A beautiful tree*

Today I learned some about responsive images, and launched a practical demonstration to see the difference in action. If you visit this awesome website on a mobile phone, it will serve you a smaller and a different cropped resource than if you view it on desktop. This is done using the srcset attribute on an img tag as well as the `picture` element for greater control.

### [See: Responsive Pōhutukawa deployed with Netlify](https://pohutukawa.netlify.app/)

```html
  <picture id="pohutukawa">
    <source srcset="img/opito-hero-sm.jpg 600w, img/opito-hero-med.jpg 1200w, img/opito-hero-lg.jpg 2400w, img/opito-hero.jpg 4800w" 
    media="(orientation: landscape)"
    alt="Pōhutukawa tree in Opito Bay, New Zealand"
    sizes="100vw"
    title="Pōhutukawa tree in Opito Bay, New Zealand"
      />
    <img class="opito-hero" srcset="img/cropped-sm.jpg 600w, img/cropped.jpg 1200w" sizes="100vw" 
    alt="Pōhutukawa tree in Opito Bay, New Zealand" loading="eager" decoding="sync"
    title="Pōhutukawa tree in Opito Bay, New Zealand"
    />
  </picture>
```

[GitHub Repo](https://github.com/airbr/pohutukawa)

These two features allow for art direction as well as greater web performance.

And is it not a cool tree?

