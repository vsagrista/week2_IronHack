require "rspec"
require_relative "./conwayapp.rb"

RSpec.describe Cell do 

  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(1,0)).to eq(4)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(4,0)).to eq(3)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(8,4)).to eq(1)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(8,8)).to eq(1)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(6,8)).to eq(1)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(3,4)).to eq(2)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(1,4)).to eq(2)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(0,0)).to eq(2)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(0,8)).to eq(0)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(8,0)).to eq(2)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(6,1)).to eq(2)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(4,4)).to eq(3)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(2,8)).to eq(1)
    end
  end
  describe '#check_neighbors' do
    it "Checks neighboring cells and returns adding adjacent cells. Cells with value 1 are alive and 0 dead" do
      cell1 = Cell.new
      expect(cell1.send_to_neighbors(8,4)).to eq(1)
    end
  end
end