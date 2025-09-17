class Admin::ForumThreadsController < ApplicationController
  # Minimal auth: sementara dibiarkan terbuka di dev.
  # Untuk prod, tambahkan before_action :require_admin! sesuai mekanisme kamu.

  def index
    @threads = ForumThread
      .includes(:user, :category)
      .order(created_at: :desc)
      .limit(200)
  end

  def show
    @thread = ForumThread.includes(:user, :category).find(params[:id])
  end
end
