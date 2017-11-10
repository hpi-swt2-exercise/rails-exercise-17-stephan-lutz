class Author < ActiveRecord::Base
  validates :last_name, presence: true,
                        length: { minimum: 1}

  def name
    "#{first_name or ''} #{last_name or ''}"
  end

end
