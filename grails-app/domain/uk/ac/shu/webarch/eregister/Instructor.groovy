package uk.ac.shu.webarch.eregister

class Instructor {  

  static mappedBy = [classes_taught_by_this_instructor: 'instructor']

  static hasMany = [classes_taught_by_this_instructor: RegClass]

	String name
	String staffNumber
    static constraints = {
    }
}


