
Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "remove Bread Crumb", 
                     :replace_contents => "#content") do
"
          <%= flash_messages %>
          <%= yield %>
"
end
Deface::Override.new(:virtual_path => "spree/shared/_filters", 
                     :name => "remove_filters", 
                     :replace_contents => "code[erb-loud]:contains('form_tag')")


Deface::Override.new(:virtual_path => "spree/shared/_store_menu", 
                     :name => "remove home", 
                     :remove => "code[erb-loud]:contains('root_path')")

Deface::Override.new(:virtual_path => "spree/shared/_head", 
                     :name => "change-favicon", 
                     :replace_contents => "code[erb-loud]:contains('favicon_link_tag')") do
                     "
                     favicon_link_tag image_path('bramblypress.ico')
                     "
end

Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "display_sidebar", 
                     :replace => "code[erb-loud]:contains('spree/shared/sidebar')") do
"
        <% content_for :sidebar do %>
        <%= render :partial => 'spree/shared/taxonomies'%>
        <% end %>
"
end







