#Ładujemy rails helper w każdym spec
require 'rails_helper'

#Określamy co testujemy - klase CategoriesController, w bloku do - end
describe CategoriesController do
  #testujemy metode index, używamy # bo to metoda instancji (. dla klasowych)
  describe '#index' do
    it 'returns 200' do   #wykonujmey konkretny egzemplarz, każdy it to . w testach
      get :index #wchodzimy na akcje index
      expect(response.status).to be 200 #spodziewamy się, że status odpowiedzi będzie wynosił 200
    end
  end

 #testujemy metode insancji new -jw
  describe '#new' do
    it 'returns 200' do
      get :new
      expect(response.status).to be 200
    end
  end

  describe '#create' do
    context 'when params are valid' do
      let(:params) { { category: { name: 'name' } } }

      subject { post :create, params: params }

      it 'returns 302' do
        subject
        expect(response.status).to be 302
      end

      it 'creates a category' do
        expect { subject }.to change { Category.count }.by(1)
      end
    end

    context 'when params are NOT valid' do
      let(:params) { { category: { name: '' } } }

      subject { post :create, params: params}

      it 'returns 302' do
        subject
        expect(response.status).to be 302
      end

      it 'does NOT create category when name is NOT valid' do
        expect { subject }.not_to change { Category.count }
      end
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
