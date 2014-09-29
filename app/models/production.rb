# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: productions
#
# string :name, :null => false, :limit => 60, :default => "UNKNOWN"
# string :pcode, :limit => 30, :default => "PD8888"
# string :pspec, :limit => 50, :default => "1.6X9"
# string :punit, :limit => 10
# string :psize, :limit => 50  
# string :pimageurl
# integer :pweight
# integer :pvisittime
# text :pdes, :limit => 200
# timestamps
# string:status
# interger amount atlest_amount

class Production < ActiveRecord::Base
  validates_presence_of :name
  
  scope :published, -> { where(status: 'ACTIVE') }
  scope :alarmstore, -> { published.where('amount is NULL or amount < at_lest_amount') }
  scope :recent, order: 'id DESC'

  def active?
    status == 'ACTIVE'
  end

  def active
    self.status = 'ACTIVE'
  end
  
  def inactive
	self.status = 'INACTIVE'
  end
  
end
