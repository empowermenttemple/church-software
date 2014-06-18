package com.empowerment

class Pledge {

	String event
	Date eventDate
	Date dueDate
	Date dateCreated
	Date dateModified
	String createdBy
    static constraints = {
		dateModified nullable:true;
    }
}
