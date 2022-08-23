#SELECT * FROM Customer

#SELECT * FROM Book

#SELECT * FROM Orders

#SELECT bookname,price FROM Book

#SELECT price,bookname FROM Book

#SELECT bookid,bookname,publisher,price FROM Book

#SELECT * FROM Book

#SELECT distinct publisher FROM Book

#SELECT * FROM Book WHERE price < 20000

#SELECT * FROM Book WHERE price = 13000

#SELECT * FROM Book WHERE price BETWEEN 10000 AND 20000

#SELECT * FROM Book WHERE price >= 10000 AND price <= 20000

#SELECT * FROM Book WHERE publisher NOT IN  ( '굿스포츠','대한미디어')

#SELECT * FROM Book WHERE publisher NOT IN ('이상미디어','삼성당')

#SELECT * FROM Book WHERE bookname LIKE '축구의 역사'
#like는 유사도를 검사하여 표시하는 것이다.

#SELECT * FROM Book WHERE bookname LIKE '%축구%'

#SELECT * FROM Book WHERE bookname LIKE '%야구%'

#SELECT * FROM Book WHERE bookname LIKE '%추억%'

#SELECT * FROM Book WHERE bookname LIKE '%_구%'

#SELECT * FROM Book WHERE bookname LIKE '%축구%' AND price >=20000

#SELECT * FROM Book WHERE bookname LIKE '%축구%' or Bookname LIKE '%야구%'

#SELECT * FROM Book WHERE publisher = '굿스포츠' OR publisher='대한미디어'

#SELECT * FROM Book WHERE publisher LIKE '%나무%'

#SELECT * FROM Book WHERE publisher LIKE '%대한%';

#SELECT * FROM Book WHERE publisher LIKE '%대한%' AND price >= 30000

#SELECT * FROM Book  WHERE bookname LIKE '%역%'

#SELECT * FROM Book ORDER BY bookname DESC

#SELECT * FROM Book ORDER BY price desc,bookname

#SELECT distinct publisher FROM Book 

#SELECT * FROM Book ORDER BY price DESC, publisher ASC;

#SELECT SUM(saleprice) AS 총매출 FROM Orders

#SELECT SUM(saleprice) AS total,
#		AVG(saleprice) AS Average,
#		MIN(saleprice) AS Minimum,
#		MAX(saleprice) AS Maximum
#		FROM Orders 

#SELECT * FROM Orders

#SELECT COUNT(*) FROM Orders
#SELECT COUNT(*) FROM Book\

#SELECT COUNT(*) FROM Customer

#SELECT COUNT(*) FROM Book WHERE bookname LIKE '%축구%'\\

#SELECT custid,COUNT(*),SUM(saleprice)
# FROM Orders 
# WHERE saleprice >= 8000
# GROUP BY custid
 
#SELECT * FROM Orders 

#SELECT * FROM Customer

#SELECT a.name,COUNT(*),SUM(saleprice)
#	FROM Customer a,Orders b
#	WHERE a.custid = b.custid
#	GROUP BY b.custid

#SELECT a.saleprice,a.orderdate,b.bookname,b.publisher,b.price
#	FROM Orders a, Book b
#	WHERE a.bookid = b.bookid
#	AND a.saleprice >=20000

# SELECT sum(a.saleprice),c.bookname
#	FROM Orders a, Customer b, Book c
#	WHERE a.custid = b.custid
#	AND a.bookid = c.bookid
#	ORDER BY a.bookid

SELECT SUM(a.saleprice), b.name
	FROM Orders a,Customer b,
	WHERE a.custid = b.custid
	GROUP BY b.custid 
	
#SELECT * FROM book