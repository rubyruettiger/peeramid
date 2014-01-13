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

describe ProgressionsController do

  # This should return the minimal set of attributes required to create a valid
  # Progression. As you add validations to Progression, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProgressionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all progressions as @progressions" do
      progression = Progression.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:progressions)).to eq([progression])
    end
  end

  describe "GET show" do
    it "assigns the requested progression as @progression" do
      progression = Progression.create! valid_attributes
      get :show, {:id => progression.to_param}, valid_session
      expect(assigns(:progression)).to eq(progression)
    end
  end

  describe "GET new" do
    it "assigns a new progression as @progression" do
      get :new, {}, valid_session
      expect(assigns(:progression)).to be_a_new(Progression)
    end
  end

  describe "GET edit" do
    it "assigns the requested progression as @progression" do
      progression = Progression.create! valid_attributes
      get :edit, {:id => progression.to_param}, valid_session
      expect(assigns(:progression)).to eq(progression)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Progression" do
        expect {
          post :create, {:progression => valid_attributes}, valid_session
        }.to change(Progression, :count).by(1)
      end


      it "assigns a newly created progression as @progression" do
        post :create, {:progression => valid_attributes}, valid_session
        expect(assigns(:progression)).to be_a(Progression)
        expect(assigns(:progression)).to be_persisted
      end

      it "redirects to the created progression" do
        post :create, {:progression => valid_attributes}, valid_session
        expect(response).to redirect_to(Progression.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved progression as @progression" do
        # Trigger the behavior that occurs when invalid params are submitted
        Progression.any_instance.stub(:save).and_return(false)
        post :create, {:progression => { "name" => "invalid value" }}, valid_session
        expect(assigns(:progression)).to be_a_new(Progression)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Progression.any_instance.stub(:save).and_return(false)
        post :create, {:progression => { "name" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested progression" do
        progression = Progression.create! valid_attributes
        # Assuming there are no other progressions in the database, this
        # specifies that the Progression created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Progression).to receive(:update).with({ "name" => "MyString" })
        put :update, {:id => progression.to_param, :progression => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested progression as @progression" do
        progression = Progression.create! valid_attributes
        put :update, {:id => progression.to_param, :progression => valid_attributes}, valid_session
        expect(assigns(:progression)).to eq(progression)
      end

      it "redirects to the progression" do
        progression = Progression.create! valid_attributes
        put :update, {:id => progression.to_param, :progression => valid_attributes}, valid_session
        expect(response).to redirect_to(progression)
      end
    end

    describe "with invalid params" do
      it "assigns the progression as @progression" do
        progression = Progression.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Progression.any_instance.stub(:save).and_return(false)
        put :update, {:id => progression.to_param, :progression => { "name" => "invalid value" }}, valid_session
        expect(assigns(:progression)).to eq(progression)
      end

      it "re-renders the 'edit' template" do
        progression = Progression.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Progression.any_instance.stub(:save).and_return(false)
        put :update, {:id => progression.to_param, :progression => { "name" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested progression" do
      progression = Progression.create! valid_attributes
      expect {
        delete :destroy, {:id => progression.to_param}, valid_session
      }.to change(Progression, :count).by(-1)
    end

    it "redirects to the progressions list" do
      progression = Progression.create! valid_attributes
      delete :destroy, {:id => progression.to_param}, valid_session
      expect(response).to redirect_to(progressions_url)
    end
  end

end
