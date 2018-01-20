# welcome first-time contributors
# welcome_message.greet

is_editing_draft = !(git.modified_files.grep(/_drafts/).empty?)
if is_editing_draft
  warn("Looks like you're editing a draft! 🤓
    Don't forget to:
    1. Review [our style guide](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/CONTRIBUTING.md#-writing-style-guide)
    2. [Publish the issue](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/CONTRIBUTING.md#-publishing-an-issue) when you're finished"
    )
end

is_publishing_issue = !(git.added_files.grep(/_posts/).empty?)
if is_publishing_issue
  warn("Looks like you're publishing an issue! 🎉
    Don't forget to:
    1. Review [our style guide](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/CONTRIBUTING.md#-writing-style-guide) before merging
    2. After you merge:
        1. Close the GitHub issue notes for this newsletter issue
        2. Open the next GitHub issue, add the correct labels, assign it to the next writer
        3. Run the `new_draft.sh` and push the next draft"
    )
end

# Check spelling and prose
prose.ignored_words = [
    "Swift", "iOS", "macOS", "watchOS", "tvOS", "iPhone", "iPad", "nonnull", "nullable",
    "nullability", "corelibs-foundation", "corelibs-libdispatch", "stdlib", "GCD", "SwiftPM",
    "Xcode", "TODO", "swift-evolution", "swift-package-manager", "swift-lldb", "swift-clang",
    "swift-llvm", "swift-corelibs-foundation", "swift-corelibs-libdispatch", "ClangImporter",
    "libdispatch", "XCTest", "SourceKit", "CMake", "SIL", "ABI", "llbuild",
    "CoreFoundation", "Swift.org", "WWDC", "@objc"
]
prose.lint_files
prose.check_spelling "_posts/*.md"
