---
title: "HTTP Archive Record's and Manual Exporting of Images"
date: 2024-07-17T12:00:00-08:00
draft: true
show_reading_time: true
read_more_copy: Read More about HTTP Archive Records
tags: 
    - HAR
    - Browser Dev Tools
    - Proxyman
    - HTTP
    - DevTools
blurb: How to export images from an infinite scrolling pattern website
featured_image: /har-file-lg.webp
---

This blog explains one method for exporting images from a website that has a scrolling feed where images are loaded sequentially as the user scrolls the feature. Some websites do not make it easy to export images in one swoop and so this method uses HAR files recorded in the web browser to capture the images manually.

I was able to successfully capture several hundred images in one HAR file and repeat the steps multiple times to capture my entire timeline of my account on a social media website with over a thousand images. I was then able to export the images with a program called Proxyman in one or two clicks. It is a rough technique but flexible and better than screenshotting images.

Note; the image quality may vary using this technique, and you might end up with a bunch of icons and non useful images using this technique. Your mileage may vary.

## What are [HAR files](https://en.wikipedia.org/wiki/HAR_(file_format))?
![HAR Files](/har-file-lg.webp)

### caution

>HAR files contain sensitive data!
They include content of the pages you downloaded while recording as well as cookies, which would allow anyone with the HAR file to impersonate your account. All the information that you submitted while recording: personal details, passwords, credit card numbers, etc. If needed, you can edit a HAR file in a text editor and redact sensitive information but in general dont upload the HAR file to any online source you do not trust.

#### The method in this blog takes place locally and does not upload a HAR to any online source.

This method requires:
* A browser with DevTools such as Chrome that can save HAR files with content
* A program to open the HAR file and export images locally, such as [Proxyman](https://proxyman.io/).


# 1

Visit the website, for example, your apps infite scroll feed. Open the Browser Dev Tools and go to the Network Tab. Click "Start recording" network log.

# 2

Refresh the page and notice the network graph beginning to collect data. You can click "IMG" to filter to just see images that loaded when you refreshed. These are now being stored in the browser memory as long as you continue to record and do not clear the recording.

# 3

Scroll the feed. Notice the requests number increase and number of images increase in your network recording. Continue scrolling until you feel you have captured enough images or all the images you want. Basically if you as a human saw the image load it should definitely have been captured into the network log whether or not its visible on screen.

# 4

Right click "Save All as HAR with content" on the network requests to name and save a HAR file with all the content you recorded.

![DevTools Menu](/har.png)

# 5

Open the HAR file with Proxyman, filter by Media in the top menu, and then select all of the images in the app. Right click to "Export Body Content" to export all of the images to a folder.

# 6

Celebrate! Its a bit of a rough method but a handy trick. Perhaps consider deleting the HAR file when finished after this export procedure. 

All you are doing is what your browser is already doing, by using dev tools you are merely levelling up the convenience of this feature.




