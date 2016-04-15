# Contributing to the Swift Weekly Brief

*Contributions are welcome and encouraged!* :tada:

### Translating :scroll:

Interested in translating content? Great! [Open an issue][issueLink] to start the conversation. 

### Content Suggestions :memo:

Something you want to share or have included in the newsletter? Please [open an issue][issueLink] and provide the following:

- A link to the content
- A brief description
- An explanation of why this is important to include

### Fixes or Corrections :bug:

Please [open an issue][issueLink] or [submit a pull request][prLink]!

--------------------------------

## Contributing content directly

*Would you like to contribute directly to the next issue? Awesome! Here's how to get started.*

**Prerequisites:** you should have a good understanding of how [Jekyll](http://jekyllrb.com) and [GitHub-Pages](https://pages.github.com) work.

:warning: Remember, we publish **every Thursday**.

### Contributing to the next issue

If you would like to contribute a thing or two to the next issue, it's easy! You can find the drafts for upcoming issues in the [`_drafts/`](https://github.com/SwiftWeekly/swiftweekly.github.io/tree/master/_drafts) directory. (Spoiler alert! :smile:) Add your content, then submit a [pull request][prLink].

### Writing a complete issue

1. Add yourself under `authors:` in the `_config.yml` file. (If you haven't already.)
    - Choose an author handle
    - Provide your name
    - Provide your url. This should be a `Twitter` or `GitHub` url.
2. Run the `new_draft.sh` script to generate an issue template in `_drafts/`. (See example below)
3. Write your complete issue. Follow the example set by previous issues.
4. Make sure the `.md` file is in the `_posts/` directory.
5. Run `jekyll build` on your local copy to preview.
6. Submit a [pull request][prLink]. :tada:

#### Generating a draft

Example:

```bash
# usage: ./new_draft.sh <DATE> <ISSUE #> <AUTHOR>

$ ./new_draft.sh 2016-04-21 19 jsq  # creates _drafts/2016-04-21-issue-19.md 
```

[issueLink]:https://github.com/SwiftWeekly/swiftweekly.github.io/issues/new
[prLink]:https://github.com/SwiftWeekly/swiftweekly.github.io/compare
