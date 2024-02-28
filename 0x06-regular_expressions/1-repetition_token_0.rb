#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to match the repetition token
regex = /^hb(t*)n$/

# Check if the input string matches the regular expression
if input =~ regex
  puts input
else
  puts ""
end
