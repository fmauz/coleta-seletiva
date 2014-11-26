class Admin::NewslettersController < Admin::AdminController
  respond_to :html, :xls

  # GET /newsletters
  # GET /newsletters.json
  def index
    @newsletters = Newsletter.unscoped.paginate per_page: 20, page: params[:page]
    respond_with( @newsletters )
  end

  # DELETE /newsletters/1
  # DELETE /newsletters/1.json
  def destroy
    @newsletter = Newsletter.find( params[:id] )
    @newsletter.destroy
    redirect_to admin_newsletters_path
  end
end
