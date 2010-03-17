class Contact

  include ActiveModel::Validations

  validates_presence_of :name
  validates_presence_of :subject
  validates_presence_of :content

  validates_format_of :email, :allow_nil => false, :with => /^.+@[^\.].*\.[a-z]{2,}$/ix, :message => "must be a valid email"

  validates_inclusion_of :spam_check, :in => %w( 2 )

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