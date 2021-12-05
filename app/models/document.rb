class Document < ApplicationRecord
  before_save :save_headers

  has_one_attached :csv_file

  private

  def save_headers
    self.csv_headers = MyObject.new(csv_file)
  end
end
