module ApplicationHelper
  def app_title
    session[:course_name] || 'Golf Scorecard'
  end

  def match_path
    session[:match_path] || '/'
  end
end
