require 'mumuki/domain/seed'

dist = ENV["MIYUKI_DIST"]
raise "You need to set a MIYUKI_DIST before running db:seeds" unless dist

puts "Using dist #{dist}"

require_relative "../dists/#{dist}/seeds.rb"

contents_syncer = Mumukit::Sync::Syncer.new(
  Mumuki::Domain::Store::Bibliotheca.new(
    Mumukit::Bridge::Bibliotheca.new(
      'https://bibliotheca-api.mumuki.io',
      10,
    )))

LANGUAGES.values.each do |value|
  Mumuki::Domain::Seed.languages_syncer.locate_and_import! Mumukit::Sync.key(Language, value)
end

contents_syncer.import_all! /^(#{CONTENTS.join('|')})$/i

['base', 'central'].each do |name|
  Organization.find_or_create_by!(name: name) do |org|
    org.contact_email = 'issues@mumuki.org'
    org.book = Book.find_by!(slug: BOOK)
    org.public = true
    org.locale = 'es'
    org.time_zone = 'Buenos Aires'
    org.login_methods = Mumukit::Login::Settings.login_methods
  end
end