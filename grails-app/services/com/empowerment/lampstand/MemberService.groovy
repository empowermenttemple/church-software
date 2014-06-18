package com.empowerment.lampstand
import com.empowerment.Member
import com.empowerment.MemberCommand


class MemberService {

    def saveMember(MemberCommand cmd) {
		
		def memberInstance = new Member(firstname:cmd.firstname,lastname:cmd.lastname,gender:cmd.gender,email:cmd.email,phone:cmd.phone,agegroup:cmd.agegroup,city:cmd.city,state:cmd.state,zip:cmd.zip,
								address:cmd.address, address1:cmd.address1,dateCreated: cmd.dateCreated,dateModified: cmd.dateModified,createdBy:cmd.createdBy)

        memberInstance.save(flush: true,failOnError: true)
		return memberInstance
    }

    def updateMember(Member memberInstance,MemberCommand cmd){
       memberInstance.properties['fullname','gender','email','agegroup','city','state','zip','phone','address','address1','dateCreated','dateModified','createdBy'] = cmd.properties
                memberInstance.save(flush:true)
		return memberInstance
    }

	def searchFirstName(String name){
		def findMember = Member.findAllByFirstname(name);
		if (!findMember){
			findMember = searchLastName(name)
		}
		return findMember
	}
	def searchLastName(String name){
		def findMember = Member.findAllByLastname(name);
		if (!findMember){
			findMember = null;
		}
		return findMember
	}
	def searchByEmail(String email){
		def findMember = Member.findAllByEmail(email)
		if(!findMember){
			findMember = null;
		}
		return findMember
	}
	def searchPhone(MemberCommand cmd){
		def memberInstance = Member.findByPhone(cmd.phone)
		return memberInstance
	}
	def searchEmail(MemberCommand cmd){
		def memberInstance = Member.findByEmail(cmd.email)
		return memberInstance
	}
	def searchName(MemberCommand cmd){
		def memberInstance = Member.findByFirstnameAndLastname(cmd.firstname,cmd.lastname)
		/*def memberInstance = Member.createCriteria().list {
						eq('firstname',cmd.firstname,ignoreCase: true)
		}*/
		println memberInstance
		return memberInstance
	} 
      
    def deleteMember(Member memberInstance){
        
    }
}
