class LendingHistoriesController < ApplicationController
  def index
    @lending_histories = LendingHistory.all
    render json: @lending_histories
  end

  def show
    @lending_history = LendingHistory.find(params[:id])
    render json: @lending_history
  end

  def create
    @lending_history = LendingHistory.new(lending_history_params)
    if @lending_history.save
      render json: @lending_history
    else
      render json: @lending_history.errors
  end

  def update
    @lending_history = LendingHistory.find(params[:id])
    if @lending_history.update(lending_history_params)
      render json: @lending_history
    else
      render json: @lending_history.errors
    end
  end

  def destroy
    @lending_history = LendingHistory.find(params[:id])
    @lending_history.destroy
  end
end

  private
  def lending_history_params
    params.require(:lending_history).permit(:student_id, :book_id, :lending_date, :return_date)
  end
