module ApplicationHelper
  def link_to_add_fields(name, f, association)
    obj = f.object.send(association).klass.new
    id = obj.object_id
    fields = f.simple_fields_for(association, obj, child_index:id) do |builder|
      render association.to_s.singularize, f:builder
    end

    link_to name, '#', class:'add_fields', data:{id:id, fields:fields.gsub("\n", '')}
  end
end
