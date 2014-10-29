  describe User do
    it {should have_many(:recipes)}
    it {should have_many(:cuisines)}
    it {should have_many(:lists)}
  end