require 'rails_helper'

RSpec.describe "Imcs", type: :request do
  describe "post - imc" do
    it "create - json" do
      headers = { "ACCEPT" => "application/json"}
      post "/imc.json", params: { "height": 1.70, "weight": 76 }, headers: headers
      expect(response.body).to include_json({ imc: (be_kind_of Float),
                                              classification: (be_kind_of String),
                                              obesity: (be_kind_of String)
                                            })

    end
  end
end
