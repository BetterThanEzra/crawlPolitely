# crawlPolitely
(3) Brief R Examples of Polite Web Crawling to Avoid Being Blacklisted

by Ezra Birt:
ezrabirt@gmail.com

 
Problem: Crawling a website, and after a few pages, the crawler is stopped by a capcha. You result to manually downloading the remaining pages.

Here are some brief methods to avoid tripping a captcha when you are crawling or scraping.

### This isn't about defeating captcha software, it is about not triggering them.

THREE STRATEGIES, BRIEFLY, ARE:
1. Slow Down
2. Change User Agents
3. Change IP Through Proxy


All usual caveats apply:
- _The following practices, though likely not illegal, may violate your terms of use agreement. Please inform yourself._
- _The robots.txt file will often list what directories not to crawl.  Be respectful._
- _Depending on your findings, you may be under ethical imperative to share your findings with those sites you are crawling._


These R examples were informed by article at:
https://www.scrapehero.com/how-to-prevent-getting-blacklisted-while-scraping/
