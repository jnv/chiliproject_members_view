# -*- encoding : utf-8 -*-
require_dependency 'projects_helper'

module ChiliprojectMembersView
  module ProjectsHelperPatch

    def self.included(base)
      base.extend(ClassMethods)
      base.send(:include, InstanceMethods)
      base.class_eval do
        unloadable
      end
    end

    module ClassMethods
    end

    module InstanceMethods

      def load_roles(project)
        Role.find_all_givable
      end

      def load_members(project)
        project.member_principals.find(:all, :include => [:roles, :principal]).sort
      end

      def load_principals(project)
        Principal.active.find(:all, :limit => 100, :order => 'type, login, lastname ASC') - project.principals
      end

    end

  end
end
