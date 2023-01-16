module ArticlesHelper
  def format_date(datetime)
    datetime.strftime('%B %e, %Y')
  end
end
