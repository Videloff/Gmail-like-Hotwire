class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def create
    @email = Email.create!(object: Faker::Fantasy::Tolkien.poem, body: Faker::Games::WarhammerFantasy.quote)
    respond_to do |format|
      format.html do
        redirect_to emails_path
      end
    end
  end

  def destroy
    @emails = Email.all
    @email = @emails.find_by(id: params[:id])
    @email.destroy

    redirect_to emails_path
  end

end