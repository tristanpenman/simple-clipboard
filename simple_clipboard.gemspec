# coding: utf-8
# frozen_string_literal: true

require File.expand_path('lib/simple_clipboard/version', __dir__)

Gem::Specification.new do |s|
  s.name = 'simple_clipboard'
  s.version = SimpleClipboard::VERSION
  s.date = '2021-06-05'
  s.summary = 'A simple gem for accessing the clipboard'
  s.description = 'A simple gem for accessing the clipboard, based on libclipboard'
  s.homepage = 'https://github.com/tristanpenman/simple-clipboard'
  s.license = 'MIT'
  s.authors = ['Tristan Penman']
  s.email = 'tristan@tristanpenman.com'

  s.extensions = ['ext/simple_clipboard/extconf.rb']
  s.require_paths = ['lib']
  s.files = [
    'ext/simple_clipboard/simple_clipboard.c',
    'lib/simple_clipboard.rb',
    'lib/simple_clipboard/version.rb'
  ]

  s.add_development_dependency "rake", '~> 12.3'
  s.add_development_dependency "rake-compiler", '~> 1.0'
  s.add_development_dependency 'rubocop', '~> 1.16.0'
  s.add_development_dependency 'rspec', '~> 3.10'
end
