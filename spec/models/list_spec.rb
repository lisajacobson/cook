  describe List do
    it {should belong_to(:user)}
    it {should have_many(:recipes)}
    it {should have_many(:ingredients).through(:recipes)}
  end