class Npa < ActiveRecord::Base

  mount_uploader :npa_attach, NpaUploader

  attr_accessible :npa_attach, :description, :created_at


  def self.get_npas_of_month(year, month)
    # m = Date::MONTHNAMES[month]
    if month < 10
      month = '0' + month.to_s
    end
    Npa.where("strftime('%Y', created_at) = ? AND strftime('%m', created_at) like ?", year, month)
  end

  def self.get_unic_years
    p = []
    Npa.all.each do |npa|
      p << npa.created_at.year
    end
    p.uniq
  end

  def self.get_unic_month(year)
    p = []

    npas = Npa.where("strftime('%Y', created_at) = ?", year).order(:created_at)

    npas.each do |npa|
      p << npa.created_at.month
    end
    p.uniq
  end


end
