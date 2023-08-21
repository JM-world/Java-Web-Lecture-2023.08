/*
 * 연 습 문 제
 */

-- 1. 마당서점에서 다음의 심화된 질문에 대해 SQL문을 작성하시오.
-- (1) 박지성이 구매한 도서의 출판사와 같은 출판사에서 도서를 구매한 고객의 이름
-- 박지성이 구매한 도서 번호
select * from book;
select distinct bookid
    from orders
    where custid = '1'; 
-- 박지성이 구매한 도서 번호에 대한 각각의 출판사
select publisher
    from book
    where bookid in (select bookid from orders where custid = '1');
-- 박지성이 구매한 도서의 출판사와 같은 bookid
select bookid
    from book
    where publisher in (select publisher from book where bookid 
    in (select bookid from orders where custid = '1'));

-- 박지성이 구매한 도서의 출판사와 같은 출판사에서 도서를 구매한 고객의 번호
select distinct custid
    from orders
    where bookid in (select bookid from book 
    where publisher in (select publisher from book 
    where bookid in (select bookid from orders where custid = '1')));

-- 박지성이 구매한 도서의 출판사와 같은 출판사에서 도서를 구매한 고객
select name
    from customer
    where custid in (select distinct custid from orders
    where bookid in (select bookid from book 
    where publisher in (select publisher from book
    where bookid in (select bookid from orders where custid = '1'))))
    and not (name = '박지성');
    
-- 위의 질문에 대한 선생님 자료 답안
select b.publisher from orders o
    join book b on o.bookid=b.bookid
    join customer c on o.custid=c.custid
    where c.name like '박지성';

    
select distinct ec.name from orders eo
    join book eb on eo.bookid=eb.bookid
    join customer ec on eo.custid=ec.custid
    where eb.publisher in (select b.publisher from orders o
        join book b on o.bookid=b.bookid
        join customer c on o.custid=c.custid
        where c.name like '박지성') and not (name = '박지성');