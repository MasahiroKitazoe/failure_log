class FailuresController < ApplicationController

before_action :authenticate_user!, except: :index

def index
end

def new
  @failure = Failure.new
end

def create
  Failure.create(create_params)
end

private
def create_params
  params.require(:failure).permit(
    :overview,
    :timeline,
    :cause,
    :damage,
    :action,
    :prevention,
    :lesson
    ).merge(user_id: current_user.id)
end
end