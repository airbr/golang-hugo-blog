---
title: "Testing a small website with lots of tools"
date: 2023-11-22T12:00:00-08:00
draft: true
show_reading_time: true
tags: 
    - Playwright
    - E2E
    - Testing
    - Browsers
    - Devices
    - Axe-Core
    - WCAG
    - Accesibility
featured_image: /100.png
read_more_copy: Learning about Web Content Accessibility Guidelines (WCAG) 2.1 testing in Playwright...
---

### [One fast website- morganwebdev.com](https://www.morganwebdev.com).

The project morganwebdev.com makes use of a number of techniques for great performance and accessibility. 

* Semantic HTML
* Inlined into file CSS
* Super Tiny SVG Icons
* Minimal JS
* Deployed with a fast provider - Netlify
* 21.0 kB transferred over the wire! super tiny

This website means a lot to me because it helped me get a job one time and is full of memories. It has been my focal point of networking for a long time online. I am glad to see it so fast.

My idea was to take a tiny one page website and see what throwing a lot of tests at it can say! As I describe in my [Free Guide to Web Performance Testing](/posts/free-guide-to-web-performance-testing/) there is a certain degree of benefit I find to running multiple tests if they are free it can give another layer of confidence.

There is a lot to say in the absence of stuff! The only external script is a performance script tool by SpeedCurve. Other than that its all contained inside the HTML document.

### [The Project Github for morganwebdev.com](https://github.com/airbr/newpersonal)

This website has been saved 52 times on the [WayBack Machine](https://web.archive.org/web/20231201000000*/https://www.morganwebdev.com/).I ran different tests with 6 different platforms on the URL https://morganwebdev.com after a recent deployment:

I guess you could call this post 110% test coverage.

* Local lighthouse in Chrome browser
* Remote Pagespeed Insights i.e remote lighthouse test
* Yellow Lab Tools - Code Quality tool
* Debugbear - Free lab test built on lighthouse
* SpeedCurve - Performance Monitoring platform
* Playwright - Quality checks and accessibility testings with Axe for WCAG

## The test results:

- [Lighthouse Report HTML - mostly 100's](/morganwebdev-lighthouse.html)

[![Lighthouse Local](/lighthouse-local.png)](/morganwebdev-lighthouse.html)

- [Pagespeed Insights - Remote Lighthouse test - 100's](https://pagespeed.web.dev/analysis/https-www-morganwebdev-com/1bg6cjaiza?form_factor=desktop)

[![Lighthouse remote PageSpeed Insights](/pagespeed-insights.png)](https://pagespeed.web.dev/analysis/https-www-morganwebdev-com/1bg6cjaiza?form_factor=desktop)

- [Yellow Lab Tools - code quality tool - 99/100](https://yellowlab.tools/result/gqvmo6ypi7)

[![99/100](/yl.png)](https://yellowlab.tools/result/gqvmo6ypi7)

- [Debugbear](https://www.debugbear.com/test/website-speed/JvpREzLY/overview) - 100% Lab Score (Lighthouse)

[![100% Lab Score on free test](/debugbear.png)](https://www.debugbear.com/test/website-speed/JvpREzLY/overview)

- [WebPageTest - Full spectrum web performance test](https://www.webpagetest.org/result/231124_AiDcGV_CP/)

[![WebPageTest](/wpt.jpeg)](https://www.webpagetest.org/result/231124_AiDcGV_CP/)

- SpeedCurve

[No image here but I ran synthetic deployment tests and Real User Monitoring it performed super well!](https://app.speedcurve.com/morganwebdev/deploy/?b=apple-iphone-x&cs=lg&dl=3403180&dp=3399546&r=eu-central-1&s=761778&u=3970025&share=h557swlpwnxz0qpfielb58o7d5p5q8)

- Playwright

This project on Github is running with [123 different configured project devices](https://github.com/airbr/newpersonal/blob/master/playwright.config.js). It has a number of configured quality checks and [Axe Accessibility tests](https://playwright.dev/docs/accessibility-testing) in the `package.json`.

I initially ran this and received several notifications for elements lacking landmarks. I fixed the HTML from those error messages by adding `article` and `main` elements to the html in replacement of div's.

```
$ npm run blast && npx playwright test axe --project="Desktop Chrome"

> morgan-murrah@8.1.0 blast
> npx playwright test index --reporter=dot


Running 492 tests using 6 workers
················································································
················································································
················································································
················································································
················································································
················································································
············
  492 passed (3.3m)

Running 1 test using 1 worker

  ✓  1 …p Chrome] › tests/axe.spec.js:7:3 › homepage › should not have any automatically detectable accessibility issues (1.9s)

  1 passed (3.0s)
```

---

### Conclusion: it is a very fast website. It is potentially WCAG compatible under an Axe test, but manual testing would be needed to confirm.
