class Author < ActiveRecord::Base
  def name
    "#{first_name or ''} #{last_name or ''}"
  end

end
