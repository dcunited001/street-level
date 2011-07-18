module PagesHelper
  def format_article_date date
    date.strftime("%B %d, %Y")
  end
end