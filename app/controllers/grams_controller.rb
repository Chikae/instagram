class GramsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_gram, only: [:edit, :update, :destroy]

  def index
    @grams = Gram.all
  end

  def new
    if params[:back]
      @gram = Gram.new(grams_params)
    else
      @gram = Gram.new
    end
  end

  def create
    @gram = Gram.new(grams_params)
    @gram.user_id = current_user.id
    if @gram.save
      redirect_to grams_path, notice: "投稿しました"
      NoticeMailer.sendmail_gram(@gram).deliver
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @gram.update(grams_params)
    redirect_to grams_path, notice:"編集しました"
  end

  def destroy
    @gram.destroy
    redirect_to grams_path, notice:"削除しました"
  end

  def confirm
    @gram = Gram.new(grams_params)
    render :new if @gram.invalid?
  end

  private
      def grams_params
        params.require(:gram).permit(:title, :content)
      end

      def set_gram
        @gram =Gram.find(params[:id])
      end
end
