class MemoForm
  include ActiveModel::Modle 
  
  attr_accessor:taxt, :genre
  validates :text, presence:true
  validates :genre ,presence:true

  def save
    Memo.create(text: text)
    Genre.create(genre: genre)
  end
    
  end