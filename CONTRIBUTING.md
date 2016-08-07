# Contributing to the Swift Weekly Brief

*Contributions are welcome and encouraged!* :tada:

#### Suggestions :memo:

Have something you want to share in the newsletter? Please [open an issue][issueLink] with a link and description.

#### Fixes :bug:

Please [open an issue][issueLink] or [submit a pull request][prLink]!

--------------------------------

## Contributing

*Would you like to contribute to the next issue? Awesome! Here's how to get started.*

**Prerequisites:** you should have a good understanding of how [Jekyll](http://jekyllrb.com) and [GitHub-Pages](https://pages.github.com) work.

:warning: Remember, we publish **every Thursday**. :warning:

## Upcoming issues

If you would like to contribute to the next issue, it's easy! You can find the drafts for upcoming issues in the [`_drafts/`](https://github.com/SwiftWeekly/swiftweekly.github.io/tree/master/_drafts) directory. (Spoiler alert! :smile:) Add your content, then submit a [pull request][prLink].

## Writing a complete issue

1. Add yourself to [`_data/authors.yml`](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/_data/authors.yml). Provide a handle, name, and twitter username.
2. Run the [`new_draft.sh`](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/new_draft.sh) script to generate an issue template in `_drafts/`. (See example below)
3. Write the issue in _`drafts/`. Follow the example set by previous issues.
 
## Publishing an issue

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

[issueLink]:https://github.com/SwiftWeekly/swiftweekly.github.io/issues/new
[prLink]:https://github.com/SwiftWeekly/swiftweekly.github.io/compare
