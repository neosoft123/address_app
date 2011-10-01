class HomeController < ApplicationController
  def index
    if(params[:search].present?)
     @search_result = User.paginate :page => params[:page], :conditions => ['name LIKE ? OR email LIKE ?', "%" + params[:search] + "%", "%" + params[:search] + "%"]
    else
    @search_result = nil
    end
  end

end
