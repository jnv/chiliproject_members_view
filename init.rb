# -*- encoding : utf-8 -*-
require 'redmine'
require 'dispatcher'
#require File.expand_path('../chiliproject_members_view.gemspec', __FILE__)

Dispatcher.to_prepare :chiliproject_members_view do
  require_dependency 'projects_helper'
  ProjectsHelper.send(:include, ChiliprojectMembersView::ProjectsHelperPatch) unless ProjectsHelper.included_modules.include? ChiliprojectMembersView::ProjectsHelperPatch
end

Redmine::Plugin.register :chiliproject_members_view do
  spec = Gem.loaded_specs['chiliproject_members_view']
  name 'Members View'
  author spec.authors.join
  description spec.summary
  version spec.version
  url spec.homepage
  author_url 'https://github.com/jnv'
end
