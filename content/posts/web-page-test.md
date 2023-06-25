---
title: "WebPageTest & First Consultation"
date: 2023-05-09T8:00:00-08:00
draft: true
tags: 
   - Testing
   - WebPageTest
   - Web Performance
   - Performance
   - Speed
show_reading_time: true
read_more_copy: Read more about using WebPageTest...

---

This article is a real world story about improving a websites performance and how I got there.
 
1. I ran tests with several initial tools and skimmed the results. The tool I relied upon the most was WebPageTest and with it I diagnosed a Largest Contentful Paint (LCP) issue and ran experiments on a page. 

2. Using a hero image with *smaller* dimensions and file size that are more appropriate for the viewport and device can make a **big** difference to LCP. Preloading can also help. 

3. Sometimes you can make a quick performance win consulting but ideally you will also create a culture around performance that prevents regressions.

## On my Performance Journey...

In December I published an [introductory blog about Web Performance](/posts/performance) and since then I have continued learning.

When I started this journey I was running tests from local npm installations with Lighthouse, Sitespeed and Yellow Lab Tools. I also did one off Lighthouse tests in the browser with DevTools. I was not sure about my ability to organize the resulting output and where to go next.

I later found a number of online services including SpeedCurve, DebugBear and WebPageTest (WPT). All of them had awesome tooling and UX aspects to them. All of them felt like thousands of hours of hard work went into making them great. However, WPT seemed the sharpest tool for what I was to do so I have invested the most time with it. 

As it turns out, there is a lot more thought that goes into it than just the ability to run some tests. The real power of web performance testing seemed to be in performance monitoring and comparing tests over time. Benchmarking the tests with devices and different connection speeds also seemed critically important.

## Enter WebPageTest

WebPageTest is a company offering a premium web service on top of open source software. I began to settle on WebPageTest as the tool of choice because of the powerful features of its testing suite and its visual design. I figured maybe some day I would run my own instance but today was not that day.

There were a couple of things that immediately gave me confidence: WebPageTest has been around a while and has a bunch of repo's on Github that were popular and referenced widely. I learned WPT created some metrics such as [Speed Index](https://docs.webpagetest.org/metrics/speedindex/) which are incorporated into Lighthouse test results. Also, WPT seemed like nice people who were active in the community.

### WebPageTest Pro

WPT Pro costs < $20 a month. With Pro you get Bulk Tests, API access and Experiments. I was interested in running lots of tests and bulk selection was the main appeal.

## The Test Subject: A Non Profit

I am an official tech volunteer for a not-for-profit in New Zealand. The target demographic for the website includes every resident and citizen of New Zealand across the world as well as international supporters. 

The thought crossed my mind to test the front page of the organization just to see how it goes. And so I began...

First, I kicked off a local Lighthouse test to get a sense of anything immediate:

* [Lighthouse - Chrome DevTools](https://developer.chrome.com/docs/lighthouse/overview/#devtools)

Then, in no particular order, I opened up several services to their free testing page and entered the organizations URL:

* [Pagespeed Insights - https://pagespeed.web.dev/](https://pagespeed.web.dev/)
* [Yellow Lab Tools - https://yellowlab.tools/](https://yellowlab.tools/)
* [DebugBear - https://www.debugbear.com/test/website-speed](https://www.debugbear.com/test/website-speed)

The results started to arrive...

From PageSpeed Insights I found that the Core Web Vitals assessment had failed and it gave a Lighthouse performance score of 45: the Largest Contentful Paint time was over 10 seconds. My local Lighthouse result in Chrome DevTools produced a similar issue with the LCP.

YellowLab Tools had timed out altogether and was unable to complete a test for some reason- the error message was unclear but it seemed there was definitely a problem. DebugBear results came back in the red- 50-60% percent for real CrUX data and also lab scores. 

I was concerned. This didn't look ideal. Several testing platforms, with their own particular features, were giving a clear signal that something was amiss.

What would WPT say?

## Case Study: The Client and their LCP

* [WebPageTest - https://www.webpagetest.org/](https://www.webpagetest.org/)

I pulled up the WebPageTest menu. Using the WebPageTest Pro features, I chose Motorola G4 devices on 3G connections from a EC2 location in Sydney, Australia.

This appealed to me because it would test:

* An overseas experience as there is a concentration of the intended users such as New Zealanders in Australia
* A low powered mobile phone connection

The tests started to roll in. There was a lot of information and graphs and things to consider but one thing was clear: the LCP time was having serious issues. On the test it was taking more than 15 seconds to load, and visually watching the filmstrip it was clear what visually was taking so long to load.

With this context I discovered what seemed to be the cause: The LCP Image was had 6720 x 4480 dimensions and was 902Kb in size! 

However, I didn't stop there- I pursued further optimization by running another round of tests with a preload experiment. Even with the massive image on a mobile phone preloading the image improved the LCP time by more than 5 seconds by preloading the image!

## Deploy the information: results and filmstrips

The LCP Image seemed to be a problem from the very first test results I received from the other testing services. However, it was with WebPageTest's features that I was really able to gather the information in a way to make an impression. I shared the WebPageTest results in the organizations Slack with an introduction as to what they meant and why they were important. I just linked the test result and a beautiful visual of the test result unfurled.

Additionally, showing the filmstrip to show the effect of the large image on the loading experience elucidated a number of reactions in favor of making changes from technical staff. I was asked to consult, and emailed with the webmasters at the organization. 

## Deploy the code/images, test again

I made plans to meet with the webmasters to set out to make changes based on my consulting advice. There was a cultural recognition that we should take this into account in the future and pay a little more attention.

There seemed to be three potential layers of response. I was unsure how restrictive the platform they were using was to making these changes, but there seemed to be a clear chance for quick wins.

1. Reduce size of the image intrinsically - Easy to do once, but how to make a practice?

2. Preload? - Easier code change, just making it dynamic with whatever is the loaded Hero Image in the carousel.

3. Refactor to use Srcset and an `<img>` tag - Harder code change, also behavioral change to create multiple images for the hero image.


## Conclusion (for now)

