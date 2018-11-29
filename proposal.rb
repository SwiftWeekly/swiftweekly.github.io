#!/usr/bin/env ruby

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

puts "[SE-#{proposal_number}](#{proposal_url}) #{status}(#{forum_url})."
