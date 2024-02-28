#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to match the repetition token
regex = /hb?tn/

# Check if the input string matches the regular expression
if input =~ regex
  puts input.scan(regex).join
else
  puts ""
end
