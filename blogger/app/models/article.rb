class Article < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    tags.join(", ")
  end

  def tag_list #string
    #puts self.tags.collect == Array.new(["tag1", "tag2", ...])
    self.tags.collect do |tag|
      tag.name
    end.join(", ") #joins tag names to @article.tag_list string, join calls #to_s on every element in tags.collect array
  end

=begin
  def tag_list
    self.tags.collect do |tag|
      tag.name
      self.join(", ")
    end
  end
=end

  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect { |s| s.strip.downcase }.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end
end
