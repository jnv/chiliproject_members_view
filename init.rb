# -*- encoding : utf-8 -*-
require 'redmine'
require 'dispatcher'
#require File.expand_path('../chiliproject_members_view.gemspec', __FILE__)

Dispatcher.to_prepare :chiliproject_members_view do
  #unless ProjectsHelper.included_modules.include? ChiliprojectMembersView::ProjectsHelperPatch
  #  ProjectsHelper.send(:include, ChiliprojectMembersView::ProjectsHelperPatch) 
  #end
  unless ProjectsController.included_modules.include? ChiliprojectMembersView::ProjectsControllerPatch
    ProjectsController.send(:include, ChiliprojectMembersView::ProjectsControllerPatch) 
  end
  unless MembersController.included_modules.include? ChiliprojectMembersView::MembersControllerPatch
    MembersController.send(:include, ChiliprojectMembersView::MembersControllerPatch) 
  end
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
