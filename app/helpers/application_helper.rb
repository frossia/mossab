module ApplicationHelper

  def getdate
    l Date.today(), :format => :long
  end

end
