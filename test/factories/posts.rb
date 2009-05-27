Factory.define :post do |post|
  post.title "Post Title"
  post.body "Lorem ispsum"
  post.published true
end

Factory.define :published, :parent => :post do |post|
end

Factory.define :draft, :parent => :post do |post|
  post.title "Draft Post Title"
  post.published false
end
