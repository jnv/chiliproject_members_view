# -*- encoding : utf-8 -*-
require_dependency 'members_controller'

module ChiliprojectMembersView
  module MembersControllerPatch

    def self.included(base)
      base.send(:include, ChiliprojectMembersViewHelper)
      base.class_eval do
        unloadable
        helper ChiliprojectMembersViewHelper
      end
    end
  end
end
