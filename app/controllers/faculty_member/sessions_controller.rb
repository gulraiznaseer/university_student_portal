# frozen_string_literal: true

module FacultyMember
  class SessionsController < Devise::SessionsController
    private

    def after_sign_in_path_for(_resource_or_scope)
      root_path
    end

    def after_sign_out_path_for(_resource_or_scope)
      root_path
    end
  end
end