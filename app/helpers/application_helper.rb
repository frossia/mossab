module ApplicationHelper

  def getdate
    l Date.today(), :format => :long
  end

  def current_controller?(c)
    controller.controller_name == c
  end

end
