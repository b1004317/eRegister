package uk.ac.shu.webarch.eregister

class Student {

	String name
	String studentNumber

	static mappedBy = [classes_has_many_registerentries: 'class_student']

  	static hasMany = [classes_has_many_registerentries: RegisterEntry]

    static constraints = {
    }
}
