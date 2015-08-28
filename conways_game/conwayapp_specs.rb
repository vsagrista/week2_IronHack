require "rspec"
require_relative "./conwayapp.rb"

RSpec.describe Cell do 

  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(1,0)).to eq(4)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(4,0)).to eq(3)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(8,4)).to eq(1)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(8,8)).to eq(1)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(6,8)).to eq(1)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(3,4)).to eq(2)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(1,4)).to eq(2)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(0,0)).to eq(2)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(0,8)).to eq(0)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(8,0)).to eq(2)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(6,1)).to eq(2)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(4,4)).to eq(3)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(2,8)).to eq(1)
    end
  end
  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(8,4)).to eq(1)
    end
  end
end