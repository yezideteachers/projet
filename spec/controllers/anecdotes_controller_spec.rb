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

describe AnecdotesController do

  # This should return the minimal set of attributes required to create a valid
  # Anecdote. As you add validations to Anecdote, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "sujet" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AnecdotesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all anecdotes as @anecdotes" do
      anecdote = Anecdote.create! valid_attributes
      get :index, {}, valid_session
      assigns(:anecdotes).should eq([anecdote])
    end
  end

  describe "GET show" do
    it "assigns the requested anecdote as @anecdote" do
      anecdote = Anecdote.create! valid_attributes
      get :show, {:id => anecdote.to_param}, valid_session
      assigns(:anecdote).should eq(anecdote)
    end
  end

  describe "GET new" do
    it "assigns a new anecdote as @anecdote" do
      get :new, {}, valid_session
      assigns(:anecdote).should be_a_new(Anecdote)
    end
  end

  describe "GET edit" do
    it "assigns the requested anecdote as @anecdote" do
      anecdote = Anecdote.create! valid_attributes
      get :edit, {:id => anecdote.to_param}, valid_session
      assigns(:anecdote).should eq(anecdote)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Anecdote" do
        expect {
          post :create, {:anecdote => valid_attributes}, valid_session
        }.to change(Anecdote, :count).by(1)
      end

      it "assigns a newly created anecdote as @anecdote" do
        post :create, {:anecdote => valid_attributes}, valid_session
        assigns(:anecdote).should be_a(Anecdote)
        assigns(:anecdote).should be_persisted
      end

      it "redirects to the created anecdote" do
        post :create, {:anecdote => valid_attributes}, valid_session
        response.should redirect_to(Anecdote.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved anecdote as @anecdote" do
        # Trigger the behavior that occurs when invalid params are submitted
        Anecdote.any_instance.stub(:save).and_return(false)
        post :create, {:anecdote => { "sujet" => "invalid value" }}, valid_session
        assigns(:anecdote).should be_a_new(Anecdote)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Anecdote.any_instance.stub(:save).and_return(false)
        post :create, {:anecdote => { "sujet" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested anecdote" do
        anecdote = Anecdote.create! valid_attributes
        # Assuming there are no other anecdotes in the database, this
        # specifies that the Anecdote created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Anecdote.any_instance.should_receive(:update).with({ "sujet" => "MyString" })
        put :update, {:id => anecdote.to_param, :anecdote => { "sujet" => "MyString" }}, valid_session
      end

      it "assigns the requested anecdote as @anecdote" do
        anecdote = Anecdote.create! valid_attributes
        put :update, {:id => anecdote.to_param, :anecdote => valid_attributes}, valid_session
        assigns(:anecdote).should eq(anecdote)
      end

      it "redirects to the anecdote" do
        anecdote = Anecdote.create! valid_attributes
        put :update, {:id => anecdote.to_param, :anecdote => valid_attributes}, valid_session
        response.should redirect_to(anecdote)
      end
    end

    describe "with invalid params" do
      it "assigns the anecdote as @anecdote" do
        anecdote = Anecdote.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Anecdote.any_instance.stub(:save).and_return(false)
        put :update, {:id => anecdote.to_param, :anecdote => { "sujet" => "invalid value" }}, valid_session
        assigns(:anecdote).should eq(anecdote)
      end

      it "re-renders the 'edit' template" do
        anecdote = Anecdote.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Anecdote.any_instance.stub(:save).and_return(false)
        put :update, {:id => anecdote.to_param, :anecdote => { "sujet" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested anecdote" do
      anecdote = Anecdote.create! valid_attributes
      expect {
        delete :destroy, {:id => anecdote.to_param}, valid_session
      }.to change(Anecdote, :count).by(-1)
    end

    it "redirects to the anecdotes list" do
      anecdote = Anecdote.create! valid_attributes
      delete :destroy, {:id => anecdote.to_param}, valid_session
      response.should redirect_to(anecdotes_url)
    end
  end

end
