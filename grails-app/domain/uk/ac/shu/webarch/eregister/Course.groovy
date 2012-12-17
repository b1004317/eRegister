package uk.ac.shu.webarch.eregister

class Course {
  static mappedBy = [classes_no_of_Regclass_on_course: 'course']

  static hasMany = [classes_no_of_Regclass_on_course: RegClass]
	String courseName
	String courseID
	String instructorName
	String instructorID
    static constraints = {
    }
}
