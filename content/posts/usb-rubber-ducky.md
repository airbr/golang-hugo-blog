---
title: "USB Rubber Ducky experience"
date: 2023-08-05T8:00:00-08:00
draft: false
tags: 
    - programming
    - hardware
    - USB Rubber Ducky
    - Duckyscript
show_reading_time: true
read_more_copy: Read about making keyboard scripts...
featured_image: /usbrubberducky.jpg
---

Background:

* What is a USB Rubber Ducky: [The Verge Article 'The new USB Rubber Ducky is more dangerous than ever'](https://www.theverge.com/23308394/usb-rubber-ducky-review-hack5-defcon-duckyscript)
* [Hak5 - creator of the USB Rubber Ducky](https://shop.hak5.org/products/usb-rubber-ducky)

My experience:

I have owned a V1 USB Rubber Ducky for some years now, experimenting with it to do various things such as opening a terminal to install software, open web browsers to particular web pages, various things just to learn about whats possible. It always amazed me the potential but I never had a strong use case for it.

After feeling like I could treat myself to a new tool/toy I purchased the new Version 3 USB Rubber Ducky:

![](/usbrubberducky.jpg)

**Left: v3 of USB Rubber Ducky, Right: v1**


Example Hello World Script with Ducky Script 3.0, using the Button feature to initiate payload after the button is pressed.

This program opens a text edit program on MacOS and inputs the text including the Lorem Ipsum.

```
LED_R
REM First Stage Payload Code...

REM Wait for operator to assess target before executing second stage.
WAIT_FOR_BUTTON_PRESS

LED_G
REM Second Stage Payload Code...

REM A slightly more advanced "Hello, World" for macOS
DELAY 3000
REM Open Spotlight Search
COMMAND SPACE
REM Open the text editor
STRING TextEdit
ENTER
DELAY 2000
COMMAND n
DELAY 2000
STRING echo Hello, World! MacOS Example 

ENTER
STRING Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque elementum semper velit vitae semper. Nunc consequat enim eget massa blandit ultrices. Proin ac efficitur velit. In hac habitasse platea dictumst. Vivamus feugiat risus ut euismod convallis. Aliquam ultrices nunc quis erat faucibus tempor. In gravida, felis ut fermentum maximus, orci lectus viverra velit, id pulvinar nulla mauris bibendum tortor. Mauris a varius enim. Duis varius eget quam id ornare.
``` 

It is certainly really cool and fascinating what it can accomplish! I just need some practical and good ideas heh.

[For now I have created a GitHub repo to store my duckyscripts](https://github.com/airbr/usb-duckyscript).

