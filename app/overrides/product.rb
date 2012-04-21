Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "taxonomy", 
                     :insert_before => "[data-hook='product_show']") do
  
"
  <% content_for :sidebar do %>
  <div data-hook=\"homepage_sidebar_navigation\">
      <%= render :partial => 'spree/shared/taxonomies' %>
  </div>
<% end %>
  "
end

Deface::Override.new(:virtual_path => "spree/products/index", 
                     :name => "taxonomy_something", 
                     :replace_contents => "[data-hook='homepage_sidebar_navigation']") do
"
      <%= render :partial => 'spree/shared/taxonomies' %>
"
end

Deface::Override.new(:virtual_path => "spree/taxons/show", 
                     :name => "taxonomy_navigation", 
                     :replace_contents => "[data-hook='taxon_sidebar_navigation']") do
"
      <%= render :partial => 'spree/shared/taxonomies' %>
"
end
  
  


Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "properties", 
                     :remove => "[data-hook='product_properties']")

Deface::Override.new(:virtual_path => "spree/products/_cart_form", 
                     :name => "remove_variants_title", 
                     :remove => ".product-section-title")

