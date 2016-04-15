#!/bin/bash

ISSUE="_drafts/$1-issue-$2.md"

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

### Proposals in review

> TODO

### Mailing lists

> TODO

### Finally" >> $ISSUE
