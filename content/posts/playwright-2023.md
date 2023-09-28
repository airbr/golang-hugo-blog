---
title: "Playwright: 2023"
date: 2023-09-27T12:00:00-08:00
draft: false
show_reading_time: true
tags: 
    - Playwright
    - E2E
    - Testing
    - Browsers
featured_image: /playwright-logo.svg
read_more_copy: Revisiting Playwright the Testing Library...

---

#### [Just over a year ago I wrote about my initial experiences with Playwright, the E2E testing library](/posts/playwright).

I return again this year to revisit Playwright with fresh eyes. In the interim I have been making heavy use of the similar but Chrome only library called Puppeteer professionally. 

## [A new day, a new repository. My new repository for Playwright testing this blog.](https://github.com/airbr/playwright)

More to come...

Example CSS Selector test with expect on the homepage to check that three featured images are present by their class of img:
```
test('3 images on main page', async ({ page }) => {
  await page.goto('https://www.morganwebdev.org/');
  await expect(page.locator('css=.img')).toHaveCount(3);
});
```

