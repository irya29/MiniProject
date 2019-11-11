package com.miniproject;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	private MemberRepository repo;
	
	public List<Member> listAll() {
		return repo.findAll();
	}
	
	public void save(Member member) {
		repo.save(member);
	}
	
	public Member get(long memberId) {
		return repo.findById(memberId).get();
	}
	
	public void delete(long memberId) {
		repo.deleteById(memberId);
	}
}
