package com.khm.paging;

import java.util.List;


import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Component
public class PagingDto {
<<<<<<< HEAD
	private int listtotal;		//1. �쟾泥닿�
	private int onepagelimit;	//2. �븳�럹�씠吏��뿉 蹂댁뿬以� 寃뚯떆臾쇱쓽 �닔
	private int pagetotal;		//3. 珥앺럹�씠吏� 怨꾩궛	�쟾泥닿�/ �븳�럹�씠吏��뿉 蹂댁뿬以� 寃뚯떆臾쇱쓽 �닔
	private int bottomlimit;	//4. �븯�떒�뿉 �럹�씠吏� �굹�늻湲� �닔
	private int pstartno;		//5. �럹�씠吏��쓽 �뒪���듃 踰덊샇
	private int current ;		//6. �븯�떒 �쁽�옱踰덊샇
	private int start ;			//7. �븯�떒 �떆�옉
	private int end ;			//8. �븯�떒 �걹
	
	//private List<Object> list; -�꽑�깮�궗�빆

	public PagingDto(int listtotal, int pstartno) {
		super();
		this.listtotal = listtotal;	// �쟾泥닿�
		this.onepagelimit = 10;	// �븳�럹�씠吏��뿉 蹂댁뿬以� 寃뚯떆臾쇱쓽 �닔
=======
	private int listtotal;		//1. 전체글
	private int onepagelimit;	//2. 한페이지에 보여줄 게시물의 수
	private int pagetotal;		//3. 총페이지 계산	전체글/ 한페이지에 보여줄 게시물의 수
	private int bottomlimit;	//4. 하단에 페이지 나누기 수
	private int pstartno;		//5. 페이지의 스타트 번호
	private int current ;		//6. 하단 현재번호
	private int start ;			//7. 하단 시작
	private int end ;			//8. 하단 끝
	
	//private List<Object> list; -선택사항

	public PagingDto(int listtotal, int pstartno) {
		super();
		this.listtotal = listtotal;	// 전체글
		this.onepagelimit = 10;	// 한페이지에 보여줄 게시물의 수
>>>>>>> branch 'HM' of https://github.com/ljs6570/Green_jobs.git
		this.pagetotal = (int)Math.ceil((double)listtotal/onepagelimit);	
		this.bottomlimit = 10;
		this.pstartno = pstartno;
		this.current=(int)Math.ceil((pstartno+1)/(double)onepagelimit);
		this.start = ((int)Math.floor((this.current-1)/(double)bottomlimit))*bottomlimit+1;
		this.end = this.start+this.bottomlimit-1;
		
		if(pagetotal<end) {this.end=pagetotal;}
		
	}	
	
	
}
