require 'rails_helper'

describe CategoriesController do
  describe '#new' do
    it 'returns 200' do
      get :new
      expect(response.status).to be 200
    end
  end
end
