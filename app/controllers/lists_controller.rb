class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end

  def create
    # 1.データを受け取り新規登録するためのインスタンス作成
    list = List.new(list_params)
    # 2.データをデータベースに保存するためのsaveメソッド実行
    list.save
    # 3.リダイレクト
    redirect_to '/top'
  end

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
