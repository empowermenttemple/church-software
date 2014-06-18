package com.empowerment

class Events {

	/**Name of Church Event or Service*/
	String name
	
	@Override
	String toString(){
		"$name"
	}
    static constraints = {
		name unique: true
    }
}
