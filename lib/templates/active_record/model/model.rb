<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>
  acts_as_interface

  #Attributes:
  #:<%= attributes.collect { |x| x.name }.join(', :') %>

  def self.default(type = 'new')
    hash = {}
    case type
    when 'new'
      new(hash)
    when 'create'
      create(hash)
    end
  end

end
<% end -%>
