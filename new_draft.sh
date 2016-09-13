#!/bin/bash

if [ "$#" -ne 3 ]; then
   echo "💥: expected 3 parameters"
   echo "Usage: $0 <YYYY-MM-DD> <ISSUE #> <AUTHOR>"
   echo "Example: $0 2016-01-31 6 jsq"
   exit 1
fi

if [[ ! ($1 =~ ^[0-9]{4}\-[0-9]{2}\-[0-9]{2}$) ]]; then
    echo "💥: param 1, date, should be valid date format YYYY-MM-DD. Found '$1'"
    exit 1
fi

if [[ ! ($2 =~ ^[0-9]+$) ]]; then
    echo "💥: param 2, issue number, should be an integer. Found '$2'"
    exit 1
fi

if [[ ! ($3 =~ ^[A-Za-z]+$) ]]; then
    echo "💥: param 3, author handle, should be alphabetic. Found '$3'"
    exit 1
fi

ISSUE="_drafts/$1-issue-$2.md"

mkdir -p "_drafts"
touch $ISSUE

echo "---
layout: post
title: ! 'Issue #$2'
author: $3
---

> TODO: intro comments

<!--excerpt-->

### Starter tasks

{% include task_remind.html %}

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

### Mailing lists

> TODO

### Finally

> TODO: something funny/fun. tweet, link, etc. " > $ISSUE

echo "Successfully created '$ISSUE' written by '$3'"
echo "Opening..."
open $ISSUE
