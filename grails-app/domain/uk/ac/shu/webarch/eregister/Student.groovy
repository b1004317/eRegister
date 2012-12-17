package uk.ac.shu.webarch.eregister

class Student {

	String Name
	String studentNumber

	static mappedBy = [classes_has_many_registerentries: 'student']

  	static hasMany = [classes_has_many_registerentries: RegisterEntry]

    static constraints = {
    }
}
