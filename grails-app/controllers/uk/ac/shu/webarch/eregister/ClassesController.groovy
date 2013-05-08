package uk.ac.shu.webarch.eregister

import grails.converters.*


class ClassesController {

  def index() {
def result = [:]
    result.classes = []
    RegClass.findAll().each { cls ->
      result.classes.add( [
                           instructorName:cls.class_instructor.name,
                           couseCode:cls.class_course.courseID,
                           courseName:cls.class_course.courseName] )
    }


    withFormat {
      html result
      xml { render result as XML }
      json { render result as JSON }
    }
  }

}

