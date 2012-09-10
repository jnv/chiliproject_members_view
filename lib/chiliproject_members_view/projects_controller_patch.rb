# -*- encoding : utf-8 -*-
require_dependency 'projects_helper'

module ChiliprojectMembersView
  module ProjectsControllerPatch

    def self.included(base)
      base.send(:include, ChiliprojectMembersViewHelper)
      base.class_eval do
        unloadable
        helper ChiliprojectMembersViewHelper
      end
    end
  end
end
