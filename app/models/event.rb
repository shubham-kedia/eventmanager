class Event < ActiveRecord::Base
  has_and_belongs_to_many :users

  def check_date
    if Time.now.to_i>self.startfrom.to_i
      return true
    else
      return false
    end
  end

  def attend(user)
    if self.check_date()
      return "passed"
    else
      if user.events << self
        return "success"
      else
        return "failed"
      end
    end
  end

  def unattend(user)
    if self.check_date()
      return "passed"
    else
      if user.events.delete(self)
        return "success"
      else
        return "failed"
      end
    end
  end


end
