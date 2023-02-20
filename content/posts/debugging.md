---
title: "Commentary on Debugging"
date: 2023-02-11T8:00:00-08:00
draft: false
tags: 
   - Debugging
   - Zines
   - Software
show_reading_time: true
read_more_copy: Read more about Debugging...

---

Sometimes you need more than just a 'rubber duck' to debug. You need a whole way of thinking!

This article has:

- An Ode to Software Bugs, a description of software bugs and me
- Commentary on the Pocket Guide to Debugging by Julia Evans

This article is intended to be a story about my own experiences with software bugs and reading this zine.

More than just fixing a particular bug, or knowing technical skills, Debugging is a virtue and evergreen skill for any developer so maybe this helps someone. 

Check out [The Pocket Guide to Debugging](https://wizardzines.com/zines/debugging-guide/). I have read this pocket guide and it is full of evergreen advice for how to debug an issue. The pocket guide has re-organized my thinking about this practice.

# An ode to software bugs 

![A wanderer above the Sea of Fog](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Caspar_David_Friedrich_-_Wanderer_above_the_sea_of_fog.jpg/800px-Caspar_David_Friedrich_-_Wanderer_above_the_sea_of_fog.jpg)
 
The question is not can we prevent all bugs - you will assuredly write some errors and bugs - it is a question of how severe those bugs are and how they affect other people and what measures are in place to prevent to mitigate them. This is sometimes answered by having a QA department, or automated tests, but it will never take away the reality of living among the bugs as a developer in your development environment occasionally you will experience bugs that you have to fix or workaround.

One of the first arts of living with bugs is **segmentation**: making sure that any errors that do happen are limited in scope and handled gracefully. There are rankings and tiers of bugs, because we recognize their inevitability. Luckily Ive never experienced a P0 or a total showstopping bug.

It is in this foggy and buggy development state - a interim state, full of possibilities, but also potentially massive frustration - that we live and must learn to adapt and debug to live another day sometimes when a bug hits.

#### When its tough, the tough get going

I think, at a core emotional level, the worst part about a software bug is if you are faced with explaining to someone, maybe a superior at your workplace, that you (the expert in the situation) don't know what is going on.

Even when you are a seasoned expert who has fixed many things in the past it may still feel like a bad feeling when you don't understand the bug. Sometimes even when you are using tools like Google and trying things, it feels like a random scattered practice.

Recently, I found something that I think helps me organize my thinking and practice so that I never feel like I don't know what is going on. It is a wonderful feeling.

## Enter the Pocket Guide

[The Pocket Guide to Debugging by Julia Evans](https://wizardzines.com/zines/debugging-guide/) is an excellent and concise addition to the field of Debugging. The reason I love it so much is that it provides a framework for understanding bugs that allows me to feel always in control. I know that if I go through this guide, I am almost certainly going to find my way. 

![Image of the Cover of the Pocket Guide to Debugging](https://wizardzines.com/zines/debugging-guide/cover_hu95832f9c7b8e34f8f640ef33a1695b9f_1085986_800x0_resize_q75_box.jpg)

Per the website by Evans, the guide helps you debug so that you:

- **learn from your bugs**, so that you can often skip straight to “oh, I’ve seen this before!”
- have a million different ways to make progress, so that you **always have something to do next**
- continuously run experiments to **gather information** (in debugging, even failed experiments are progress!)
- **understand exactly why the bug happened**, which makes it very easy to fix it
- and ultimately, learn from your bugs to **become an expert** on the things that went wrong

This article has commentary on the guide's manifesto and a brief summary of the strategies.

### Manifesto

*Numbered headings are the words of J Evans, subheadings are my own commentary*

1. **Inspect, don't squash**

    - First, try and relax. Your goal should be to understand what happened, not just fix it. Frustration occurs quickly as you try in failed attempts to fix it, whereas looking at as a journey of understanding helps.

2.  **Being stuck is temporary**

    - Following advice in the guide, you will always have a next step to follow, so you hopefully can avoid feeling lost.
3.  **Trust nobody and nothing**

    - Libraries, established products, tested products, things that have been through QA - these can all have bugs. Trust no one.
4. **Its probably your code**

    - I have spent hours and sometimes days convinced a library was the cause of the bug. It was usually always me.
5. **Don't go it alone**

    - This one is interesting. If you have supports around you, lean on them and ask questions! If you have Slack communities or otherwise, ask for advice. Sometimes you feel like you have to be the expert and go it alone, but that is not the case.
6. **There always a reason**

    - Computers are logical even when it doesn't feel that way. There is always some kind of reason, some kind of control flow, some kind of data issue, something. 
7. **Build your toolkit**

    - If it helps, it is valid. Console Logs, breakpoints, CSS inspectors - all tools that may help you pinpoint the problem.
8. **It can be an adventure**

    - Sometimes I try and feel like I am wrestling with a monster or something exciting. This helps avoid the dread.

### Strategies

I won't spoil these, but there are 56 pages of the Zine that deal with specific strategies for debugging.

What I love about the strategies is that its not perfectionist or trying to be authoritative because it recognizes the journey will be very different for each situation. For example, using console logs or print statements has its place and gives useful information sometimes. The advice is written and illustrated in an evergreen way that is broadly applicable to most any situation.

From the Table of Contents on the website you can get a flavor of what the strategies are like:

- First Steps
- Get Organized
- Investigate
- Research
- Simplify
- Get Unstuck
- Improve Your Toolkit
- After Its Fixed

## Ready to Debug 

With my experience reading this Zine, I felt better equipped. I have a new look on development life, like the wanderer above the sea of fog, able to look out past the bugs that may come. I hope you feel this way too.

