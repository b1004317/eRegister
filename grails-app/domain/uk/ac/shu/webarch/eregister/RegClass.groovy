package uk.ac.shu.webarch.eregister

class RegClass {
	String name
	Instructor class_instructor
	Course class_course

	static mappedBy = [classes_registrationsheets: 'regclass']

  	static hasMany = [classes_registrationsheets: RegistrationSheet]
	

    static constraints = {
    }
}
