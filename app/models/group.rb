class Group < ApplicationRecord
  enum :kind, { close: 0, open: 10}


end
