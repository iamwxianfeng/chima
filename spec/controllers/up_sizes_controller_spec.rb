require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UpSizesController do

  # This should return the minimal set of attributes required to create a valid
  # UpSize. As you add validations to UpSize, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all up_sizes as @up_sizes" do
      up_size = UpSize.create! valid_attributes
      get :index
      assigns(:up_sizes).should eq([up_size])
    end
  end

  describe "GET show" do
    it "assigns the requested up_size as @up_size" do
      up_size = UpSize.create! valid_attributes
      get :show, :id => up_size.id
      assigns(:up_size).should eq(up_size)
    end
  end

  describe "GET new" do
    it "assigns a new up_size as @up_size" do
      get :new
      assigns(:up_size).should be_a_new(UpSize)
    end
  end

  describe "GET edit" do
    it "assigns the requested up_size as @up_size" do
      up_size = UpSize.create! valid_attributes
      get :edit, :id => up_size.id
      assigns(:up_size).should eq(up_size)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UpSize" do
        expect {
          post :create, :up_size => valid_attributes
        }.to change(UpSize, :count).by(1)
      end

      it "assigns a newly created up_size as @up_size" do
        post :create, :up_size => valid_attributes
        assigns(:up_size).should be_a(UpSize)
        assigns(:up_size).should be_persisted
      end

      it "redirects to the created up_size" do
        post :create, :up_size => valid_attributes
        response.should redirect_to(UpSize.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved up_size as @up_size" do
        # Trigger the behavior that occurs when invalid params are submitted
        UpSize.any_instance.stub(:save).and_return(false)
        post :create, :up_size => {}
        assigns(:up_size).should be_a_new(UpSize)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UpSize.any_instance.stub(:save).and_return(false)
        post :create, :up_size => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested up_size" do
        up_size = UpSize.create! valid_attributes
        # Assuming there are no other up_sizes in the database, this
        # specifies that the UpSize created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UpSize.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => up_size.id, :up_size => {'these' => 'params'}
      end

      it "assigns the requested up_size as @up_size" do
        up_size = UpSize.create! valid_attributes
        put :update, :id => up_size.id, :up_size => valid_attributes
        assigns(:up_size).should eq(up_size)
      end

      it "redirects to the up_size" do
        up_size = UpSize.create! valid_attributes
        put :update, :id => up_size.id, :up_size => valid_attributes
        response.should redirect_to(up_size)
      end
    end

    describe "with invalid params" do
      it "assigns the up_size as @up_size" do
        up_size = UpSize.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UpSize.any_instance.stub(:save).and_return(false)
        put :update, :id => up_size.id, :up_size => {}
        assigns(:up_size).should eq(up_size)
      end

      it "re-renders the 'edit' template" do
        up_size = UpSize.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UpSize.any_instance.stub(:save).and_return(false)
        put :update, :id => up_size.id, :up_size => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested up_size" do
      up_size = UpSize.create! valid_attributes
      expect {
        delete :destroy, :id => up_size.id
      }.to change(UpSize, :count).by(-1)
    end

    it "redirects to the up_sizes list" do
      up_size = UpSize.create! valid_attributes
      delete :destroy, :id => up_size.id
      response.should redirect_to(up_sizes_url)
    end
  end

end
