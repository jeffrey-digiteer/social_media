class Post < ApplicationRecord
  include AuditLoggable
  include Filterable
  belongs_to :user

  validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 255 }
  validates :content, presence: true, uniqueness: true, length: { minimum: 5, maximum: 1500 }

  scope :for_datatables, -> () {
    select("p.id, p.name, p.content, p.publish_date, p.featured, p.active, p.user_id, u.email")
    .from("posts p JOIN users u ON p.user_id = u.id")
  }

  scope :filter_by_name, ->(name) { where("name ILIKE ?", "%#{name}%") }
  scope :filter_order_by, ->(order_by) { order(order_by) }
end
