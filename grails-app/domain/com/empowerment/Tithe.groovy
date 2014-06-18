package com.empowerment

class Tithe {

	Long titheID
	Member member
    static constraints = {
		member unique: true
    }
	static mapping = {
		cache true
	}
}
