class Contact

  include ActiveModel::Validations

  validates :name,       :presence  => true
  validates :subject,    :presence  => true
  validates :content,    :presence  => true
  
  validates :email,      :presence  => true, :format    => { :with => /^.+@[^\.].*\.[a-z]{2,}$/ix }, :if => Proc.new { |c| not c.email.blank? }
  validates :spam_check, :inclusion => { :in   => %w( warm ) }

  def initialize(options={})
    [:id, :name, :email, :subject, :spam_check, :content].each do |field|
      class << self
        self
      end.module_eval{attr_accessor field}
      self.send("#{field}=", options[field.to_sym])
    end
  end

  def new_record?
    true
  end

end