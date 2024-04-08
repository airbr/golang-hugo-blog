---
title: "Playwright: 2023"
date: 2023-09-27T12:00:00-08:00
draft: true
show_reading_time: true
tags: 
    - Playwright
    - E2E
    - Testing
    - Browsers
    - UserAgent
    - Devices
    - Core
featured_image: /playwright-logo.svg
read_more_copy: Revisiting Playwright the Testing Library...

---

#### [Just over a year ago I wrote about my initial experiences with Playwright, the E2E testing library](/posts/playwright). 

## [A new day, a new repository. My new repository for Playwright testing this blog.](https://github.com/airbr/playwright)

Example CSS Selector test with expect on the homepage to check that three featured images are present by their class of img:
```
test('3 images on main page', async ({ page }) => {
  await page.goto('https://www.morganwebdev.org/');
  await expect(page.locator('css=.img')).toHaveCount(3);
});
```

### [List of 123 Devices supported by Playwright Core](https://github.com/microsoft/playwright/blob/main/packages/playwright-core/src/server/deviceDescriptorsSource.json)

Now, when I run my tests, it runs across these devices above. Example:

```
[
    {
        "name": "Desktop Firefox",
        "use": {
            "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:117.0) Gecko/20100101 Firefox/117.0",
            "screen": {
                "width": 1920,
                "height": 1080
            },
            "viewport": {
                "width": 1280,
                "height": 720
            },
            "deviceScaleFactor": 1,
            "isMobile": false,
            "hasTouch": false,
            "defaultBrowserType": "firefox"
        }
    }
]
```
