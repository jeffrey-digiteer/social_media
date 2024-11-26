class Admin::AudittrailsController < AdminController
    before_action :set_post, only: %i[ show ]
  
    # GET /posts or /posts.json
    def index
      @audittrails = Audittrail.all
    end
  
    # GET /posts/1 or /posts/1.json
    def show
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params.expect(:id))
      end

  end
  