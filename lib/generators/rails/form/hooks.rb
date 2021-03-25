require 'rails/generators'
require 'rails/generators/rails/scaffold/scaffold_generator'
require 'rails/generators/rails/controller/controller_generator'

Rails::Generators::ScaffoldGenerator.hook_for :form, default: true, type: :boolean # invoke with scaffolding generators
Rails::Generators::ControllerGenerator.hook_for :form, default: true, type: :boolean # invoke with the controllers' generator.
