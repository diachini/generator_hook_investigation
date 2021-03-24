class FormGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)
  check_class_collision suffix: 'Form'

  argument :attributes, type: :array, default: [], banner: 'field:type field:type'

  class_option :parent, type: :string, desc: 'The parent class for the generated form'

  def create_form_file
    template 'form.erb', File.join('app/forms', class_path, "#{file_name}_form.rb")
  end

  hook_for :test_framework

  private

  def attributes_names
    [:id] + attributes.reject(&:reference?).map! { |a| a.name.to_sym }
  end
end
