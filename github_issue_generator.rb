require 'claide'
require 'date'
require 'octokit'
require 'colorize'

class GitHubIssueGenerator < CLAide::Command
  self.description = 'Generates a GitHub issue for the specified issue number and date.'
  self.command = 'github-issue'

  def self.options
    [
      ['--number=1', 'The issue number to generate the GitHub issue for.'],
      ['--date=MMMM d, YYYY', "The date of the issue's publication, for example `December 6, 2015`."],
      ['--future-issue', 'Adds a `future issue` label and omits the `current issue` label.'],
      ['--no-writer', "Skips adding the runner of this script as the issue's assignee. If `--needs-writer` is set, this option will be ignored."],
      ['--needs-writer', 'Adds a `needs writer` label and does not assign the runner of this script.']
    ].concat(super)
  end

  def initialize(argv)
    @token = ENV['SWIFTWEEKLY_TOKEN']
    @number = argv.option('number')
    @date = argv.option('date')
    @future_issue = argv.flag?('future-issue', false)
    @no_writer = argv.flag?('writer', true) == false # false if not supplied
    @needs_writer = argv.flag?('needs-writer', false)
    super
  end

  def validate!
    super
    help! 'You must export an access token and store it in the `SWIFTWEEKLY_TOKEN` environment variable.' unless @token
    help! 'Your access token is invalid.' unless @token.length == 40
    help! 'The --number and --date flags are required.' unless @number || @date
    help! 'The --number flag is required.' unless @number
    help! 'The --date flag is required.' unless @date

    help! 'The --number flag must be a valid number.' if @number.to_i.zero?
    help! 'The --date flag is not valid. It should follow the MMMM d, YYYY date format, for example `December 6, 2015`.' unless valid_date?(@date)
  end

  def run
    repo = 'SwiftWeekly/swiftweekly.github.io'
    title = "[#{@number}] Issue \##{@number} - #{@date}"
    body = <<-MD
To contribute to this issue, simply leave a comment here. Please also review [our contributing guidelines](https://github.com/SwiftWeekly/swiftweekly.github.io/blob/master/CONTRIBUTING.md).

The current draft for this issue in [`_drafts/`](https://github.com/SwiftWeekly/swiftweekly.github.io/tree/master/_drafts). If you want to contribute directly, feel free to [open a pull request](https://github.com/SwiftWeekly/swiftweekly.github.io/compare?expand=1).
    MD

    labels = ['full issue notes']
    labels << (@future_issue ? 'future issue' : 'current issue')
    labels << 'needs writer' if @needs_writer

    octokit = Octokit::Client.new(access_token: @token)

    options = { labels: labels.join(',') }
    options[:assignee] = octokit.user.login unless @no_writer || @needs_writer

    issue = octokit.create_issue(repo, title, body, options)
    puts "Issue succesfully created over at #{issue.html_url}.".green
    puts 'You can press command and double-click the URL to open it in your browser.'
  end

  private

  def valid_date?(date)
    !Date.parse(date).nil? rescue false
  end
end

GitHubIssueGenerator.run(ARGV)
