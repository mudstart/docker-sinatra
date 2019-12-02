# encoding: utf-8
require 'spec_helper'

describe SimpleSpreadsheet do
  describe "Open CSV (.csvt) file read-only mode" do
    before do
      @workbook = SimpleSpreadsheet::Workbook.read(File.join(File.dirname(__FILE__), "fixtures/file.csvt"))
    end
    it "should can open the file" do
      @workbook.should_not be_nil
    end
    it "should use right class" do
      @workbook.class.to_s.should eq("CsvtReader")
    end
    it "should see the right number of sheets" do
      @workbook.sheets.count.should eq(1)
    end
    it "should read strings from first sheets" do
      @workbook.cell(1,1).should eq("String1")
    end
    it "should read integer from first sheets" do
      @workbook.cell(1,2).should eq("1")
    end
    it "should correctly count rows" do
      @workbook.last_row.should eq(1)
    end
    it "should correctly count column" do
      @workbook.last_column.should eq(2)
    end
    it "should parse line by line" do
      @workbook.foreach(@workbook.sheets.first) do |row, index|
        row[0].should eq("String1")
        row[1].should eq("1")
        index.should eq(1)
      end
    end
  end
end
