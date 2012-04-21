Deface::Override.new(:virtual_path => "spree/orders/new", 
                     :name => "taxonomy_for_cart", 
                     :insert_before => "code[erb-loud]:contains('form_for')") do
  
"
  <% content_for :sidebar do %>
  <div data-hook=\"homepage_sidebar_navigation\">
      <%= render :partial => 'spree/shared/taxonomies' %>
  </div>
<% end %>
  "
end
Deface::Override.new(:virtual_path => "spree/orders/edit", 
                     :name => "taxonomy_for_cart_product", 
                     :insert_after => "[data-hook='outside_cart_form']") do
"
  <% content_for :sidebar do %>
  <div data-hook=\"homepage_sidebar_navigation\">
      <%= render :partial => 'spree/shared/taxonomies' %>
  </div>
<% end %>
"
end

Deface::Override.new(:virtual_path => "spree/orders/edit", 
                     :name => "taxonomy_for_cart", 
                     :insert_before => "[data-hook='empty_cart']") do
  
"
  <% content_for :sidebar do %>
  <div data-hook=\"homepage_sidebar_navigation\">
      <%= render :partial => 'spree/shared/taxonomies' %>
  </div>
<% end %>
  "
end