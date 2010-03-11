class Contact

  include ActiveModel::Validations

  validates_presence_of :name
  validates_presence_of :content

  validates_format_of :website, :allow_nil => true, :if => Proc.new {|c| not c.website.blank?}, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix, :message => "must be a valid url"
  validates_format_of :email, :allow_nil => false, :with => /^.+@[^\.].*\.[a-z]{2,}$/ix, :message => "must be a valid email"

  validates_inclusion_of :snow, :in => %w( cold )

  def initialize(options={})
    [:id, :name, :email, :website, :snow, :content].each do |field|
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