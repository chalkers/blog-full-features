class Post < ActiveRecord::Base
  named_scope :published, :conditions => {:published => true}
  
  validates_presence_of :title
  validates_presence_of :body
  
  has_many :comments
  
  def self.per_page
    10
  end

  #When to_i gets called the -and-slug will be removed
  def to_param
    "#{self.id}-#{create_slug}"
  end
  
  private 
  def create_slug
    self.title.gsub(/'/,"").gsub(/[ _\"]/, "-").gsub(/[-]+/,"-").downcase.chomp("-")
  end
end
