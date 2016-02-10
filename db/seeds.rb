
def photo(file_name)
  File.new("spec/fixtures/#{file_name}")
end

GarbagePailKid.create(name: 'Fryin Ryan', photo: photo('FryinRyan.jpg'))
GarbagePailKid.create(name: 'Shorned Sean', photo: photo('ShornedSean.png'))
GarbagePailKid.create(name: 'Potty Scotty', photo: photo('PottyScotty.jpg'))
GarbagePailKid.create(name: 'Guillo Tina', photo: photo('GuilloTina.jpg'))
GarbagePailKid.create(name: 'Junk Food John', photo: photo('JunkFoodJohn.jpg'))
GarbagePailKid.create(name: 'Bony Tony', photo: photo('BonyTony.jpeg'))
GarbagePailKid.create(name: 'Cosplay Cody', photo: photo('CosplayCody.jpg'))
GarbagePailKid.create(name: 'Adam Bomb', photo: photo('AdamBomb.jpg'))
GarbagePailKid.create(name: 'Basking Robin', photo: photo('BaskingRobin.jpg'))
GarbagePailKid.create(name: 'Laundry Matt', photo: photo('LaundryMatt.jpg'))
GarbagePailKid.create(name: 'Comi Con Ron', photo: photo('ComiConRon.jpg'))
GarbagePailKid.create(name: 'Harry Potty', photo: photo('LarryLoMein.jpg'))
