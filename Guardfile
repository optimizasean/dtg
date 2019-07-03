require "guard/compat/plugin""

module ::Guard
  class RailsBestPractices < Plugin
    attr_reader :ui

    def initialize(options = {})
      super
      @options = {all_on_start: true, run_all: true}.merge(options)
      @cli     = options[:cli]
      @ui      = options.fetch(:ui) { UI }
    end

    def start
      run_all if options[:all_on_start]
    end

    def run_all
      return true unless options[:run_all]

      ui.info("Guard::RailsBestPractices is running on all files")
      run
    end

    def run_on_modifications(_paths)
      ui.info("Guard::RailsBestPractices is running on all files")
      run
    end

    def run_on_additions(_paths)
      ui.info("Guard::RailsBestPractices is running on all files")
      run
    end

    private

    def run(_paths = [])
      Kernel.system(rails_best_practices_cmd.join(" "))
    end

    def rails_best_practices_cmd
      ["rails_best_practices", @cli].compact
    end
  end
end

group :rgr, halt_on_fail: true do
  rspec_options = {
    cmd: "bin/rspec --format doc",
    all_on_start: true,
    all_after_pass: false,
    run_all: {cmd: "COVERAGE=true bin/rspec"},
  }
  guard :rspec, rspec_options do
    require "guard/rspec/dsl"
    dsl = Guard::RSpec::Dsl.new(self)

    # RSpec files
    rspec = dsl.rspec

    watch(rspec.spec_helper)  { rspec.spec_dir }
    watch(rspec.spec_support) { rspec.spec_dir }
    watch(rspec.spec_files)

    # Ruby files
    ruby = dsl.ruby

    dsl.watch_spec_files_for(ruby.lib_files)

    # Rails files
    rails = dsl.rails(view_extensions: %w[erb haml slim])
    dsl.watch_spec_files_for(rails.app_files)
    dsl.watch_spec_files_for(rails.views)

    watch(rails.controllers) do |m|
      [
        rspec.spec.call("routing/#{m[1]}_routing"),
        rspec.spec.call("controllers/#{m[1]}_controller"),
        rspec.spec.call("acceptance/#{m[1]}"),
      ]
    end

    # Rails config changes
    watch(rails.spec_helper)    { rspec.spec_dir }
    watch(rails.routes)         { "#{rspec.spec_dir}/routing" }
    watch(rails.app_controller) { "#{rspec.spec_dir}/controllers" }

    # Capybara features specs
    watch(rails.view_dirs) { |m| rspec.spec.call("features/#{m[1]}") }
    watch(rails.layouts)   { |m| rspec.spec.call("features/#{m[1]}") }

    # Turnip features and steps
    watch(%r{^spec/acceptance/(.+).feature$})
    watch(%r{^spec/acceptance/steps/(.+)_steps.rb$}) do |m|
      Dir[File.join("**/#{m[1]}.feature")][0] || "spec/acceptance"
    end
  end

  rubocop_options = {
    all_on_start: true,
    cli: "--rails --format fuubar", # options: --auto-correct
    keep_failed: true,
  }
  guard :rubocop, rubocop_options do
    watch(/.+.rb$/)
    watch(%r{(?:.+/)?.rubocop(?:_todo)?.yml$}) { |m| File.dirname(m[0]) }
  end

  reek_options = {
    all_on_start: true,
    run_all: true,
    cli: "--single-line --force-exclusion",
  }
  guard :reek, reek_options do
    watch(%r{.+\.rb$})
    watch(".reek.yml")
  end

  rbp_options = {
    run_all: true,
    cli: "-c .rails_best_practices.yml",
  }
  guard :rails_best_practices, rbp_options do
    watch(%r{^app/(.+)\.rb$})
  end

  brakeman_options = {
    run_on_start: true,
    quiet: true,
  }
  guard :brakeman, brakeman_options do
    watch(%r{^app/.+.(erb|haml|rhtml|rb)$})
    watch(%r{^config/.+.rb$})
    watch(%r{^lib/.+.rb$})
    watch("Gemfile")
  end
end
