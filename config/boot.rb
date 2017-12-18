ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

# Configuração de acentuação do banco de dados
ENV['NLS_LANG'] = 'BRAZILIAN PORTUGUESE_BRAZIL.WE8ISO8859P1'
DEFAULT_OCI8_ENCODING = 'utf-8'

# Testar: BRAZILIAN PORTUGUESE_BRAZIL.WE8MSWIN1252