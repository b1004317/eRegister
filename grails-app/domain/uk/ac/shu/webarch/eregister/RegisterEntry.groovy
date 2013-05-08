package uk.ac.shu.webarch.eregister

class RegisterEntry {
	String studentID
	String studentName
	String courseID
	Date ts = new Date()

	RegistrationSheet class_registrationsheet
	Student class_student

    static constraints = {
    }
}

