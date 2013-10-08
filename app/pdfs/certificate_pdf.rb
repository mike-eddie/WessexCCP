class CertificatePdf < Prawn::Document
	
	def initialize(attendance)
		super(skip_page_creation: true)

		start_new_page(:template => "#{Rails.root}/app/pdfs/certificate_template.pdf")

		@attendance = attendance

		move_down(500)

		text "This is to certify that", size: 20, :align => :center
		move_down(20)
    	text "#{@attendance.student.fname}" + " " + "#{@attendance.student.lname}", size: 36, :align => :center
    	move_down(20)
    	text "Attended the " "#{@attendance.teaching_session.title}" + " " + "#{@attendance.teaching_session.teaching_format.format}", size: 20, :align => :center
    	move_down(20)
    	text "On " "#{@attendance.teaching_session.date}", size: 20, :align => :center


	end
end