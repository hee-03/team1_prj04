package web.com.prj04.prj04_mvc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_Service {
	
	@Autowired
	private AreaCodeParser areaCode2Parser;
	
	@Autowired
	private ContentParser areaBasedList2Parser;
	
	
	public String findAreaCodeByName(String regionName) {
		// 지역명으로 지역코드 찾기 XML->java 객체 변환단계
	   // areaCode1.xml 파일을 파싱해서 <item> 하나당 <Area> 객체로 만든 리스트
	   // Area DTO에는 code, name만 있음
		List<Area> areaList = areaCode2Parser.parse();
		
		// 이름 같은 경우 먼저 수행
		//areaCode2에 있는 지역 목록을 하나씩 검사
		for(Area area : areaList) {
			if(area.getName().equals(regionName)) { //xml name값과 클릭한 regionName을 비교
				System.out.println("areaCode 직접매칭 성공 = "+area.getCode());
				return area.getCode(); //일치하면 지역코드로 변환
			}
		}
		
		// 이름이 다를경우
		String normalizedName = regionName
	            .replace("특별자치도", "")
	            .replace("특별시", "")
	            .replace("광역시", "")
	            .replace("자치시", "")
	            .replace("도", "")
	            .trim();

	    for (Area area : areaList) {
	        if (area.getName().equals(normalizedName)) {
	        	System.out.println("areaCode 정규화 매칭 성공 = "+area.getCode());
	            return area.getCode();
	        }
	    }
	    System.out.println("areaCode 매칭 실패 regionName=" + regionName);
		return null; // 대응하는 지역코드를 못찾았을 경우 빈결과 처리
	}	
	// 지역코드로 여행데이터 찾기
	// areaCond2에서 가져온 지역코드<code>로 <areaCode>와 동일한 데이터 반환
	public List<Content> findContentsByAreaCode(String areaCode){
		// areaBasedList2에서 지역 코드로 콘텐츠 목록 찾기
		List<Content> contentList = areaBasedList2Parser.parse();//areaBasedList2.xml파싱
															// <item>하나 == Content객체
		System.out.println("전체 content 개수= "+contentList.size());
		
		List<Content> result = new ArrayList<>(); //조건에 맞는 데이터 결과 리스트
		
		for(Content c : contentList) { // areaBasedList2.xml 데이터 전체 순회
			System.out.println("비교중인 areaCode"+c.getAreacode());
			if(areaCode.equals(c.getAreacode())) { //<code>와 <areaCode>비교(join 조건)
				result.add(c); //같은 지역이면 결과에 추가
			}
		}
		System.out.println("매칭 결과개수 = "+result.size());
		return result; // 해당 지역의 가져온 여행 데이터 목록 반환
	}
	
	public List<Content> getContentsByAreaCode(String code) {

	    List<Content> all = areaBasedList2Parser.parse();
	    List<Content> result = new ArrayList<>();

	    for (Content c : all) {
	        if (code.equals(c.getAreacode())) {
	            result.add(c);
	        }
	    }

	    return result;
	}
	
	public List<Content> getContentsByRegionName(String regionName){ //이 메서드로 xml파일 2개를 연결
		
		System.out.println("service진입 regionName= "+regionName);
		
		String areaCode = findAreaCodeByName(regionName); //areaCode2 조회 "서울" -> 1
			
		if(areaCode == null) {
			System.out.println("areaCode가 null이므로 빈 리스트 반환");
			return Collections.emptyList(); //잘못된 지역명이면 빈리스트 반환(안전)
		}
		
		// 지역코드로 여행지 목록 반환
		List<Content> result = findContentsByAreaCode(areaCode);
		
		System.out.println("최종 content개수 = "+result.size());
		return result;//areaBasedList 결과 반환
	}
	
}
