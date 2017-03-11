class FailuresController < ApplicationController

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
    )
end
end

# devise作成後にcreate_paramsの最後に追加する
# .merge(user_id: current_user.id)