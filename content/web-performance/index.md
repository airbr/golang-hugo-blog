---
title: My General Thoughts On Web Performance
date: 2024-08-08 12:00:00
background: 'whitesmoke'
text_color: 'black'
---

👋 Hey there

I love web performance. It is a mixture of the kinds of challenges I love. 

 <!-- {{< rawhtml >}}
<br>
<web-vitals show-unsupported></web-vitals>
<script src="https://unpkg.com/web-vitals-element@latest/dist/web-vitals-element.styled.min.js"></script>
<br>
<h3><a href="https://github.com/stefanjudis/web-vitals-element">Some Core Web Vitals on this page with a web component...<a></h3>
 {{< /rawhtml >}} -->

This website is statically generated with [Hugo](https://gohugo.io/) for performance. It works pretty fast! It is also pretty basic because I like it that way sometimes.  

If you have never run a web performance test before, I recommend to start with [Yellow Lab Tools - https://yellowlab.tools/](https://yellowlab.tools/). From entering a URL you will quickly get a graded score from running a test that gives a lot of useful information.

Have you tried running tests before on websites locally? Consider checking out a local Lighthouse test run for a start:

* [Lighthouse - Chrome DevTools](https://developer.chrome.com/docs/lighthouse/overview/#devtools)

Ideally you should be using several tools to gain a bigger picture. Local "lab" tests have limitations. 

I reccomend entering a website URL into a more advanced test that includes some field data if available, but also good summaries of information of lab tests:

* [WebPageTest - https://www.webpagetest.org/](https://www.webpagetest.org/)
    * Go with the default options offered for either desktop or mobile, or customize with many options!  

There are lots of resources out there, but first you should run some tests and get your curiosity flowing!

## Real User Measurement (RUM) Data

The following test will give real user data if your website is included in the Chrome User Experience Report (CrUX):

* [Pagespeed Insights - https://pagespeed.web.dev/](https://pagespeed.web.dev/)


### Next: Performance Monitoring, but first, run some tests!

As of this update, this website has been getting about 100 views a day. I plan to produce a report about comparing the two. 