require 'date'

Fabricator(:queue, :class_name => "EventReporter::Queue") do
  name { Faker::Name.last_name }
  valid true
end

Fabricator(:invalid_queue, :from => :queue) do
  valid false
end