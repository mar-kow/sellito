require 'rails_helper'

describe CategoriesController do
  describe '#index' do
    it 'returns 200' do
      get :index
      expect(response.status).to be 200
    end
  end

  describe '#new' do
    it 'returns 200' do
      get :new
      expect(response.status).to be 200
    end
  end

  describe '#show' do
    let(:category) { Category.create(name: 'test') }

    it 'returns 200' do
      get :show, params: { id: category.id }
      expect(response.status).to be 200
    end
  end

end
