/*
   1. 질의어(query)

SELECT 필드명
   FROM 테이블명
   JOIN 테이블명
   ON 조인 조건
   WHERE 조건
   GROUP BY 필드명
   HAVING 그룹 조건
   ORDER BY 필드명 순서(ASC, DESC) = (오름차순(생략가능), 내림차순)

갯수 조절을 위한 필드가 추가됨
select * from book order by price desc;  --가격 내림차순 나열
select distinct price from book;  가격 <distinct = 중복 제거>해서 나열
  */
  
/* 기본 구문 */
select * from book;
select * from costomer;
select * from orders;
select name, address from customer;
select distinct publisher from book;

/*
 * 1.1 조회 조건 
 */
-- 가격이 10,000원 이상인 책
select * from book where price >= 10000;
-- 대한미디어에서 출간한 책
select * from book where publisher = '대한미디어';
-- 축구와 관련된 책
select * from book where bookname like '%축구%';
-- 가격이 10,000원 이상이고 20,000원 이하인 책
select * from book where price >= 10000 and price <= 20000;
select * from book where price between 10000 and 20000;
-- 가격이 10,000원 미만 또는 20,000원 초과인 책
select * from book where price < 10000 or price > 20000;
-- 가격이 7의 배수인 책 --★★
select * from book where mod(price, 7) = 0;
-- 나무수, 굿스포츠, 삼성당에서 나온 책
select * from book where publisher = '나무수' 
    or publisher = '굿스포츠' or publisher = '삼성당';
select * from book where publisher in ('나무수','굿스포츠','삼성당');
-- 전화가 NULL인 고객은?
select * from customer where phone is null;
-- 미국과 영국에 사는 고객은?
select * from customer where address like '%미국%' or address like '%영국%';
-- 가격이 13,000원이 아닌 책
select * from book where price != 13000;
select * from book where price <> 13000;

/*
 * 1.2 순서 (Order by) 
 */
-- 책 이름의 오름차순으로 정렬
select * from book order by bookname ;
-- 책 가격의 내림차순으로 정렬
select * from book order by price desc;
-- 책 가격의 내림차순으로 정렬, 가격이 같으면 책 이름의 오름차순으로 정렬
select * from book order by price desc, bookname; --★★
-- 대한민국에 사는 고객을 이름순으로 정렬
-- where을 쓴다면 where가 나온 후 order by가 나와야함. != 오류
select * from customer where address like '%대한민국%' order by name;

/*
 * 1.3 함수
 */
-- 고객의 수는?
select count(*) from customer;
select count(*) as numCustomers from customer;  -- as는 alias // 별칭 생성
-- 주문 금액의 합계, 평균, 최대, 최소    ***as 생략가능***
select sum(saleprice) sum_sales, 
       avg(saleprice) avg_sales,
       max(saleprice) max_sales,
       min(saleprice) min_sales from orders;
-- 대한미디어에서 출간한 책 가격의 평균은?
select avg(price) from book where publisher = '대한미디어';