guard :shell do
  watch(/mbbc.rb/) { system('ruby mbbc.rb') }
  watch(%r{^lib/.+/.+\.rb}) { system('ruby mbbc.rb') }
end
