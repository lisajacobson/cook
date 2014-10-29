 describe Recipe do 
    it {should belong_to(:user)}
    it {should belong_to(:list)}
    it {should have_and_belong_to_many(:cuisines)}
    it {should have_many(:ingredients)}
  end