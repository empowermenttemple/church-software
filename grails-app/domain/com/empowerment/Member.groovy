package com.empowerment

import java.util.Date;


class Member {

	String firstname
	String lastname
	String email
	String phone
	String gender
    String agegroup
    String address
    String address1
    String city
    String state
    String zip
        
    static constraints= {
		email email: true
		phone phoneUS: true
		address1 nullable: true
    }
	@Override
	String toString(){
		return "$firstname $lastname"
	}
	static mapping = {
		table 'members'
		cache true
	}
}
