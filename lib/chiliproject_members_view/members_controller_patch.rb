# -*- encoding : utf-8 -*-
require_dependency 'members_controller'

module ChiliprojectMembersView
  module MembersControllerPatch

    def self.included(base)
      base.send(:include, MembersViewHelper)
      base.class_eval do
        unloadable
        helper MembersViewHelper
      end
    end
  end
end
