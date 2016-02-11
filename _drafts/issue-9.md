---
layout: post
title: ! 'Issue #9'
author: jsq
---

Welcome to Issue #9 of the weekly brief! Because issues are zero-indexed, this means we've reached our 10th issue milestone. 🎉 Thanks for reading each week! 😄 Things seem to have slightly slowed down this week. Even the Xcode 7.3 beta 3 [release notes](http://adcdownload.apple.com/Developer_Tools/Xcode_7.3_beta_3/Xcode_7.3_beta_3_Release_Notes.pdf) were mostly uneventful. It feels like we're getting closer to the final Xcode 7.3 and Swift 2.2 releases.

<!--excerpt-->

### Commits and pull requests

John Holdsworth merged a [pull request](https://github.com/apple/swift/pull/1193) that fixes a missing Xcode "Quick Help" menu for enum values as switch case patterns. 👏

Dmitri Gribenko [started work](https://github.com/apple/swift/pull/1215) on enabling iOS host tests.

David Grove from IBM Research [merged](https://github.com/apple/swift-corelibs-libdispatch/pull/43) an initial integration of Swift overlay into libdispatch build, and [made changes](https://github.com/apple/swift/pull/1212) to allow building corelibs-libdispatch and corelibs-foundation together.

Brian Gesiak asked for Apple CI to cover corelibs-xctest, and [now it does](https://twitter.com/modocache/status/697062595396816896)! 😎

The [Swift Benchmark Suite](https://github.com/apple/swift/tree/master/benchmark) is now [open source](https://swift.org/blog/swift-benchmark-suite/)! *"The suite contains source code for benchmarks, libraries, and utilities designed to help track Swift performance and catch performance regressions before they are committed."*

Nadav Rotem [improved](https://github.com/apple/swift/commit/422764545c720f696bf7061513eac30941d39cf4) the metadata hashing function in the Swift runtime. 🤓

### Proposals

Daniel Dunbar has prepared a [new proposal](https://github.com/apple/swift-evolution/pull/146), *"Package Manager C Language Target Support"*. ([Here](https://github.com/ddunbar/swift-evolution/blob/swiftpm-c-language-targets/proposals/NNNN-swiftpm-c-language-targets.md))

>This is a proposal for adding initial package manager support for the C, C++, Objective-C, and Objective-C++ languages. [...] We would like Swift packages to be able to include C targets which can be exposed to Swift directly as part of a single package. This gives developers a simple mechanism for "falling back" to C...

The mailing list thread [started here](https://lists.swift.org/pipermail/swift-build-dev/Week-of-Mon-20151228/000127.html) back in January, but it looks like Daniel is just now submitting the pull request. Overall, support for this seems positive, though a lower priority for the SPM team. If accepted, the Swift Package Manager could potentially replace [CocoaPods](https://cocoapods.org) &mdash; but I doubt this will happen soon. 😁 Also related, Ricardo Olivieri from IBM started a [similar thread](https://lists.swift.org/pipermail/swift-build-dev/Week-of-Mon-20160125/000253.html) regarding external dependencies and SPM.

Joe Groff's *"Property Behaviors"* proposal ([SE-0030](https://github.com/apple/swift-evolution/blob/master/proposals/0030-property-behavior-decls.md)) is now under [review](https://lists.swift.org/pipermail/swift-evolution-announce/2016-February/000034.html). This was [introduced](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20151214/003148.html) awhile back on the mailing list, and I think the community was overwhelmingly excited about this. I'm sure it will be accepted.

Chris Lattner's proposal, *"Remove implicit tuple splat behavior from function applications"* ([SE-0029](https://github.com/apple/swift-evolution/blob/master/proposals/0029-remove-implicit-tuple-splat.md)), has been [accepted](https://lists.swift.org/pipermail/swift-evolution-announce/2016-February/000033.html) for Swift 3. Currently, instead of calling a function in the typical way, you can actually pass an N-tuple for the arguments instead. This little-known feature is being removed from Swift 3, as it is purely syntactic sugar.

{% highlight swift %}
// some function
func foo(a: Int, b: Int) { }

// normal call
foo(42, b: 17)

// using "tuple splat"
let x = (1, b: 2)
foo(x)
{% endhighlight %}

Much of the feedback on this was "I've never used this", so I doubt it will be missed. However, Brent Royal-Gordon has already started a [discussion](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20160208/009596.html) about a replacement.

### Mailing lists

Félix Cloutier started [a discussion](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20160208/009403.html) about garbage collection. [Joe Groff](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20160208/009405.html) and [Chris Lattner](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20160208/009422.html) elaborated on the benefits and tradeoffs of reference counting versus generational mark-and-sweep. Joe [also noted](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20160208/009512.html) some historical, painful lessons learned with trying mark-and-sweep, while Austen Zheng [reminded](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20160208/009556.html) us of Android's woes in this area.

Jordan Rose [asked for feedback](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20160208/009451.html) on library evolution support in Swift ("resilience"). This is not quite a proposal and will not go through the formal Swift Evolution proposal process, but feedback is encouraged! You can find the full document [here](http://jrose-apple.github.io/swift-library-evolution/).

After a ton of feedback from the community, Dave Abrahams revised his ideas from his [initial thread](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20160201/008838.html) on *"when to use argument labels (a new approach)"* and [started a new thread](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20160201/009206.html) to continue the discussion. If you have not been following along, the idea is exactly what the title describes. For example, which of the following is more appropriate: `a.moveFrom(b, to: c)` or `a.move(from: b, to: c)`? Of course, the full discussion is much more nuanced. One major goal of the API guidelines will be to help answer questions like this.
