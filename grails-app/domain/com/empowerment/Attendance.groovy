package com.empowerment

import grails.validation.Validateable

@Validateable
class Attendance {

	String service
	Date serviceDate
	Long memberNumber
	Long guestNumber
	Long childrenNumber
	Long adultsNumber
    static constraints = {
		
    }
	
	static mapping = {
		cache true
		serviceDate column: 'serviceDate', index: 'servicedate_Idx'
	}
	
	final static List<Attendance> findAll(){
		return Attendance.findAll()
	}
	
	final static List<Attendance> findByService(String service,Date serviceDate){
		def attendance = Attendance.createCriteria().list {
			eq("service", service)
			and { eq ("serviceDate",serviceDate)}
			order("service","asc")
		}
		return attendance
	}
	
}
