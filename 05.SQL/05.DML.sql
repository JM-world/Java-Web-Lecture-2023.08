/*
 * 2. 데이터 조작 언어(DML: Data Manipulation Language)
 */
 
/*
 * 2.1 삽입(Insert)
 *
 * INSERT INTO 테이블명[(필드명1, 필드명2, ...)]      *[]는 있어도 되고 없어도 됨
 *    VALUES (값1, 값2, ...);
 *
 */
 
-- 북 테이블에 새로운 레코드 추가
insert into book values(11, '스포츠 의학', '한솔의학서적', 90000);
select * from book;
desc book;

-- 스포츠 심리, 24000원, 출판사 모름
insert into book(bookid, bookname, price)
    values(12, '스포츠 심리', 24000);
    
-- 박세리 고객이 스포츠 의학을 오늘 구매한 사실을 Orders 테이블에 기록
insert into orders values(11, 90000, default, 5, 11);

-- 박찬호 고객이 스포츠 심리를 오늘 구매한 사실을 Orders 테이블에 기록
insert into orders(orderid, saleprice, custid, bookid) -- 시간대 입력 없지만
    values(12, 24000, 1, 12);   -- 실행 하면 오늘 날짜가 들어감
    
-- 고객에 신유빈 선수를 등록
insert into customer(custid, name) values(6, '신유빈');
    
-- 테이블을 만들 때 AUTO-INCREMENT라는 값을 설정하면, Orderid를 넣지 않아도 카운트 됨
commit;
select * from orders;

/*
 * 2.2 갱신(update)
 *
 * update 테이블명
 *   set 필드명1 = 값1, ..., 필드명n = 값n
 *   where 조건;
 *
 */
 
-- 스포츠심리 책의 출판사를 한솔의학서적으로 변경
update book set publisher = '한솔의학서적' 
    where bookid = 12;
select * from book;

-- 신유빈 선수의 주소를 강원도 영월, 전화번호를 010-2345-6789로 등록
update customer set address = '강원도 영월', phone = '010-2345-6789'
    where custid = 6;

-- 전화번호가 null인 고객을 070-2345-6789로 등록
update customer set phone = '070-2345-6789' where phone is null; -- =은 안됨

select * from customer;
commit;

/*
 * 2.3 삭제(DELETE)
 *
 * DELETE FROM 테이블명 WHERE 조건;
 *
 */
 
-- 고객 테이블에 테스트 데이터 입력 후 삭제
insert into customer(custid, name) values(7, '테스트');
insert all
    into customer(custid, name) values(8, '류현진')
    into customer(custid, name) values(9, '손흥민')
    select * from dual;
    
select * from customer;

-- custid가 7인 고객 정보 삭제
delete from customer where custid = 7;
-- 주소가 null인 고객 삭제
delete from customer where address is null;
commit;