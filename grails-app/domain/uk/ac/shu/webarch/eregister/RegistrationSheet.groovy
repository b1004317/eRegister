package uk.ac.shu.webarch.eregister

class RegistrationSheet {

	RegClass class_regclass

	String studentName
	String studentSignature
	String	date

	static mappedBy = [classes__many_entries: 'class_registrationsheet']

  	static hasMany = [classes_many_entries: RegisterEntry]

    static constraints = {
    }
}
