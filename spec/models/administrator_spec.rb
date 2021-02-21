require 'rails_helper'

RSpec.describe Administrator, type: :model do
  describe "#password=" do
    example "文字列を与えると、hashed_passwordは長さ60の文字列になる" do 
      member = StaffMember.new
      member.password = "hogehoge"
      expect(member.hashed_password.length).to eq(60)   
    end

    example "nilを与えると、hashed_passwordはnilになる" do
      member2 = StaffMember.new
      member2.hashed_password = "hofehofe"
      member2.password = nil 
      expect(member2.hashed_password).to be_nil  
    end
    
  end
  
end
