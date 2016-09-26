# Contributing to *Swift Weekly Brief*

*Contributions are welcome and encouraged!*

### Suggestions

Have something you want to share in the newsletter? Please [open an issue][issueLink] or [submit a pull request][prLink] with a link and description.

### Fixes

Spelling, grammar, or code. Please [open an issue][issueLink] or [submit a pull request][prLink]!

### Prerequisites

You should have a good understanding of how [Jekyll](http://jekyllrb.com) and [GitHub-Pages](https://pages.github.com) work.

### Publishing

:warning: We publish **every Thursday**. :warning:

New issues should be pushed to `master` **before** noon (12 p.m.) Pacific Time, preferably around 10 a.m. if possible. Emails are automagically sent via Mailchimp's [RSS-to-Email](https://mailchimp.com/features/rss-to-email/).

> NOTE: Publishing too late (*at or after* noon (12 p.m.) will prevent emails from being sent.

Tweets via [@swiftlybrief](https://twitter.com/swiftlybrief) are currently done manually. Just ping Jesse when tweets need tweeting.

### Continuous integration

We use [travis-ci](https://travis-ci.org/SwiftWeekly/swiftweekly.github.io), [danger](http://danger.systems), and [proselint](http://proselint.com) (via [danger-prose](https://github.com/dbgrandi/danger-prose)). This ensures:

- We're always pushing valid markdown and `jekyll` is happy
- We write elegant prose — no grammar/spelling mistakes, and no offensive or unwelcoming language. See the [`Dangerfile`](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/Dangerfile) for more details.

# Upcoming issues

If you would like to contribute to the next issue, it's easy! You can find the drafts for upcoming issues in the [`_drafts/`](https://github.com/SwiftWeekly/swiftweekly.github.io/tree/master/_drafts) directory. (Spoiler alert! :smile:) Add your content, then submit a [pull request][prLink].

# Writing an issue

1. Add yourself to [`_data/authors.yml`](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/_data/authors.yml). Provide a handle, name, and twitter username.
2. Run the [`new_draft.sh`](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/new_draft.sh) script to generate an issue template in `_drafts/`. (See example below)
3. Write the issue in `_drafts/`. Follow the example set by previous issues.
4. **For code snippets, use jekyll highlight blocks:** `{% highlight swift %} /*code*/ {% endhighlight %}`
5. See the handy tips below!

# Publishing an issue

1. When ready to publish, move the `.md` file from `_drafts/` to the `_posts/` directory.
2. Run `jekyll build` on your local copy to preview.
3. Make sure everything looks good. :ok_hand:
4. Submit a [pull request][prLink] or push to master. :tada:


#### Generating a draft

Example:

```bash
# usage: ./new_draft.sh <DATE> <ISSUE #> <AUTHOR>

$ ./new_draft.sh 2016-04-21 19 jsq  # creates _drafts/2016-04-21-issue-19.md 
```

# Tips

Tips for authors to keep up with what's going on:

- Watch all of the main [Apple repositories](https://github.com/apple).
- Follow the prominent [contributors](https://github.com/orgs/apple/people).
- Monitor [swift-evolution-announce](https://lists.swift.org/pipermail/swift-evolution-announce/) for important, high-level announcements.
- Skim the other [mailing lists](https://lists.swift.org/mailman/listinfo) periodically. Look for interesting subject lines and Core Team participation in threads.
  - A trick to quickly read only the emails since the last issue:
    1. Subscribe to the mailing lists, and have emails sent to your personal Gmail account.
    2. Enter the following into the Gmail search bar to only display emails sent since the last Swift Weekly Brief issue: `to:swift-evolution@swift.org after:2016/9/22`, where `2016/09/22` is the date of the last issue.
- Starter tasks: check [this filter](https://bugs.swift.org/issues/?filter=10451)
- When in doubt, refer to previous issues for examples.
 
Finally, it helps to keep a running draft throughout the week, adding a little bit each day.

[issueLink]:https://github.com/SwiftWeekly/swiftweekly.github.io/issues/new
[prLink]:https://github.com/SwiftWeekly/swiftweekly.github.io/compare
