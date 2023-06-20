---
title: "Web Performance Standards: New Zealand"
date: 2023-06-19T12:00:00-08:00
draft: false
show_reading_time: true
tags: 
    - web performance
    - standards
    - public interest
    - compliance
---

This post seeks to examine some underlying justification and practical application of public web performance standards. Currently no such standard exists in New Zealand and as I am writing this I am unaware of any such adopted public standards anywhere.

[What do I mean by web performance](https://developer.mozilla.org/en-US/docs/Learn/Performance/What_is_web_performance)? Broadly I mean objective and subjective measurements of a websites performance. 

## Speed supports other rights, but not a right itself?

There have been movements to recognize a right to internet access but there is not much precedent for a right to a particularly fast internet experience. There is nothing like any rights saying a website must load in under 3 seconds to be regulated or legal. However, in the world of the internet there is a growing amount of evidence that these things matter to how users interact with services. 

## Accessibility

There are notable advances in the area of web accessibility in legal and social policy which has some relevance to web performance. New Zealand has the [Web Accessibility Standard 1.1](https://www.digital.govt.nz/standards-and-guidance/nz-government-web-standards/web-accessibility-standard-1-1/) which all public service and non-public service agencies must meet.

These standards are intended to support people:

* with low vision
* with reading, learning or intellectual disabilities
* who use mobile and touch-based devices, voice assistant and speech recognition software.

With time, will web performance start to be recognized in a similar way?

## An extension of Accessibility

Web performance and accessibility are overlapping venn circles. One is currently considered in the area of rights and the public interest and one is considered optional but desirable. The latter has gained some increasing recognition and with future years the former may be recognized along with it. Both support each other in various ways. 

If your internet connection on your phone is too slow to access a website in a _reasonable_ amount of time then is it really accessible to you? Being delayed too long is similar to being denied as it makes it harder to access services. Imagine repeated visits to a service to try and resolve something and encountering the same detrimental experience again and again. 

What if the website is too slow for the users internet connection and not the fault of the user for being on mobile data or something else? Do we acknowledge that a duty could exist to provide services of a certain standard?

With web accessibility a core issue is acknowledging a technical challenge. We need our public service agencies to produce clean, semantic HTML amongst other considerations for the assistive tools to work their best and ensure access.

The justification already exists for making a technical challenge of providers to provide good web performance, to ensure reasonable standards of access.

### Further arguments

Web performance includes a variety of objective concerns. These include page weight i.e the total size of the page being downloaded, which web performance experts will tell you, [*matters* at the margins](https://timkadlec.com/remembers/2019-01-09-the-ethics-of-performance/). 

Some write [web performance is an unalloyed good and no one has ever complained that a website is too fast](https://clearleft.com/thinking/the-intersectionality-of-web-performance).

Some arguments and links can be shared in favor of viewing web peformance as a public interest issue: 

## Public interest

>Poor performance can, and does, lead to exclusion. This point is extremely well documented by now, but warrants repeating. Sites that use an excess of resources, whether on the network or on the device, don’t just cause slow experiences, but can leave entire groups of people out. - [Tim Kadlec](https://timkadlec.com/remembers/2019-01-09-the-ethics-of-performance/)


## Efficient Government

> If you’re paying for the bandwidth every time a hefty file is downloaded, your monthly bill could get pretty big.

> So apart from the indirect business benefits of happy users converting to happy customers, there can be a real nuts’n’bolts bottom-line saving to be made by having a snappy website. - [Jeremy Keith](https://clearleft.com/thinking/the-intersectionality-of-web-performance)

# Making Standards

## Considering web accessibility standards

The New Zealand web accessibility standard contains a flexible [definition of a website](https://www.digital.govt.nz/standards-and-guidance/nz-government-web-standards/web-accessibility-standard-1-1/#:~:text=before%20doing%20so.-,Website,-A%20coherent%20collection) that could be copied if necessary for a starting point. I think it demonstrates that these definitions are not as hard as we imagine them to be sometimes. 

It also contains excellent language for describing "High-stakes information or services" that determine whether things get a preferential focus. I think any web performance standards would have something like this definition: 

> Online information or services whose inaccessibility at the time of publication could reasonably be expected to have a negative impact on an individual’s emergency preparedness and response, health and safety, or critical civil and political rights, entitlements, services, or obligations.

An example of a limited exception from normal rules that makes sense is for "3.2 Complex visual maps":

> 3.2.1 Complex visual maps that associate information with one or more points or shapes that cannot reasonably be represented by common identifiers such as postal addresses or the names of specific places or regions are exempt from the requirement... An example of a complex map is one that shows the distribution of different underground mineral deposits in New Zealand.

As I read this I just imagine, what if there were public interest focused web performance standards with a similar kind of developed policy feel?

## Core web vitals and other common metrics, or not?

There are many potential futures. In one future, there is a set of web vitals, or core metrics, which agencies must meet or work to meet. It is hard to say what it should look like but there is significant room to imagine.

What is important to recognize is the work that has been done in this area of acccesibility already. It would not be hard to carve out levels of higher focus and exceptions to this policy, whatever we make it.

### Examples:

#### Exceptions: "Outage events, or unplanned service degradation"

It would be possible to write into the policy that no agency should be considered to be breaching it if there was evidence that the performance problem was caused by an outage or something out of the agencies control

#### Preferences: "Largest Contentful Paint on High Stakes Information web pages"

It would be possible to write into the policy a preference for a few selective metrics under certain conditions, such as delivering high stakes information.

#### Compliance: Periods of time to deployment

It would be possible to write into the policy a compliance schedule, where agencies are to make changes in result to non compliant performance on some kind of appropriate timeline.

## Who could it apply to?

Public service agencies with a mandate to improve performance and organizations wanting to do business with government

## Enforcing standards

There would be enormous easy wins in this area, as many public agency websites are already very lean and basic with their usage of resources already. Generous or significant amounts of lead up time could be given to comply.

Appropriate exceptions could be carved out for performance heavy applications. Simultaneously prefences could be given for high stakes information. 

## Conclusion

With good policy just outcomes would be promoted and unjust outcomes avoided. I just like to imagine a future with more support for web performance which I suggest overlaps with accessibility. 

Yes, there are technical challenges, and I believe we ought to be asking our public agencies to meet them. 
