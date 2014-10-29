describe Cuisine do
    it {should have_and_belong_to_many(:recipes)}
    it {should have_many(:ingredients).through(:recipes)}
  end
