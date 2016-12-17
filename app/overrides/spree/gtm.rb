Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "gtm_head",
                     :insert_bottom => "[data-hook='inside_head']",
                     :partial => "spree/gtm/google_tag_manager_head",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "gtm_body",
                     :insert_bottom => "[data-hook='body']",
                     :partial => "spree/gtm/google_tag_manager_body",
                     :disabled => false)
