# frozen_string_literal: true

require "paper_trail/compatibility"

Gem.post_install do |installer|
  next if installer.spec.name != 'activerecord'

  ::PaperTrail::Compatibility.check_activerecord(installer.spec.version)
end
