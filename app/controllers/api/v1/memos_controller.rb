class Api::V1::MemosController < ApplicationController
  def index
    @memos = Memo.order('created_at DESC')
  end
end
