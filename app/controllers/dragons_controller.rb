class DragonsController < ApplicationController
  def dragons_all_action
    @dragons = Dragon.all
    render 'dragons_all_page.html.erb'
  end
end
