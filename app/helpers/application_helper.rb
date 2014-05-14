module ApplicationHelper

  def getdate
    l Date.today(), :format => :long
  end

  def current_controller?(c)
    controller.controller_name == c
  end

  def title(page_title)
    content_for :title, page_title.to_s
  end

end
