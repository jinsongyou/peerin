class Plan < ActiveRecord::Base
  belongs_to :production
 

 
  def get_seqnum
    time = Time.new
	seqnum = time.strftime("%Y%m%d%H%M%S")
	plan_rand = get_3random
	seqnum += plan_rand	
	return seqnum
  end
  
  def get_3random
    newrand = ""
	1.upto(3){|i| newrand << rand(10).to_s}
	return newrand
  end
  
end
