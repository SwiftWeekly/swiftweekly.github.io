# Contributing to *Swift Weekly Brief*

*Contributions are welcome and encouraged!*

First and foremost, please review and abide by [our code of conduct](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/CODE_OF_CONDUCT.md).

You should have a good understanding of how [Jekyll](http://jekyllrb.com) and [GitHub-Pages](https://pages.github.com) work — or be willing to learn. :smile: We are happy to help you with any questions, just ask!

# Contributions

**Suggestions:** Have something you want to share in the newsletter? Please find [the latest issue notes](https://github.com/SwiftWeekly/swiftweekly.github.io/issues?q=is%3Aissue+is%3Aopen+label%3A%22full+issue+notes%22) and add a comment. Or you can [open an issue][issueLink] or [submit a pull request][prLink] to the [current draft](https://github.com/SwiftWeekly/swiftweekly.github.io/tree/master/_drafts) with a link and description.

**Fixes:** Spelling, grammar, or code. Please [open an issue][issueLink] or [submit a pull request][prLink]!

# 📝 Writing an issue

### Setup and process

1. Add yourself to [`_data/authors.yml`](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/_data/authors.yml). Please provide:
    - A username to reference for the site
    - Your name
    - GitHub username
    - Twitter username
1. Run the [`new_draft.sh`](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/new_draft.sh) script to generate an issue template in `_drafts/`. See the example below.
1. Open a [`full issue notes`](https://github.com/SwiftWeekly/swiftweekly.github.io/issues?utf8=✓&q=is%3Aissue%20label%3A%22full%20issue%20notes%22%20) issue on GitHub, assigned to yourself. Add the [`current issue`](https://github.com/SwiftWeekly/swiftweekly.github.io/issues?q=is%3Aissue+label%3A%22current+issue%22) label.  We use this throughout the week to collect notes and make it easy for external contributors to contribute content. We also use this issue to collaborate with the other [Swift Weekly writers](https://swiftweekly.github.io/authors/) and troubleshoot any problems that come up.
1. Write the issue in `_drafts/` throughout the week. We recommend writing a little each day to make it easier. 
1. For style and content, follow the example set by previous issues.
1. **For code snippets, use jekyll highlight blocks:** `{% highlight swift %} /*code*/ {% endhighlight %}`
1. See the handy tips below!

### Generating a draft

Example:

```bash
# usage: ./new_draft.sh <DATE> <ISSUE #> <AUTHOR>

$ ./new_draft.sh 2016-04-21 19 jsq  # creates _drafts/2016-04-21-issue-19.md 
```

### Preview the site locally, with drafts

```bash
$ bundle exec jekyll build --future --drafts 

# -- or --

$ bundle exec jekyll serve --future --drafts --watch
```

### Writing style

We encourage all writes to use their own voice and express their own personality in their writing. This is what makes a great issue.

*Some guidelines on writing style:*

* All content must align with [Our Standards](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/CODE_OF_CONDUCT.md#our-standards), outlined in the Code of Conduct. Language must be welcoming, inclusive, respectful, etc.

* Maintain an overall positive tone. We want to avoid being overly negative. However, this *does not* mean we should not be critical. Constructive criticism is valid and should be presented in non-aggressive way.

* Use simple past tense. This is simpler and easier to read, flows better, and is particularly easier for ESL readers. **Example:**
    * Do this: *"Chris Lattner wrote a manifesto."* ✅
    * Not this: *"A manifesto was written by Chris Lattner."* ❌

* Avoid jargon and abbreviations when possible. 
    * **Example:** use *pull request* rather than *PR*

* Avoid contractions if possible. Again, this is easier to read, especially for ESL readers. 
    * **Example:** use *do not* rather than *don't*.

* For "Commits and pull requests" use the format: `PERSON did ACTION`. 
    * **Example:** *"Chris Lattner opened a pull request for a prototype of async/await."*

* For "Proposals in review" use the format: `SE-NNNN: TITLE by AUTHOR is under review`.
    * **Example:** [SE-0185](https://github.com/apple/swift-evolution/blob/master/proposals/0185-synthesize-equatable-hashable.md): *Synthesizing Equatable and Hashable conformance* by Tony Allevato is [under review](https://lists.swift.org/pipermail/swift-evolution-announce/2017-August/000397.html).

* For "Accepted proposals", "Rejected Proposals", etc. use the format: `SE-NNNN: TITLE was STATUS`.
    * **Example:** [SE-0150](https://github.com/apple/swift-evolution/blob/master/proposals/0150-package-manager-branch-support.md): Package Manager Support for branches [was accepted](https://lists.swift.org/pipermail/swift-evolution-announce/2017-February/000315.html).

### Evaluating mailing list content

Not all mailing list discussions are important/valuable enough to be listed in the newsletter. There can be a lot of noise and bikeshedding on the lists that simply isn't relevant to readers. Try to avoid these and focus on "big picture" ideas and discussions pertinent to current or future proposals.

Some good indications on whether or not a discussion is worth including:
* There is a lot of activity/replies to a thread
* The Core Team or broader Swift team has responded and is highly engaged in the discussion

> **Note:** This does not mean that discussions without these characteristics aren't worthwhile. These are simply a few guidelines to evaluate discussions.

# Publishing an issue

:warning: We publish **every Thursday**. :warning:

New issues should be pushed to `master` **before noon** Pacific Time, preferably around 10 or 11 a.m. if possible. Pushing early allows us to catch and fix any last minute errors. If there are any problems, contact [Jesse](https://twitter.com/jesse_squires).

1. When ready to publish, move the `.md` file from `_drafts/` to the `_posts/` directory.
2. Run `jekyll build` on your local copy to preview.
3. Make sure everything looks good. :ok_hand:
4. Submit a [pull request][prLink] or push to master. :tada:

### Emails

Emails are automatically sent via Mailchimp's [RSS-to-Email](https://mailchimp.com/features/rss-to-email/) feature. **Publishing too late (*at or after* noon PST) will prevent emails from being sent.** If emails fail to send on Thursday at noon PST, Mailchimp will retry on Friday at noon PST.

### Tweets

Tweets from [@swiftlybrief](https://twitter.com/swiftlybrief) are automated via [IFTTT](https://ifttt.com). 

### Continuous integration

We use [travis-ci](https://travis-ci.org/SwiftWeekly/swiftweekly.github.io), [danger](http://danger.systems), and [proselint](http://proselint.com) (via [danger-prose](https://github.com/dbgrandi/danger-prose)). This ensures:

- We're always pushing valid markdown and `jekyll` is happy
- We write elegant prose — no grammar/spelling mistakes, and no offensive or unwelcoming language. See the [`Dangerfile`](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/Dangerfile) for more details.

# 💡Tips

*Tips for authors to keep up with what's going on:*

- Watch all of the main [Apple repositories](https://github.com/apple).
- Follow the prominent [contributors](https://github.com/orgs/apple/people) on GitHub and Twitter.
- Monitor [swift-evolution-announce](https://lists.swift.org/pipermail/swift-evolution-announce/) for important, high-level announcements.
- Skim the other [mailing lists](https://lists.swift.org/mailman/listinfo) periodically. Look for interesting subject lines and Core Team participation in threads.
  - A trick to quickly read only the emails since the last issue:
    1. Subscribe to the mailing lists, and have emails sent to your personal Gmail account.
    2. Enter the following into the Gmail search bar to only display emails sent since the last Swift Weekly Brief issue: `to:swift-evolution@swift.org after:2016/9/22`, where `2016/09/22` is the date of the last issue.
- There's also an awesome macOS app called [Hirundo](https://stylemac.com/hirundo/), which makes managing the mailing lists a lot easier.
- Starter tasks: check [this filter](https://bugs.swift.org/issues/?filter=10451).
- When in doubt, refer to previous issues for examples.
 
Finally, it helps to keep a running draft throughout the week, adding a little bit each day.

[issueLink]:https://github.com/SwiftWeekly/swiftweekly.github.io/issues/new
[prLink]:https://github.com/SwiftWeekly/swiftweekly.github.io/compare
