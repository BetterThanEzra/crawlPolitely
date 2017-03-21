# crawlPolitely
(3) Brief Examples of Polite Web Crawling using R to Avoid Being Blacklisted

by Ezra Birt
ezrabirt@gmail.com

 
Problem: Crawling a website, and after a few pages, the crawler is stopped by a capcha. You result to manually downloading the remaining pages.

Here are some brief methods to avoid tripping a captcha when you are crawling or scraping.

These R examples were informed by the inforation at:
https://www.scrapehero.com/how-to-prevent-getting-blacklisted-while-scraping/

All usual caveats apply:
- _The follwoing practices, though likely not illegal, may violate your terms of use agreement. Please inform yourselves._
- _The robots.txt file will often list what directories not to crawl.  Be respectful._
- _Depending on your findings, you may be under ethical imperative to share your findings with those sites you are crawling._


# Okay, on to the good stuff...

This isn't about defeating captcha software, it is about not triggering them.

THREE BREIF STATEGIES ARE:
1. Slow Down
2. Change User Agents
3. Change IP Through Proxy
