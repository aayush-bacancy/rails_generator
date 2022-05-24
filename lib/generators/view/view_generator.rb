class ViewGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)
  desc "This generator creates index.html.erb file at app/views/NAME"
  def create_view_file
		@module_name = file_name

		view_dir_path = "app/views/#{file_name}"

		Dir.mkdir(view_dir_path) unless File.exist?(view_dir_path)

		template "view.html.erb", "#{view_dir_path}/index.html.erb"
	end
end
