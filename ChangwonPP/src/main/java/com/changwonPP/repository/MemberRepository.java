package com.changwonPP.repository;

import java.util.List;
import com.changwonPP.domain.Member;

public interface MemberRepository {
	List<Member> getAllMemberList();
	void setNewMember(Member member);
}
