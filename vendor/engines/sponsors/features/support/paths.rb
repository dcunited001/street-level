module NavigationHelpers
  module Refinery
    module Sponsors
      def path_to(page_name)
        case page_name
        when /the list of sponsors/
          admin_sponsors_path

         when /the new sponsor form/
          new_admin_sponsor_path
        else
          nil
        end
      end
    end
  end
end
