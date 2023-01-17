class PagesController < ApplicationController
    before_action :set_page, only: [ :show, :edit, :update, :destroy ] # except: [ :index, :new, :create ]
    def index
        @pages = Page.all
    end

    def show
        # @page = Page.find(params[:id])
        # set_page
        # after Rails 5.0 use render plain: instead of render text:
        # render plain: @page.title
    end

    def new
        @page = Page.new
    end

    def create
       @page = Page.new(page_params)
       @page.save
       redirect_to @page
        # after Rails 5.0 use render plain: instead of render text:
        # render plain: params.to_json
    end

    def edit
        # @page = Page.find(params[:id])
        # set_page
    end

    def update
        @page.update(page_params)
        redirect_to @page
    end
    def destroy
        # @page = Page.find(params[:id])
        # set_page
        @page.destroy
        redirect_to pages_path
    end

    private

        def page_params
            params.require(:page).permit(:title, :body, :slug)
        end

        def set_page
            @page = Page.find(params[:id])
        end
end
