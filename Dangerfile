# Look for prose issues
prose.lint_files

# Look for spelling issues
prose.ignored_words = ["Swift", "iOS", "macOS", "watchOS", "tvOS", "iPhone", "iPad"]
prose.check_spelling

# Ensure a clean commits history
if git.commits.any? { |c| c.message =~ /^Merge branch/ }
  fail('Please rebase to get rid of the merge commits in this PR')
end
