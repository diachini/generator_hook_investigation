# frozen_string_literal: true

module Rspec
  module Generators
    class CustomFormObjectGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('templates', __dir__)

      def copy_form_spec_file
        template 'form_spec.erb', File.join('spec/forms', class_path, "#{model_resource_name}_form_spec.rb")
      end
    end
  end
end
