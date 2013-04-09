package uk.ac.shu.webarch.eregister

class Course {
  static mappedBy = [classes_no_of_Regclass_on_course: 'class_course']

  static hasMany = [classes_no_of_Regclass_on_course: RegClass]
	String courseName
	String courseID
	Instructor instructor
    static constraints = {
    }
}

