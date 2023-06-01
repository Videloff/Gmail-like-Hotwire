class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def create
    @email = Email.create!(object: Faker::Fantasy::Tolkien.poem, body: Faker::Games::WarhammerFantasy.quote, already_readed: false, status: "non lu")
    redirect_to emails_path
  end

  def destroy
    @emails = Email.all
    @email = @emails.find_by(id: params[:id])
    @email.destroy

    redirect_to emails_path
  end

  def show
    @emails = Email.all
    @email = @emails.find_by(id: params[:id])
    if @email.already_readed == false
      @email.update(already_readed: true, status: "lu")
    end
  end

end