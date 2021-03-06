# Redmine Redcarpet formatter

require 'redmine'


RAILS_DEFAULT_LOGGER.info 'Starting Redcarpet wiki formatter for Redmine'

Redmine::Plugin.register :redmine_redcarpet_formatter do
  name 'Redcarpet Markdown Wiki formatter'
  author 'Mikoto Misaka'
  description 'Markdown wiki formatting by Redcarpet for Redmine'
  version '1.1.1'

  wiki_format_provider 'markdown', RedmineRedcarpetFormatter::WikiFormatter, RedmineRedcarpetFormatter::Helper

end
