# -*- encoding : utf-8 -*-
require_dependency 'projects_helper'

module ChiliprojectMembersView
  module ProjectsControllerPatch

    def self.included(base)
      base.send(:include, MembersViewHelper)
      base.class_eval do
        unloadable
        helper MembersViewHelper
      end
    end
  end
end
