class CatsController < ApplicationController
    def index
        cats = Cat.all
        render json: cats
    end
    def show
        cat = Cat.create(cat_params)
        if cat.valid?
            render json: cat
        end
    end
    def update
        cat = Cat.find(params[:id])
        cat.update(cat_params)
        if cat.valid?
            render json: cat
        render json: cat
        end
    end
    def destroy
        cat = Cat.find(params[:id])
        cat.destroy
        render json: cat
    end

    private
    def cat_params
        params.require(:cat).permit(:name, :age, :enjoys, :image)
    end

end