#!/usr/bin/env ruby

require 'net/http'
require 'uri'

unless ARGV.length == 3
  abort('Usage: url-to-proposal url-to-forums status')
end

statusHash = {
  'accepted' => 'was [accepted]',
  'returned' => 'was [returned for revision]',
  'rejected' => 'was [rejected]',
  'review' => 'is [under review]'
}

unless status = statusHash[ARGV[2]]
  abort("Status must be one of #{statusHash.keys}")
end

proposal_url = ARGV[0]
forum_url = ARGV[1]

proposal_last_split = proposal_url.split('/').last

unless proposal_number_integer = proposal_last_split.to_i
  abort("Could not find a valid proposal number in #{proposal_last_split}")
end

proposal_number = format('%04d', proposal_number_integer)

message = proposal_number

org_repository = proposal_url

def raw_url(original_url)
  sanitized_url = original_url.sub('https://github.com', '')
  parts = sanitized_url
    .split('/')
    .reject { |e| e.empty? }
  organization = parts[0]
  repository = parts[1]
  branch = parts[3] # skips "blob"
  file_path = parts[4..parts.length].join('/')

  start = 'https://raw.githubusercontent.com'

  "#{start}/#{organization}/#{repository}/#{branch}/#{file_path}"
end

request = Net::HTTP.get(URI.parse(raw_url(proposal_url)))

title = request.each_line.first # "# Deprecate String Index Encoded Offsets"
  .tr('#', '')                  # " Deprecate String Index Encoded Offsets"
  .strip                        # "Deprecate String Index Encoded Offsets"

puts "[SE-#{proposal_number}](#{proposal_url}): *#{title}* #{status}(#{forum_url})."
