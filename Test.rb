require 'resolv'
require 'json'
$address
puts "Address: #{$address}"
$address = gets.chomp
Resolv::DNS.open do |dns|
ress = dns.getresources "#{$address}", Resolv::DNS::Resource::IN::A
  p ress.map { |r| r.address }
end
