class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only: [:show, :edit, :update,:destroy]
  after_action  :remove_images, only: :update

  def index
    @categories = policy_scope(Category)
  end

  def show
    authorize @category
  end

  def new
    @category = Category.new
    authorize @category
  end

  def edit
    authorize @category
  end

  def create
    @category = Category.new(category_params)
    authorize @category
    if @category.save
      flash[:success] = t('messages.created', model: @category.class.model_name.human)
      redirect_to [:admin, @category]
    else      
      render :new
    end
  end

  def update
    authorize @category
    puts "+++++ ZT params: #{params}"
    if @category.update(category_params)
      flash[:success] = t('messages.updated', model: @category.class.model_name.human)
      redirect_to [:admin, @category]
    else      
      render :edit
    end
  end

  def destroy
    authorize @category
    @category.destroy
    flash[:success] = t('messages.deleted', model: @category.class.model_name.human)
    redirect_to admin_categories_path
  end

  private

    # Uses callbacks to share common setup or constraints between actions
    def set_category
      @category = Category.find(params[:id])
    end

    # Removes images, selected during Editing
    def remove_images
      @category.cover_image.purge if category_params[:remove_cover_image] == '1'
      image_to_remove_ids = params['image_to_remove_ids']
      if image_to_remove_ids.present?
        image_to_remove_ids.each do |image_to_remove_id|
          @category.images.find(image_to_remove_id).purge
        end
      end
    end

    # Only allows a trusted parameter 'white list' through
    def category_params
      params.require(:category).permit(:name, :title, :abstract, :position, :status, :url, :seo_title, :seo_keywords, :seo_description, :content, :cover_image, :remove_cover_image)
    end
end
