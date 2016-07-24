#!/bin/bash

if [ "$#" -ne 3 ]; then
   echo "Error: expected 3 parameters"
   echo "Usage: $0 <YYYY-MM-DD> <ISSUE #> <AUTHOR>"
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

> TODO: comment

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

> TODO" > $ISSUE

echo "Successfully created '$ISSUE' written by '$3'"
echo "Opening..."
open $ISSUE
