# -*- encoding: utf-8 -*-
require File.expand_path('../lib/chiliproject_members_view/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Jan Vlnas"]
  gem.description = <<-EOF
    Helper plugin for ChiliProject, meant to be used with other plugins.
    Extends the projects/settings/_members view and ProjectsHelper with additional loading methods for
    roles, members, and principals for easier override in other plugins.
  EOF
  gem.summary = %q{Provides additional hooks and helper methods for project's members settings}
  gem.homepage = 'https://github.com/jnv/chiliproject_members_view'

  gem.files = `git ls-files`.split($\)
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.name = "chiliproject_members_view"
  gem.require_paths = ["lib"]
  gem.version = ChiliprojectMembersView::VERSION
end
