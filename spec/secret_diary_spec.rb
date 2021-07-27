require_relative "../lib/secret_diary.rb"

describe SecretDiary do
  it "locks diary" do 
  expect(subject.lock).to eq "locked" 
  end

  it "unlocks diary" do
    expect(subject.unlock).to eq "unlocked"
  end

  it "is initially locked" do
  expect(subject.status).to eq "locked"
  end

  it "adds an entry when unlocked" do
    subject.unlock
    expect(subject.add_entry("primero")).to eq "primero"
  end

  it "raises an error if entry added while locked" do
    expect(subject.add_entry("hello")).to eq "error: unlock first"
    
  end

  it "gets your entries when unlocked" do
    subject.unlock
    subject.add_entry("an entry")
    expect(subject.get_entries).to eq ["an entry"]
  end

  it "raises an error if get_entries tried while locked" do
    expect(subject.get_entries).to eq "error: unlock first"
  end
  

end
