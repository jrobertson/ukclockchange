Gem::Specification.new do |s|
  s.name = 'ukclockchange'
  s.version = '0.1.0'
  s.summary = 'Returns the date when the clocks in the UK go forward or backwards 1 hour.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/ukclockchange.rb']
  s.add_runtime_dependency('chronic_cron', '~> 0.6', '>=0.6.0')
  s.add_runtime_dependency('chronic_duration', '~> 0.10', '>=0.10.6')
  s.add_runtime_dependency('human_speakable', '~> 0.2', '>=0.2.0')
  s.signing_key = '../privatekeys/ukclockchange.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/ukclockchange'
end
