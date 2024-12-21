---
title: "Website refresh: Buttons, RUM and the Speculation Rules API"
date: 2024-11-28T8:00:00-08:00
draft: true
tags: 
   - Web Technology
   - Morgan Murrah
   - Buttons
   - RUM
   - Cookie Consent
   - Speculation Rules API
   - HTML
   - CSS
show_reading_time: false
read_more_copy: Read about a little of whats going on under the hood of Morganwebdev.org...
blurb: About some updates to this website including a button component, trying out the Speculation Rules API and trying out a Cookie Banner Web Component
---

I have been working on a few changes to this website!

* [How I built a button component - inspired by Piccalilli Blog](https://piccalil.li/blog/how-i-build-a-button-component/)
* Implementing [mPulse](https://www.akamai.com/products/mpulse-real-user-monitoring) and [SpeedCurve](https://www.speedcurve.com/) Real User Measurement (RUM) on my website.
* Implementing a [Cookie Banner Web Component](https://github.com/porscheofficial/cookie-consent-banner)
* [Using the Speculation Rules API to prerender two pages on this website](https://developer.mozilla.org/en-US/docs/Web/API/Speculation_Rules_API)
* A few stylistic decisions... mainly no hero images!

## New Button Component

{{< rawhtml >}}
<a href="#" class="button" data-button-variant="primary">A new primary button! for the nav</a>
<br><br>
<a href="#" class="button" data-button-variant="positive">A new positive button! for tags</a>
{{< /rawhtml >}}

**I decided that my site navigation was looked a bit tired**. The nav was formerly a list of text hyperlinks -- basically unstyled looking anchor tags -- and I figured they deserved to be buttons.

*Did you know that quite a lot of thought can go into a button?* 

* Should you use a styled anchor tag or the [button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button) element? It depends what you are doing...
* How should you style different variations of the buttons? The best practices seem to include a lot of CSS variables...
* Should the cursor change over buttons? There is arguably a preference...
* How is it best to handle variations of a button in HTML/CSS? Data attributes and classes are your friend.

I went with a steady expert opinion: [How I build a button component - from Piccalilli Blog](https://piccalil.li/blog/how-i-build-a-button-component/). It was an excellent blog post with codepen samples that allowed me to build the very extendable component into this website with two current variations for two uses on the site.

My kudos and respect for the blog post by Andy Bell. The post really explained and gave insight into how, once you start handling lots of buttons or adding more variation, it really makes sense to lay it out with variables and other decisions made along the way!

## mPulse and SpeedCurve

This website now currently runs two Real User Measurement solutions: mPulse by Akamai and SpeedCurve by SpeedCurve. These collect snapshots of performance data such as a number of metrics related to the loading of the page.

The purpose of running these two softwares is to gain insights and improve my website as much as possible, and get a sense of what is out there in terms of RUM solutions and patterns.

An example of what SpeedCurve's RUM UI looks like for me is this:
![SpeedCurve RUM dashboard](/speedcurve.png)
mPulse's classic UI with different paramaters looks like this:
![mPulse RUM dashboard](/mpulse.png)


Implementing these two involved some thought but for a start felt easy enough. Basically it involved putting scripts provided by them in the page. The results of running these two solutions (on a trial free basis, thank you Akamai and SpeedCurve for giving me access!) gives me rich real user performance data on my humble small website.

You can inspect the code on this page such as in the network tab to see the scripts running/having ran on the page load.

Both mPulse and SpeedCurve offer a wealth of options and I am just starting to take a look at more of the options in the UI. It does use Cookies though...

## Cookie Banner Web Component

![Cookie Banner Screenshot](/cookie-screenshot.png)

**Update: Temporarily disabled the cookie banner to do more work on a fork of the porsche project!**

I decided to try adding a cookie banner but I was not under any requirement to meet any rules. This decision would aim for it to be as simple as possible of a maneuver keeping in mind that I may decide to get rid of it or customize it some. In terms of content it would essentially be the most forgiving "By continuing to use this website you accept" variation and I had no project requirements for any kind of specific cookies to manage.

I decided I wanted a web component for this solution. I wanted something that no matter where I placed it, it was just configured to work. In my head, the cookie banner is very independent from the main body of the website and in code. It seemed to make sense to reach for a solution that offered the kind of [encapsulation](https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_shadow_DOM) that a web component could offer with the shadow document object model.

As it turns out, Porsche the car maker sponsors some kind of software team which appeared to create a project doing exactly this: [The lightweight and flexible Cookie Consent Banner](https://github.com/porscheofficial/cookie-consent-banner).

With a little styling changes with variables provided by the web component, I was able to adjust the text and button to match what I desired. Using attributes to pierce the encapsulation on the element I was able to configure the banner to be as simple as I intended it.

## Speculation Rules API

**Potentially near instant page loads...**

[See Docs from Google about what Speculation Rules are, and how they can enable in some cases a performance boost with prerendering](https://developer.chrome.com/docs/web-platform/prerender-pages?utm_source=devtools).

This website implements Speculation Rules to prerender two pages in browsers that support the API:

```
<script type="speculationrules">
  {
    "prerender": [
      {
        "where": { "href_matches": ["/about/", "/bellingham/"] },
        "eagerness": "eager"
      }
    ]
  }
</script>
```

The purpose of this is... an experiment. To see if it makes any difference for my little website.

In Chrome Dev Tools this 'speculation' process is visible and can be confirmed under the "Application" tab:

![Speculation Rules in Dev Tools](/speculation-rules.png).

## Stylistic and content touches

I did a few minor other things. I changed the way pagination works on the main homepage. I revisited and edited some posts. 

The biggest decision I made was for now **no hero images**. By that I mean no images that take up a significant portion of the screen as banners or headers typically do.


# Conclusion

This website definitely remains in active development! Hope you get some insight from the above commentary.