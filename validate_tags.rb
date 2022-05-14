# This is a quick & dirty script to validate the format of the included files.
# Run like `ruby validate_tags.rb` and you should see '.' for successfully
# parsed files. 'F' or an error means that something blew up.

require 'yaml'
require 'json'

tags_yaml = YAML.load_file("solana-validator-tags.yml")
tags_json = JSON.load_file("solana-validator-tags.json")

putc tags_yaml['ZW'] == 'Zimbabwe' ? '.' : 'F'
putc tags_json['ZW'] == 'Zimbabwe' ? '.' : 'F'
puts ''
