class Addimition < ActiveRecord::Base
  # attr_accessible :title, :body
attr_accessible :student_name, :father_name, :class_type, :gender, :dob, :phone, :adress, :photo, :parrent_emailid,
	CLASS_TYPE = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		validates_presence_of :student_name, :message => 'should not be black'
  #  validates :student_name,  : presence => true
		validates_presence_of :father_name, :message => 'Should not be blank'
   # validates :father_name,  : presence => true
		validates_presence_of :class_type
    #validates :class_type,  : presence => true
		#validates_presence_of :gender
    #validates :gender,  : presence => true
		validates_presence_of :dob
    #validates :dob,  : presence => true
		validates_presence_of :phone
    #validates :phone,  : presence => true
    validates_presence_of :adress
   # validates :adress,  : presence => true
   validates_presence_of :parrent_emailid
   # validates :parent_emailid,  : presence => true

    validates_format_of :parrent_emailid,
                      :with => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i , 
                      :message => 'invalid email'
  

  # validates_attachment :photo, content_type: { content_type: ["photo/jpg", "photo/jpeg", "photo/png", "photo/gif"] }
  validates_uniqueness_of :parrent_emailid, :on => :create
  has_attached_file :photo , :styles => 
        { :medium => "300x300>", :thumb => "100x100>" } 
  do_not_validate_attachment_file_type :photo

  def self.search(search)  
    if search  
      where("student_name LIKE ?", "%#{search}%")  
    else  
      scoped  
    end  
  end  


  def activate
     self.status = 1
     self.save
  end

  def deactive
     self.status = 0
     self.save!
  end

end
