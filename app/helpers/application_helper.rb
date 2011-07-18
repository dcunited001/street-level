module ApplicationHelper
  def active_nav(page_name, link_name)
    link_reg = Regexp.new(link_name, Regexp::IGNORECASE)
    ((page_name == '' and link_name == 'home') or page_name =~ link_reg) ? 'active' : ''
  end
end
