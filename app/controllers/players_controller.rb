class PlayersController < ApplicationController
  def index
    @players = Player.select { |player| player.user == current_user }
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @new_player = Player.new
  end

  def create
    @new_player = Player.create(name: params[:name],
                                description: params[:description],
                                pv: params[:pvmax],
                                pvmax: params[:pvmax],
                                force: params[:force],
                                dexterite: params[:dexterite],
                                intelligence: params[:intelligence],
                                sagesse: params[:sagesse],
                                charisme: params[:charisme],
                                race: params[:race],
                                classe: params[:classe],
                                user: current_user)
    if @new_player.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @edit_player = Player.find(params[:id])
  end

  def update
    @edit_player = Player.find(params[:id])
    post_params =
      params.permit(
        :name,
        :race,
        :classe,
        :pv,
        :pvmax,
        :description,
        :force,
        :dexterite,
        :sagesse,
        :intelligence,
        :charisme,
        :bourse,
        :competences,
        :inventaire,
        :defense,
        :niveau
      )
    @edit_player.update(post_params)
    redirect_to user_player_path(current_user.id, @edit_player.id)
  end

  def destroy
    @destroy_player = Player.find(params[:id])
    @destroy_player.destroy
    redirect_to root_path
  end
end
