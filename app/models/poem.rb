class Poem < ActiveRecord::Base
  validates :noun, presence:true, length: {minimum:3, maximum:10}
  validates :adverb, presence:true, length: {minimum:3, maximum:50}
  validates :pluralnoun, presence:true, length: {minimum:3, maximum:50}
  validates :verb, presence:true, length: {minimum:3, maximum:50}
  validates :adjective, presence:true, length: {minimum:3, maximum:50}
  validates :plant, presence:true, length: {minimum:3, maximum:50}
end
