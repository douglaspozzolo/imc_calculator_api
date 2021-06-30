require 'rails_helper'
require 'faker'

RSpec.describe "Imcs", type: :request do
  describe "post - imc" do
    it "create - json" do
      headers = { "ACCEPT" => "application/json"}
      height = Faker::Number.between(from: 0.0, to: 2.5)
      weight = Faker::Number.between(from: 0.0, to: 150.0)
      post "/imc.json", params: { "height": height, "weight": weight }, headers: headers
      expect(response.body).to include_json({ imc: (be weight/height**2 ),
                                              classification: (be_kind_of String),
                                              obesity: (be_kind_of String)
                                            })
    end
  end
end
