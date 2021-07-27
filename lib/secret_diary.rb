class SecretDiary

  attr_accessor :status, :entries
  
  def initialize
    status = "locked"
    @status = status
    entries = []
    @entries = entries
  end
  
  def lock
    @status = "locked"
  end
  
  def unlock
    @status = "unlocked"
  end

  def add_entry(entry)
    if @status == "unlocked"
      @entries << entry 
      entry
    else
      "error: unlock first"
    end
  end

  def get_entries
    if @status == "unlocked"
      @entries
    else
      "error: unlock first"
    end
  end

end
