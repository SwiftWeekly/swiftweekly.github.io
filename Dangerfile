
# Reminders for writing a draft
is_adding_draft = !(git.added_files.grep(/_drafts/).empty?)
is_editing_draft = !(git.modified_files.grep(/_drafts/).empty?)
if is_editing_draft || is_adding_draft
  editing_message = <<-EOS
Looks like you're editing a draft! 🤓
**Don't forget** to review [our style guide](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/CONTRIBUTING.md#-writing-style-guide) and [publish the issue](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/CONTRIBUTING.md#-publishing-an-issue) when you're finished.
  EOS
  warn(editing_message)
end

# Reminders for publishing an issue
is_publishing_issue = !(git.added_files.grep(/_posts/).empty?)
if is_publishing_issue
  publish_message = <<-EOS
Looks like you're publishing a new issue! 🎉
**Don't forget to:**
1. Review [our style guide](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/CONTRIBUTING.md#-writing-style-guide) before merging
2. After you merge, close the GitHub issue notes for this newsletter issue
3. Open the next GitHub issue, add the correct labels, assign it to the next writer
4. Run the `new_draft.sh` script and push the next draft
  EOS
  warn(publish_message)
end

# Check spelling and prose
prose.language = "en-us"
prose.ignore_acronyms = true
prose.ignore_numbers = true
prose.ignored_words = [
    "Swift", "iOS", "macOS", "watchOS", "tvOS", "iPhone", "iPad", "nonnull", "nullable",
    "nullability", "corelibs-foundation", "corelibs-libdispatch", "stdlib", "GCD", "SwiftPM",
    "Xcode", "TODO", "swift-evolution", "swift-package-manager", "swift-lldb", "swift-clang",
    "swift-llvm", "swift-corelibs-foundation", "swift-corelibs-libdispatch", "ClangImporter",
    "libdispatch", "XCTest", "SourceKit", "CMake", "SIL", "ABI", "llbuild",
    "CoreFoundation", "Swift.org", "WWDC", "@objc"
]
prose.lint_files
