//
//  Course.swift
//  NavigateWithMVC
//
//  Created by student on 16/4/16.
//  Copyright © 2016 ISS-SE24-MWAD. All rights reserved.
//

import Foundation

class Course {
    var courseId:String
    var courseDesc : String
    var lecturer:String
    static let courses = NSMutableArray()
    
    init (id: String, desc :String, lecturer:String){
        courseId = id
        courseDesc = desc
        self.lecturer = lecturer
    }
    
    class func getExistingCourses() -> NSMutableArray {
        return courses
    }
    
    class func insertCourses(course: Course, index:Int) {
        courses.insertObject(course, atIndex: index)
    }
    
    class func deleteCourse(index:Int){
        courses.removeObjectAtIndex(index)
    }
    
    class func updateCourse(index:Int, course:Course){
        courses.replaceObjectAtIndex(index, withObject: course)
    }
    
}
