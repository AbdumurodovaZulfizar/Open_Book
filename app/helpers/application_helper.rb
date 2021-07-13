module ApplicationHelper
  def alert_btn
    return render partial: 'layouts/alerts' if flash[:alert]
  end

  def notice_btn
    return render partial: 'layouts/notice' if flash[:notice]
  end
end
