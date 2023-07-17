---
title: "Free guide to web performance testing"
date: 2023-07-16T8:00:00-08:00
draft: false
tags: 
   - Web Performance
   - Lighthouse
   - PageSpeed Insights
   - Yellow Lab Tools
   - DebugBear
   - WebPageTest
   - SpeedCurve
   - Core Web Vitals
   - CrUX
   - LCP
   - FID
   - CLS
show_reading_time: true
read_more_copy: Read more about free web performance testing techniques...
featured_image: /morganwebdevdotorg.gif
---

### This is how I test websites for performance with free or freemium tools. 

I have tried a few web performance tools and this how I do it when I really want to refine and investigate a deployment or the current state of a website. I also do this method when I want to do it for free on an individual basis: a lot of this stuff is automated by paid tools for you.

Ideally, going through the rigor of testing with more than one platform will ensure a higher degree of trust in the results produced by the tests. 

For this exercise I usually open six tabs in chrome, one for each of the links below.

### First, Identify the specific URL to test

1. Visit the URL you want to test in a Chrome browser, run a local lighthouse test and get results ( Mobile, Navigation, all 5 categories the first time: Performance, Accessibility, SEO, Best Practices, PWA. Feel free to just do performance if that is all you are looking at on repeat visits.)
https://developer.chrome.com/docs/lighthouse/overview/#devtools
2. Open PageSpeed Insights and enter the URL, await results
https://pagespeed.web.dev/
3. Open Yellow Lab Tools and enter the URL (Mobile), await results
https://yellowlab.tools/
4. Open DebugBear and enter the URL (Mobile), await results
https://www.debugbear.com/test/website-speed
5. Open WebPageTest and enter the URL (Mobile, Motorola G (Gen 4), 4G connection, minimum of 3 test runs)
https://www.webpagetest.org/
6. Open Speedcurve, do a burst of synthetic tests
https://www.speedcurve.com/

Have some fun relaxing while the tests run.

Start to look at the results. Consider a few questions:

1. Does the URL get [CrUX data](https://developer.chrome.com/docs/crux/about/) i.e is it somewhat popular like you would expect? That data should be present and comparable in [PageSpeed Insights](https://pagespeed.web.dev/), [Debugbear](https://www.debugbear.com/test/website-speed), [WebPageTest](https://www.webpagetest.org/) and [SpeedCurve](https://www.speedcurve.com/) if it is popular enough to get real CrUX data.

2. Compare trends among the different results. Are they comparable? How does the local versus remote Lighthouse results compare i.e the difference between your local machine and a remote machine? The Yellow Lab Tool result is particularly good at diagnosing code quality issues, take a look at that individually.

3. Start to look at the key core web vitals. LCP will be measured in several different tests, I look at LCP particularly first. [Per Google, on Core Web Vitals:](https://web.dev/vitals/)

> Largest Contentful Paint (LCP): measures loading performance. To provide a good user experience, LCP should occur within 2.5 seconds of when the page first starts loading.
>
> First Input Delay (FID): measures interactivity. To provide a good user experience, pages should have a FID of 100 milliseconds or less.
>
> Cumulative Layout Shift (CLS): measures visual stability. To provide a good user experience, pages should maintain a CLS of 0.1. or less.

4. Focus on the WebPageTest results. It is currently the best guide. 

There is SO much more to this than that, but by now if you look at several test results, some trends or things should appear consistent and you can dig deeper.

Seize the day! test web performance.

This is just the first installment in a series of posts about web performance. 