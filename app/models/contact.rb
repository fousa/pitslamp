class Contact

  include ActiveModel::Validations

  validates :name,       :presence  => true
  validates :subject,    :presence  => true
  validates :phone,      :presence  => true
  validates :content,    :presence  => true
  
  validates :email,      :presence  => true, :format    => { :with => /^.+@[^\.].*\.[a-z]{2,}$/ix }, :if => Proc.new { |c| not c.email.blank? }
  validates :spam_check, :inclusion => { :in   => %w( warm ) }

  def initialize(options={})
    [:id, :name, :email, :phone, :subject, :spam_check, :content].each do |field|
      class << self
        self
      end.module_eval{attr_accessor field}
      self.send("#{field}=", options[field.to_sym])
    end
  end
  
  def to_key
    new_record? ? nil : [ self.send(self.class.primary_key) ]
  end

  def new_record?
    true
  end

end