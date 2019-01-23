#!/bin/bash

HELP="
New draft script help
---------------------
There are 3 parameters:
  1. date <YYYY-MM-DD>
  2. issue <NUMBER>
  3. author <AUTHOR>

EXAMPLE:
--------
For issue #100, on Jan 4, 2018, by jsq
Run: $0 2018-01-04 100 jsq
"

if [ "$#" -ne 3 ]; then
   echo "$HELP"
   exit 1
fi

if [[ ! ($1 =~ ^[0-9]{4}\-[0-9]{2}\-[0-9]{2}$) ]]; then
    echo "💥  ERROR: param 1, <DATE>, should be valid date format YYYY-MM-DD. Found '$1'"
    echo "$HELP"
    exit 1
fi

if [[ ! ($2 =~ ^[0-9]+$) ]]; then
    echo "💥  ERROR: param 2, <ISSUE>, should be an integer. Found '$2'"
    echo "$HELP"
    exit 1
fi

if [[ ! ($3 =~ ^[A-Za-z]+$) ]]; then
    echo "💥  ERROR: param 3, <AUTHOR>, should be alphabetic. Found '$3'"
    echo "Find valid author options in _data/authors.yml"
    echo "$HELP"
    exit 1
fi

ISSUE="_drafts/$1-issue-$2.md"

mkdir -p "_drafts"
touch $ISSUE

echo "---
layout: post
title: ! 'Issue #$2'
author: $3
sponsor:
    link: TODO
    heading: TODO
    body: TODO
    displaylink: TODO
---

> TODO: intro comments

<!--excerpt-->

{% include sponsor.html %}

### Starter tasks

> TODO

### Podcasts

> TODO: Latest episode(s) of Swift Unwrapped & the Swift Community Podcast

### News and community

> TODO

### Commits and pull requests

> TODO

### Accepted proposals

> TODO

### Returned proposals

> TODO

### Rejected proposals

> TODO

### Proposals in review

> TODO

### Swift Forums

> TODO

### Finally

> TODO: something funny/fun. tweet, link, etc." > $ISSUE

echo "Successfully created '$ISSUE' written by '$3'"
echo "Opening..."
open $ISSUE
