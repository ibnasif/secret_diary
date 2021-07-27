class SecretDiary

  attr_accessor :entries
  
  def initialize
    @status = Status.new
    entries = []
    @entries = entries
  end

 def locked?
  @status.locked?
 end

 def unlock
  @status.unlock
 end

 def lock
  @status.lock
 end


  def add_entry(entry)
    if locked?
      "error: unlock first"
    else
      @entries << entry 
      entry
    end
  end

  def get_entries
    if locked? 
      "error: unlock first"
    else
      @entries
    end
  end

end


class Status 
  def initialize
    @locked = true
  end
  
  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def locked?
    @locked
  end

end
