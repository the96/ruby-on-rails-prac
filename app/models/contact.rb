class Contact < ApplicationRecord
  belongs_to :member
  enum type:{other: 0, twitter: 1, github: 2, soundcloud: 3, pixiv: 4, email: 5, discord: 6, steam: 7}
end
