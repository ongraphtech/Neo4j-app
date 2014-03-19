require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should include the page title" do
      expect(full_title("Neo4j App")).to match(/Neo4j App/)
    end

    it "should include the base title" do
      expect(full_title("Neo4j App")).to match(/^Neo4j App/)
    end

    it "should not include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end