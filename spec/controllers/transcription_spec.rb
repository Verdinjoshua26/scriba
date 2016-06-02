require 'rails_helper'

describe TranscriptionsController do
  describe "GET 'index'" do
    it "returns http success header" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the transcriptions into @transcriptions" do
        transcript1, transcript2 = Transcription.create!, Transcription.create!
        get :index

        expect(assigns(:transcriptions)).to match_array([transcript1, transcript2])
    end
  end
end