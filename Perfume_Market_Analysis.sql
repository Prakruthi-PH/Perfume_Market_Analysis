-- SELECT * FROM men_data;
-- SELECT * FROM women_data;

## Q1. Display all men's perfume products with their brand, title, price, and sales.

/*SELECT 
    brand,
    price
FROM men_data
LIMIT 5;

Output:

	brand	            price
	Dior	            84.99
	AS SHOW	            109.99
	Unbranded	        100
	Giorgio Armani  	44.99
	Lattafa	            16.91    

## Q2.Find perfumes priced above 100.

SELECT 
    brand,
    price
FROM men_data
WHERE price > 100;

Output:
	brand	price
	AS SHOW	109.99
	Giorgio Armani	119.99
	AS SHOWN	126.99
	Roja	159.99
	As Show	109.99
	As picture show	189.99
	Superz Budapest	125
	Christian Dior	161.99
	Christian Dior	159.99
	AS PICTURE SHOWN	125.99
	Parfums de Marly	124.96
	Creed	259.09
	MFK	119.99
	CHANEL	129
	Roja	202.95
	Giorgio Armani	138.99
	Roja Dove	129.99
	Tom Ford	116.54
	As Picture Show	124.99
	Creed	160.91
	Yves Saint Laurent	144.99
	Paco Rabanne	108.98
	Creed	212.89
	CHANEL	112.49
	Maison Francis Kurkdjian	140
	Jean Paul Gaultier	114.99
	Parfums de Marly	155.65
	Carolina Herrera	153
	Roja	109.99
	Topshelf	139.99
	Valentino	103.98
	Heaven Scents	139.99
	Giorgio Armani	128.99
	Giorgio Armani	129.99
	Dolce&Gabbana	119.99
	Dolce&Gabbana	114.99
	As Show	109.99
	Giorgio Armani	110.08
	Parfums de Marly	110
	Penhaligons	188.99
	PRADA	113.98
	PRADA	181.04
	Giorgio Armani	192
	Paco Rabanne	104.99
	Dolce&Gabbana	239.99
	Yves Saint Laurent	129
	Paco Rabanne	108
	Tom Ford	135.49
	Dolce&Gabbana	124.99 
    

## Q3. Find the top 10 best-selling men's perfumes.SELECT 
SELECT brand,
    sold
FROM men_data
ORDER BY sold DESC
LIMIT 10;

Output:

	brand	          sold
	Calvin Klein	  54052
	Davidoff	      40130
	Versace	          31718
	Azzaro	          30655
	Calvin Klein	  24048
	Versace	          21310
	Versace	          19899
	2nd To None	      18882
	Davidoff	      13549
	Kenneth Cole	  12865  
    
## Q4. How many unique perfume brands are available?

SELECT COUNT(DISTINCT brand) AS unique_brands
FROM men_data;

Output:

	unique_brands
	174                   

## Q5. What is the average price of men's perfumes?

SELECT 
    ROUND(AVG(price), 2) AS average_price
FROM men_data;

Output:
	average_price
	47                  

## Q6. Find the minimum and maximum perfume prices in the women's dataset.

SELECT 
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price
FROM women_data;

Output:

	minimum_price	maximum_price
	11	              129.99        
    
## Q7. Find the minimum and maximum perfume prices in the men's dataset.

SELECT 
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price
FROM men_data;

Output:

	minimum_price	maximum_price
	    3	              259.09        
        
## Q8. Calculate total units sold by each brand.

SELECT 
    brand,
    SUM(sold) AS total_sold
FROM men_data
GROUP BY brand
ORDER BY total_sold DESC;

 Output:

	brand	total_sold
	Calvin Klein	97375
	Versace	91924
	Davidoff	54944
	Azzaro	38301
	Armaf	23422
	Kenneth Cole	23229
	Liz Claiborne	21130
	Burberry	19256
	2nd To None	18882
	Paco Rabanne	18725
	Ralph Lauren	16080
	Montblanc	12984
	Guy Laroche	12875
	C.K	12739
	Tommy Hilfiger	12568
	Giorgio Armani	12376
	Yves Saint Laurent	12109
	Myrurgia	11546
	Dolce & Gabbana	11107
	Dolce&Gabbana	11078
	Coach	8170
	Carolina Herrera	8099
	Yves de Sistelle	7253
	Jaguar	6726
	Ed Hardy	6633
	Polo Ralph Lauren	5929
	Gucci	5833
	Paul Sebastian	5531
	Bentley	5229
	Karl Lagerfeld	5076
	Issey Miyake	4671
	Cologne	4661
	Prada	4487
	Halston	4443
	Abercrombie & Fitch	3712
	Mont Blanc	3237
	Unbranded	3122
	Dior	2999
	Giorgio Beverly Hills	2817
	Jean Paul Gaultier	2695
	Lacoste	2650
	Aramis	2494
	J. Del Pozo	2417
	Classic Brands	2256
	Afnan	2194
	Hugo Boss	2185
	SECERTMU	2181
	Lalique	2102
	Paris Hilton	2093
	Nautica	2006
	Salvatore Ferragamo	1994
	CURVE	1992
	Lanvin	1955
	Gianni Versace	1925
	Creed	1767
	Lomani	1630
	Lattafa	1513
	Viktor & Rolf	1513
	MONT BLANC LEGEND	1511
	Givenchy	1483
	Baron	1433
	Emporio Armani	1346
	HERMÃˆS	1189
	NIKOS	1128
	Valentino	1073
	Louis Vuitton	1072
	Jacques Bogart	957
	John Varvatos	955
	Parfums de Marly	822
	Bharara	732
	Bath & Body Works	717
	Mirage Brands	657
	AS SHOW	609
	Sean John	587
	Michael Jordan	488
	Moschino	465
	Rasasi	461
	CHANEL	451
	Hermes	438
	Rochas	433
	Narciso Rodriguez	432
	King	430
	Lauren Ralph Lauren	420
	MetaHerbal Labs	353
	Tom Ford	335
	Jovan	330
	Acqua di Parma	322
	AS SHOWN	301
	REYANE TRADITION	299
	Christian Dior	289
	Luxury	272
	Tommy Bahama	270
	Designer Series	229
	Emanuelle Ungaro	226
	Thierry Mugler	221
	Pheromones	217
	KENZO	198
	Dumont	187
	Polo	174
	English Laundry	169
	Avon	166
	Maison Alhambra	157
	VICTOR MANUELLE	153
	Pierre Cardin	149
	Diesel	147
	Roja	142
	Coty	137
	Old Spice	132
	Sterling	129
	Clinique	126
	LLURE SX	114
	YSL	111
	Dossier	99
	Multiple Brands	79
	Acqua Di Gio	78
	Territoire	77
	Coty Inc.	72
	Joop	62
	Boucheron	61
	Michael Malul London	59
	king of kings	58
	Bvlgari	54
	as showed	51
	Brut	48
	Cartier	48
	Heaven Scents	46
	As picture show	45
	Grandeur	44
	Zara	42
	Mercedes-Benz	41
	Penhaligons	35
	Kenneth Cole Reaction	31
	Ard Al Zaafaran	29
	Superz Budapest	28
	Halloween	25
	Roja Dove	25
	Lapidus	24
	Mary Kay	24
	As Picture Shown	23
	~ DOLCE & GABBANA ~	22
	rue21	22
	Lucianno	21
	Limited Edition	21
	Bond No. 9	21
	Milestone Perfumes	21
	Al Wataniah	19
	Michael Malul	18
	EBC	17
	FM	16
	AXE	15
	Franck Olivier	15
	Clive Christian	14
	MFK	13
	Roja Parfums	13
	Al Haramain	12
	Missoni	12
	Jimmy Choo	12
	EstÃ©e Lauder	10
	Ted Lapidus	9
	UOMO	8
	Roberto Cavalli	8
	Jo Malone	6
	Maison Francis Kurkdjian	6
	El Ganso	6
	Khadlaj	4
	Topshelf	4
	RawChemistry	4
	Lâ€™OCCITANE	4
	Assorted	4
	Alexandria Fragrances	4
	fragrance	3
	Fragrance World	1
	GUERLAIN PARIS	1
	Victor & Rolf	1  
    
## Q9. Find the 10 products with the highest available inventory.

SELECT 
    brand,
    available
FROM men_data
ORDER BY available DESC
LIMIT 10;

Output:

	brand	available
	Calvin Klein	842
	Polo Ralph Lauren	756
	Guy Laroche	620
	Coach	487
	Ralph Lauren	484
	Ralph Lauren	452
	Montblanc	383
	Guy Laroche	323
	Versace	322
	Ed Hardy	311 
    
## Q10. Find perfumes that sold more than 100 units and cost less than 50.

SELECT 
    brand,
    price,
    sold
FROM men_data
WHERE sold > 100
  AND price < 50
ORDER BY sold DESC
LIMIT 10;

	brand	        price	sold
	Calvin Klein	23.89	54052
	Davidoff	    25.23	40130
	Versace	        39.77	31718
	Azzaro	        46.33	30655
	Calvin Klein	23.56	24048
	Versace	        44.94	21310
	Versace	        36.88	19899
	2nd To None	    6.65	18882
	Davidoff	    38.24	13549
	Kenneth Cole	24.7	12865      
    

## Q11. Calculate estimated revenue for every perfume and find the top 10 products.
SELECT 
    brand,
    price,
    sold,
    ROUND(price * sold, 2) AS estimated_revenue
FROM men_data
ORDER BY estimated_revenue DESC
LIMIT 10;

Output:

	brand	          price	      sold	   estimated_revenue
	Azzaro	          46.33	      30655	     1420246.15
	Calvin Klein	  23.89	      54052	     1291302.28
	Versace	          39.77	      31718	     1261424.86
	Davidoff	      25.23	      40130	     1012479.9
	Versace	          44.94	      21310	     957671.4
	Versace	          36.88	      19899	     733875.12
	Calvin Klein	  23.56	      24048	     566570.88
	Davidoff	      38.24	      13549	     518113.76
	Paco Rabanne	  47.99	      8877	     426007.23
	C.K	              28.75	      12739	     366246.25    
    
## Q12. Calculate total revenue generated by top 10 brand.

SELECT 
    brand,
    ROUND(SUM(price * sold), 2) AS total_revenue
FROM men_data
GROUP BY brand
ORDER BY total_revenue DESC
LIMIT 10;

Output:

	brand	               total_revenue
	Versace	                3448559.56
	Calvin Klein	        2487856.47
	Azzaro	                1672726.65
	Davidoff	            1570975.76
	Yves Saint Laurent  	910394.55
	Armaf	                847410.14
	Paco Rabanne	        840033.76
	Ralph Lauren	        726025.74
	Giorgio Armani	        634752.9
	Dolce&Gabbana	        596170.31   
    
## Q13. Categorize perfumes into Budget, Mid-Range, Premium, and Luxury.

SELECT 
    brand,
    price,
    CASE
        WHEN price < 30 THEN 'Budget'
        WHEN price < 70 THEN 'Mid-Range'
        WHEN price < 150 THEN 'Premium'
        ELSE 'Luxury'
    END AS price_category
FROM men_data;

Output:


	brand	price	price_category
	Dior	84.99	Premium
	AS SHOW	109.99	Premium
	Unbranded	100	Premium
	Giorgio Armani	44.99	Mid-Range
	Lattafa	16.91	Budget
	Multiple Brands	14.99	Budget
	Maison Alhambra	30.99	Mid-Range
	Unbranded	85	Premium
	Unbranded	15.89	Budget
	Gucci	49.99	Mid-Range
	Ralph Lauren	34.99	Mid-Range
	Dolce&Gabbana	29.95	Budget
	SECERTMU	15.99	Budget
	As Show	59.99	Mid-Range
	Versace	34.99	Mid-Range
	Paco Rabanne	68.99	Mid-Range
	Grandeur	37.99	Mid-Range
	Armaf	29.99	Budget
	Carolina Herrera	39.99	Mid-Range
	Dior	83.95	Premium
	Dolce & Gabbana	29.94	Budget
	Clinique	21.99	Budget
	Dumont	49.99	Mid-Range
	Afnan	33.7	Mid-Range
	Versace	35.99	Mid-Range
	Azzaro	89.97	Premium
	Unbranded	92.99	Premium
	Giorgio Armani	119.99	Premium
	Penhaligons	99.99	Premium
	Bharara	51.91	Mid-Range
	Paco Rabanne	49.99	Mid-Range
	Armaf	32.85	Mid-Range
	Valentino	89.97	Premium
	Guy Laroche	16.98	Budget
	Montblanc	32.89	Mid-Range
	Rasasi	45.11	Mid-Range
	Maison Alhambra	19.73	Budget
	Armaf	39.99	Mid-Range
	Calvin Klein	40.6	Mid-Range
	UOMO	54.99	Mid-Range
	Paco Rabanne	40.99	Mid-Range
	Armaf	34.84	Mid-Range
	Givenchy	34.72	Mid-Range
	Azzaro	46.33	Mid-Range
	Armaf	39	Mid-Range
	Lattafa	21.54	Budget
	Polo Ralph Lauren	32.97	Mid-Range
	Ralph Lauren	23.34	Budget
	C.K	28.75	Budget
	John Varvatos	27.94	Budget
	Afnan	32.5	Mid-Range
	Nautica	14.99	Budget
	Giorgio Armani	45.95	Mid-Range
	Giorgio Armani	68.99	Mid-Range
	SECERTMU	13.99	Budget
	Versace	36.88	Mid-Range
	Kenneth Cole	24.7	Budget
	Tommy Hilfiger	26.11	Budget
	Unbranded	14.99	Budget
	2nd To None	6.65	Budget
	Dior	25.99	Budget
	Yves Saint Laurent	60.99	Mid-Range
	Yves Saint Laurent	47.88	Mid-Range
	Calvin Klein	31.08	Mid-Range
	Armaf	24.43	Budget
	Versace	35.99	Mid-Range
	Rasasi	25.99	Budget
	Ralph Lauren	38.57	Mid-Range
	Azzaro	24.45	Budget
	Azzaro	16.26	Budget
	Lattafa	15.03	Budget
	Versace	8.32	Budget
	Giorgio Armani	37.8	Mid-Range
	Calvin Klein	23.56	Budget
	Guy Laroche	27.59	Budget
	Ralph Lauren	26.5	Budget
	Dolce&Gabbana	35.71	Mid-Range
	Unbranded	15.99	Budget
	Calvin Klein	23.89	Budget
	Cologne	10.99	Budget
	Giorgio Armani	70.99	Premium
	AS SHOWN	126.99	Premium
	Roja	159.99	Luxury
	MetaHerbal Labs	39.95	Mid-Range
	Mirage Brands	13.66	Budget
	Carolina Herrera	54.99	Mid-Range
	Unbranded	14.99	Budget
	Abercrombie & Fitch	29.99	Budget
	Valentino	89.99	Premium
	As Show	109.99	Premium
	Yves Saint Laurent	92.56	Premium
	Unbranded	15.89	Budget
	Giorgio Armani	59.99	Mid-Range
	Cologne	85	Premium
	Unbranded	13.86	Budget
	Moschino	29.99	Budget
	Nautica	17.99	Budget
	Valentino	79.99	Premium
	AS SHOW	69.99	Mid-Range
	Dior	84.99	Premium
	As Shown	49.99	Mid-Range
	Abercrombie & Fitch	33.95	Mid-Range
	Polo Ralph Lauren	24.5	Budget
	Paco Rabanne	49.96	Mid-Range
	Ralph Lauren	34.99	Mid-Range
	Azzaro	26.97	Budget
	~ DOLCE & GABBANA ~	54.99	Mid-Range
	Versace	30	Mid-Range
	As picture show	189.99	Luxury
	Superz Budapest	125	Premium
	Ralph Lauren	29.99	Budget
	Paco Rabanne	28.91	Budget
	Unbranded	15.99	Budget
	Gianni Versace	25.43	Budget
	Christian Dior	161.99	Luxury
	Dolce&Gabbana	40.99	Mid-Range
	HERMÃˆS	58.99	Mid-Range
	AS SHOWN	48.99	Mid-Range
	Diesel	17	Budget
	Dolce&Gabbana	65.97	Mid-Range
	Lacoste	36.68	Mid-Range
	Paco Rabanne	49.99	Mid-Range
	Burberry	77.07	Premium
	Giorgio Armani	64.99	Mid-Range
	Yves Saint Laurent	59.99	Mid-Range
	Abercrombie & Fitch	39.99	Mid-Range
	Dolce&Gabbana	36.99	Mid-Range
	Michael Malul	79.99	Premium
	Zara	37.5	Mid-Range
	Aramis	21.01	Budget
	SECERTMU	6.97	Budget
	Yves Saint Laurent	65.68	Mid-Range
	AS SHOW	89.99	Premium
	Jean Paul Gaultier	51.99	Mid-Range
	HERMÃˆS	28.99	Budget
	Yves Saint Laurent	60.99	Mid-Range
	Davidoff	34.98	Mid-Range
	Davidoff	25.49	Budget
	Polo Ralph Lauren	41.99	Mid-Range
	As Picture Shown	99.99	Premium
	Armaf	27.3	Budget
	Bvlgari	45.68	Mid-Range
	Christian Dior	159.99	Luxury
	Unbranded	17.99	Budget
	Ralph Lauren	35.99	Mid-Range
	Parfums de Marly	82.99	Premium
	SECERTMU	11.99	Budget
	Salvatore Ferragamo	32.99	Mid-Range
	Giorgio Armani	28.99	Budget
	MontBlanc	35.71	Mid-Range
	Armaf	39.99	Mid-Range
	Giorgio Armani	29.99	Budget
	Ard Al Zaafaran	17.85	Budget
	Giorgio Armani	69.99	Mid-Range
	Davidoff	38.24	Mid-Range
	J. Del Pozo	30.99	Mid-Range
	Sean John	29.99	Budget
	AS PICTURE SHOWN	125.99	Premium
	YSL	39.99	Mid-Range
	Dolce & Gabbana	36.36	Mid-Range
	Abercrombie & Fitch	49.99	Mid-Range
	Nautica	33.45	Mid-Range
	Abercrombie & Fitch	44	Mid-Range
	Jaguar	15.4	Budget
	EBC	13.5	Budget
	Azzaro	27.94	Budget
	Montblanc	52.62	Mid-Range
	Dolce & Gabbana	50.08	Mid-Range
	Jean Paul Gaultier	12.2	Budget
	Paco Rabanne	28.93	Budget
	Issey Miyake	54.92	Mid-Range
	Polo Ralph Lauren	34.99	Mid-Range
	Calvin Klein	25.98	Budget
	King	74.8	Premium
	Versace	39.77	Mid-Range
	Prada	86.87	Premium
	Cologne	10.99	Budget
	Giorgio Armani	29.99	Budget
	Versace	44.94	Mid-Range
	Valentino	18.99	Budget
	Giorgio Armani	29.95	Budget
	Polo Ralph Lauren	36.99	Mid-Range
	Mont Blanc	36.81	Mid-Range
	Dossier	15	Budget
	BHARARA	53.99	Mid-Range
	Tommy Bahama	22.98	Budget
	Mont Blanc	22.24	Budget
	Dolce&Gabbana	28.5	Budget
	Armaf	29	Budget
	Paul Sebastian	17.12	Budget
	Halloween	30.07	Mid-Range
	Boucheron	32.89	Mid-Range
	Thierry Mugler	59.99	Mid-Range
	Jo Malone	63.99	Mid-Range
	Dolce&Gabbana	38.99	Mid-Range
	Giorgio Armani	29.99	Budget
	ISSEY MIYAKE	54.91	Mid-Range
	Parfums de Marly	124.96	Premium
	Unbranded	49.99	Mid-Range
	Khadlaj	54.86	Mid-Range
	Ralph Lauren	44.99	Mid-Range
	Louis Vuitton	21.95	Budget
	Giorgio Armani	29.99	Budget
	Dolce&Gabbana	63.69	Mid-Range
	Creed	259.09	Luxury
	MFK	119.99	Premium
	Hermes	19.73	Budget
	Ralph Lauren	31.99	Mid-Range
	Dolce&Gabbana	28.79	Budget
	fragrance	46.99	Mid-Range
	Versace	8.84	Budget
	Jean Paul Gaultier	94.99	Premium
	Yves Saint Laurent	94.99	Premium
	Yves Saint Laurent	70.66	Premium
	AS SHOWN	52.99	Mid-Range
	CHANEL	129	Premium
	Jean Paul Gaultier	51.99	Mid-Range
	Roja	202.95	Luxury
	Maison Alhambra	19.73	Budget
	Lalique	57.46	Mid-Range
	Jean Paul Gaultier	45.49	Mid-Range
	Penhaligons	55	Mid-Range
	Dior	84.99	Premium
	Liz Claiborne	27.03	Budget
	Bvlgari	45.69	Mid-Range
	Unbranded	12.98	Budget
	Giorgio Armani	45.99	Mid-Range
	Paco Rabanne	47.99	Mid-Range
	Polo Ralph Lauren	32	Mid-Range
	Joop	38.53	Mid-Range
	CHANEL	13.89	Budget
	As shown	49.99	Mid-Range
	Ted Lapidus	28.65	Budget
	Dossier	29	Budget
	AS SHOW	35.99	Mid-Range
	Paco Rabanne	39.99	Mid-Range
	Ralph Lauren	31.99	Mid-Range
	Versace	36.99	Mid-Range
	Unbranded	54.99	Mid-Range
	Unbranded	15.99	Budget
	Paco Rabanne	39.99	Mid-Range
	Dolce & Gabbana	69.02	Mid-Range
	Dossier	22.99	Budget
	AXE	11.99	Budget
	Dolce&Gabbana	29.99	Budget
	Azzaro	18.1	Budget
	Calvin Klein	28.99	Budget
	Yves Saint Laurent	57.17	Mid-Range
	as showed	9.61	Budget
	Paco Rabanne	39.99	Mid-Range
	Giorgio Armani	138.99	Premium
	Ralph Lauren	44.49	Mid-Range
	Afnan	23.49	Budget
	Giorgio Armani	29.99	Budget
	Ralph Lauren	22.99	Budget
	Versace	29.19	Budget
	Lomani	16.39	Budget
	king of kings	79.99	Premium
	Paco Rabanne	69.99	Mid-Range
	Jean Paul Gaultier	92	Premium
	Carolina Herrera	39.99	Mid-Range
	AS SHOWN	49.99	Mid-Range
	Afnan	25.86	Budget
	Jean Paul Gaultier	92	Premium
	Ralph Lauren	89.25	Premium
	Dior	84.99	Premium
	Burberry	28.25	Budget
	Dior	84.99	Premium
	Abercrombie & Fitch	38.99	Mid-Range
	rue21	25	Budget
	Unbranded	39.99	Mid-Range
	Roja Dove	129.99	Premium
	Tommy Hilfiger	31.99	Mid-Range
	Creed	15.99	Budget
	Yves Saint Laurent	46.48	Mid-Range
	Lattafa	18.99	Budget
	Tom Ford	116.54	Premium
	BHARARA	71.49	Premium
	Davidoff	24.49	Budget
	Unbranded	15.99	Budget
	Ralph Lauren	34.99	Mid-Range
	Cologne	41.99	Mid-Range
	HERMÃˆS	8.49	Budget
	Ralph Lauren	31.99	Mid-Range
	Gucci	49.99	Mid-Range
	Joop	23.49	Budget
	Burberry	30.95	Mid-Range
	Aramis	19.99	Budget
	Bentley	29.12	Budget
	Versace	39.99	Mid-Range
	Giorgio Armani	38.25	Mid-Range
	Giorgio Armani	48.95	Mid-Range
	Azzaro	93.05	Premium
	Valentino	36.99	Mid-Range
	Armaf	27.5	Budget
	Coach	36.15	Mid-Range
	Ralph Lauren	44.99	Mid-Range
	Coty	16.9	Budget
	Azzaro	9.99	Budget
	Calvin Klein	19.99	Budget
	Armaf	43.45	Mid-Range
	Tommy Bahama	31.95	Mid-Range
	Bharara	78.99	Premium
	Lattafa	25.79	Budget
	Lanvin	17.99	Budget
	Yves Saint Laurent	60.99	Mid-Range
	Versace	41.98	Mid-Range
	As Picture Show	124.99	Premium
	Cologne	19.9	Budget
	Salvatore Ferragamo	23	Budget
	AS SHOW	49.99	Mid-Range
	Afnan	37.89	Mid-Range
	Armaf	21.15	Budget
	Givenchy	59	Mid-Range
	Montblanc	25.81	Budget
	Creed	160.91	Luxury
	Versace	23.49	Budget
	Giorgio Armani	25.95	Budget
	Yves Saint Laurent	144.99	Premium
	Calvin Klein	32.98	Mid-Range
	Liz Claiborne	33.99	Mid-Range
	Mont Blanc	62.09	Mid-Range
	NIKOS	12.23	Budget
	Montblanc	31.29	Mid-Range
	Yves Saint Laurent	69.55	Mid-Range
	Lalique	26.52	Budget
	Unbranded	14.6	Budget
	Lucianno	66	Mid-Range
	Viktor & Rolf	86.72	Premium
	Paul Sebastian	26.1	Budget
	Ralph Lauren	28.2	Budget
	J. Del Pozo	27.4	Budget
	Viktor & Rolf	17.98	Budget
	Rochas	24.55	Budget
	PRADA	90.44	Premium
	Ralph Lauren	36.99	Mid-Range
	Classic Brands	17.89	Budget
	REYANE TRADITION	85.2	Premium
	Paco Rabanne	108.98	Premium
	Giorgio Beverly Hills	16.04	Budget
	Yves Saint Laurent	45.98	Mid-Range
	PRADA	84.73	Premium
	Giorgio Armani	69.99	Mid-Range
	Rasasi	45	Mid-Range
	Giorgio Armani	48.95	Mid-Range
	CHANEL	10.7	Budget
	Giorgio Armani	27.1	Budget
	As Show	29.99	Budget
	Creed	212.89	Luxury
	Yves Saint Laurent	71.98	Premium
	Dior	89.98	Premium
	as showed	43.47	Mid-Range
	Myrurgia	9.98	Budget
	Lattafa	24.4	Budget
	Al Wataniah	50	Mid-Range
	Jovan	10.19	Budget
	Coty Inc.	9.21	Budget
	Rasasi	16.97	Budget
	Giorgio Armani	78.99	Premium
	Calvin Klein	19.16	Budget
	MONT BLANC LEGEND	33.5	Mid-Range
	KING OF KINGS	79.99	Premium
	Emporio Armani	84.99	Premium
	CHANEL	112.49	Premium
	Carolina Herrera	22.79	Budget
	Unbranded	21.99	Budget
	Abercrombie & Fitch	43.49	Mid-Range
	Bentley	23.49	Budget
	Azzaro	44	Mid-Range
	Maison Francis Kurkdjian	140	Premium
	Paco Rabanne	74.99	Premium
	Lattafa	26.99	Budget
	Ralph Lauren	52.97	Mid-Range
	Armaf	22.61	Budget
	Giorgio Armani	72.99	Premium
	Fragrance World	27.99	Budget
	Paco Rabanne	17.98	Budget
	Bath & Body Works	27.94	Budget
	Jean Paul Gaultier	12.95	Budget
	Lattafa	23.99	Budget
	Yves Saint Laurent	24.99	Budget
	Bvlgari	49.99	Mid-Range
	Azzaro	26	Budget
	Giorgio Armani	90.44	Premium
	As shown	40.99	Mid-Range
	Dolce&Gabbana	33.99	Mid-Range
	SECERTMU	10.99	Budget
	Cologne	28.99	Budget
	Coach	34.99	Mid-Range
	Avon	13.94	Budget
	Abercrombie & Fitch	44.99	Mid-Range
	Calvin Klein	28.02	Budget
	Unbranded	49.99	Mid-Range
	Yves de Sistelle	19.75	Budget
	Rasasi	53.99	Mid-Range
	As Shown	49.63	Mid-Range
	Limited Edition	65.5	Mid-Range
	Kenneth Cole Reaction	22.99	Budget
	Armaf	36.95	Mid-Range
	Bond No. 9	17.98	Budget
	Unbranded	16.99	Budget
	Ralph Lauren	17.34	Budget
	Unbranded	13	Budget
	Jean Paul Gaultier	114.99	Premium
	Armaf	29.99	Budget
	Afnan	19.73	Budget
	Acqua di Parma	69.97	Mid-Range
	Lacoste	31.95	Mid-Range
	Burberry	59.99	Mid-Range
	Armaf	56.95	Mid-Range
	Ralph Lauren	36.99	Mid-Range
	GUERLAIN PARIS	100	Premium
	As Show	39.99	Mid-Range
	Cologne	88	Premium
	Al Haramain	38.53	Mid-Range
	Givenchy	39.95	Mid-Range
	Montblanc	62.08	Mid-Range
	Ralph Lauren	53.98	Mid-Range
	Giorgio Armani	51.99	Mid-Range
	Parfums de Marly	155.65	Luxury
	Abercrombie & Fitch	24.99	Budget
	HERMÃˆS	99.98	Premium
	Carolina Herrera	88.65	Premium
	Carolina Herrera	153	Luxury
	Roja Parfums	79.99	Premium
	Narciso Rodriguez	59.09	Mid-Range
	Burberry	7.95	Budget
	Roja	109.99	Premium
	Paco Rabanne	68.61	Mid-Range
	Davidoff	12.49	Budget
	Emporio Armani	71.98	Premium
	Yves Saint Laurent	70.65	Premium
	Topshelf	139.99	Premium
	Carolina Herrera	39.99	Mid-Range
	Jean Paul Gaultier	48.99	Mid-Range
	Polo Ralph Lauren	33.99	Mid-Range
	Versace	66.39	Mid-Range
	Davidoff	26.9	Budget
	Paco Rabanne	16.48	Budget
	Armaf	65	Mid-Range
	Carolina Herrera	39.99	Mid-Range
	Myrurgia	9.21	Budget
	Brut	13.89	Budget
	Armaf	45	Mid-Range
	Penhaligon's	71.99	Premium
	Ed Hardy	20.25	Budget
	Paco Rabanne	17.98	Budget
	Tommy Hilfiger	9.95	Budget
	J. Del Pozo	28.11	Budget
	FM	16.85	Budget
	Valentino	103.98	Premium
	Coach	39.99	Mid-Range
	Dior	89.99	Premium
	Paris Hilton	25.49	Budget
	Dolce&Gabbana	33.37	Mid-Range
	Paco Rabanne	64.99	Mid-Range
	Giorgio Armani	39.99	Mid-Range
	Unbranded	35.99	Mid-Range
	Calvin Klein	21.27	Budget
	John Varvatos	79.99	Premium
	Dolce&Gabbana	29.99	Budget
	Giorgio Armani	38.25	Mid-Range
	As Show	49.99	Mid-Range
	Heaven Scents	139.99	Premium
	Abercrombie & Fitch	49.49	Mid-Range
	Sean John	24.99	Budget
	Ralph Lauren	53.99	Mid-Range
	Gucci	68.99	Mid-Range
	Coach	29.99	Budget
	SECERTMU	11.99	Budget
	Coach	41.99	Mid-Range
	Yves Saint Laurent	84.59	Premium
	Valentino	75.99	Premium
	Carolina Herrera	39.99	Mid-Range
	HERMÃˆS	64.88	Mid-Range
	Paco Rabanne	49.99	Mid-Range
	Tommy Bahama	32.62	Mid-Range
	Ralph Lauren	29.46	Budget
	Karl Lagerfeld	25.1	Budget
	Giorgio Armani	29.99	Budget
	Ralph Lauren	31.99	Mid-Range
	Lacoste	32.5	Mid-Range
	Giorgio Armani	48.95	Mid-Range
	Paco Rabanne	84.6	Premium
	Lalique	27.25	Budget
	Giorgio Armani	27.5	Budget
	Afnan	24.43	Budget
	Giorgio Armani	128.99	Premium
	Viktor & Rolf	68.99	Mid-Range
	Zara	58.95	Mid-Range
	Armaf	33.99	Mid-Range
	KENZO	47.99	Mid-Range
	Mercedes-Benz	49.81	Mid-Range
	As Show	35.99	Mid-Range
	Armaf	62.99	Mid-Range
	Yves Saint Laurent	25.95	Budget
	Lalique	28.19	Budget
	Liz Claiborne	17.02	Budget
	Givenchy	44.99	Mid-Range
	Unbranded	15.99	Budget
	Calvin Klein	23.79	Budget
	Paco Rabanne	36.65	Mid-Range
	John Varvatos	33.36	Mid-Range
	Ralph Lauren	54.52	Mid-Range
	Moschino	22.87	Budget
	Giorgio Armani	129.99	Premium
	Ralph Lauren	72.56	Premium
	Azzaro	18.96	Budget
	Coty	9.99	Budget
	Franck Olivier	17.85	Budget
	Kenneth Cole	28.42	Budget
	Missoni	30.07	Mid-Range
	Halston	15.51	Budget
	Cologne	38.94	Mid-Range
	Paco Rabanne	68.99	Mid-Range
	Giorgio Armani	55.16	Mid-Range
	Baron	28.38	Budget
	Paco Rabanne	11.95	Budget
	Giorgio Armani	27	Budget
	Liz Claiborne	17.29	Budget
	Armaf	28.8	Budget
	Gucci	74.25	Premium
	PRADA	90.45	Premium
	Dolce&Gabbana	28.95	Budget
	Kenneth Cole	24.14	Budget
	Jaguar	15.65	Budget
	Giorgio Armani	79.89	Premium
	Parfums de Marly	13.95	Budget
	Giorgio Armani	94.43	Premium
	Liz Claiborne	16.71	Budget
	Clinique	17.98	Budget
	Dolce&Gabbana	119.99	Premium
	Acqua Di Gio	15.99	Budget
	Cologne	14.99	Budget
	Reyane Tradition	25.96	Budget
	Reyane Tradition	22.99	Budget
	Old Spice	19.99	Budget
	Mercedes-Benz	38.99	Mid-Range
	Burberry	30.95	Mid-Range
	Burberry	32.98	Mid-Range
	Dolce&Gabbana	114.99	Premium
	Mirage Brands	13.68	Budget
	Lauren Ralph Lauren	45.7	Mid-Range
	Paco Rabanne	77.15	Premium
	Viktor & Rolf	24.98	Budget
	Milestone Perfumes	19.89	Budget
	Giorgio Armani	27.9	Budget
	Yves Saint Laurent	58.95	Mid-Range
	Creed	9.99	Budget
	Yves Saint Laurent	83.99	Premium
	Unbranded	15.89	Budget
	Carolina Herrera	32.13	Mid-Range
	Clive Christian	13	Budget
	Tom Ford	13.05	Budget
	Viktor & Rolf	74.92	Premium
	Mont Blanc	35.62	Mid-Range
	Giorgio Armani	41.99	Mid-Range
	Abercrombie & Fitch	49.99	Mid-Range
	As Show	109.99	Premium
	Rasasi	41.95	Mid-Range
	Calvin Klein	21.27	Budget
	Armaf	54.26	Mid-Range
	Maison Alhambra	26.5	Budget
	Paco Rabanne	50.99	Mid-Range
	Dolce & Gabbana	46.15	Mid-Range
	Giorgio Armani	110.08	Premium
	Franck Olivier	18.79	Budget
	Burberry	32.99	Mid-Range
	Parfums de Marly	110	Premium
	Victor & Rolf	74.59	Premium
	Polo	41.79	Mid-Range
	Roberto Cavalli	42.95	Mid-Range
	Bentley	28.99	Budget
	Azzaro	93.91	Premium
	Salvatore Ferragamo	21	Budget
	Emanuelle Ungaro	31.89	Mid-Range
	Mercedes-Benz	37.99	Mid-Range
	Versace	58.09	Mid-Range
	Davidoff	25.23	Budget
	Ralph Lauren	43	Mid-Range
	CURVE	16.82	Budget
	Penhaligons	188.99	Luxury
	Emporio Armani	69.99	Mid-Range
	Salvatore Ferragamo	28.19	Budget
	Kenneth Cole	10.99	Budget
	Paco Rabanne	70.08	Premium
	As Show	69.99	Mid-Range
	Burberry	75.65	Premium
	Yves Saint Laurent	94.93	Premium
	Afnan	34.5	Mid-Range
	Michael Malul London	90.11	Premium
	EstÃ©e Lauder	19.99	Budget
	Mercedes-Benz	47.99	Mid-Range
	PRADA	113.98	Premium
	Cologne	67.5	Mid-Range
	Pierre Cardin	7.28	Budget
	RawChemistry	30.95	Mid-Range
	Michael Malul London	89.99	Premium
	Cologne	68.89	Mid-Range
	Sterling	38.98	Mid-Range
	Paco Rabanne	46	Mid-Range
	Burberry	32.99	Mid-Range
	PRADA	181.04	Luxury
	Afnan	38.41	Mid-Range
	Liz Claiborne	17.98	Budget
	Territoire	16.49	Budget
	Jimmy Choo	31.95	Mid-Range
	Bentley	29.13	Budget
	Armaf	28.95	Budget
	Lapidus	20.25	Budget
	Mary Kay	30	Mid-Range
	Guy Laroche	18.91	Budget
	Lâ€™OCCITANE	59	Mid-Range
	Giorgio Armani	192	Luxury
	Jimmy Choo	24.43	Budget
	Yves Saint Laurent	15.99	Budget
	Carolina Herrera	40.59	Mid-Range
	Giorgio Armani	44.99	Mid-Range
	SECERTMU	6.96	Budget
	J. Del Pozo	37.98	Mid-Range
	Louis Vuitton	18.95	Budget
	Avon	19.99	Budget
	Versace	45.99	Mid-Range
	Paco Rabanne	86.99	Premium
	Versace	19.73	Budget
	Unbranded	16.99	Budget
	Parfums de Marly	34.99	Mid-Range
	Jaguar	13.15	Budget
	Paco Rabanne	64.99	Mid-Range
	CHANEL	11.5	Budget
	Burberry	28.99	Budget
	Creed	13	Budget
	Creed	11.99	Budget
	Paco Rabanne	104.99	Premium
	Dolce & Gabbana	75.95	Premium
	Armaf	19.41	Budget
	Giorgio Armani	29.99	Budget
	Polo Ralph Lauren	38.99	Mid-Range
	Giorgio Armani	46.99	Mid-Range
	Hermes	14.98	Budget
	Abercrombie & Fitch	44.99	Mid-Range
	Gucci	15.99	Budget
	Hugo Boss	65.37	Mid-Range
	Valentino	59.99	Mid-Range
	LLURE SX	38.95	Mid-Range
	Jacques Bogart	13.97	Budget
	Dolce&Gabbana	239.99	Luxury
	Tommy Hilfiger	44.95	Mid-Range
	Giorgio Armani	79.99	Premium
	Cologne	25.46	Budget
	Moschino	35.99	Mid-Range
	Yves Saint Laurent	129	Premium
	As Show	47.99	Mid-Range
	Carolina Herrera	59.43	Mid-Range
	Dolce & Gabbana	14.95	Budget
	Ralph Lauren	12.99	Budget
	Paco Rabanne	108	Premium
	Valentino	78.99	Premium
	Pheromones	32.95	Mid-Range
	Paco Rabanne	18.99	Budget
	Cartier	59.63	Mid-Range
	HUGO BOSS	44.93	Mid-Range
	Armaf	30.31	Mid-Range
	Dior	88.99	Premium
	Paco Rabanne	20	Budget
	Assorted	17.95	Budget
	Paco Rabanne	39.99	Mid-Range
	Unbranded	15.99	Budget
	Dossier	20	Budget
	Ralph Lauren	41.95	Mid-Range
	Creed	38.99	Mid-Range
	Dolce&Gabbana	55.15	Mid-Range
	Dolce&Gabbana	74.48	Premium
	Lattafa	33.49	Mid-Range
	Roja	17.89	Budget
	Gucci	58.46	Mid-Range
	Parfums de Marly	91.98	Premium
	Calvin Klein	17.99	Budget
	Salvatore Ferragamo	69.95	Mid-Range
	Cologne	35	Mid-Range
	Michael Jordan	21.79	Budget
	ysl	38	Mid-Range
	Ralph Lauren	34.99	Mid-Range
	Dolce&Gabbana	53.45	Mid-Range
	Paco Rabanne	82.99	Premium
	Valentino	79.99	Premium
	Afnan	22.15	Budget
	Polo Ralph Lauren	26.55	Budget
	Designer Series	12.6	Budget
	Bond No. 9	17.98	Budget
	Tom Ford	135.49	Premium
	YSL	52.99	Mid-Range
	Lacoste	54.5	Mid-Range
	Alexandria Fragrances	3	Budget
	Armaf	36.95	Mid-Range
	CHANEL	12	Budget
	Bvlgari	64.99	Mid-Range
	KENZO	76.99	Premium
	El Ganso	56	Mid-Range
	Avon	45.9	Mid-Range
	VICTOR MANUELLE	39.99	Mid-Range
	English Laundry	36.67	Mid-Range
	Luxury	10.67	Budget
	Yves Saint Laurent	92	Premium
	MontBlanc	31.29	Mid-Range
	Dolce&Gabbana	99.99	Premium
	AS SHOW	99.49	Premium
	Acqua di Parma	23.95	Budget
	Guy Laroche	19.99	Budget
	Salvatore Ferragamo	26.86	Budget
	Paco Rabanne	74.99	Premium
	Calvin Klein	31.57	Mid-Range
	Givenchy	39.99	Mid-Range
	Armaf	29.03	Budget
	Moschino	39.95	Mid-Range
	Lattafa	25.99	Budget
	Azzaro	18.11	Budget
	Dolce&Gabbana	124.99	Premium
	Montblanc	52.94	Mid-Range
	MAISON ALHAMBRA	29.99	Budget
	Ralph Lauren	32.98	Mid-Range
	Giorgio Armani	29.99	Budget
	Giorgio Armani	37.95	Mid-Range
	Giorgio Armani	29.99	Budget           
   
## Q14. Find the average sales for each perfume type.

SELECT 
    type,
    ROUND(AVG(sold), 2) AS average_sales
FROM men_data
GROUP BY type
ORDER BY average_sales DESC;

Output:

	type	                           average_sales
	Concentrated Uncut Pure Body Oil	18882.00
	Eau de Cologne Spray, Cologne Spray	6634.00
	Fine Cologne                    	4934.00
	Eau de Toilette, Cologne Spray	    3823.00
	Eau de Toilette	                    1680.62
	Eau de Cologne                   	732.83
	Eau de Toilette Intense	            601.00
	Fragrance & Perfume	                430.00
	Eau de Perfume	                    365.00
	Unscented	                        353.00
	Gift Sets	                        326.50
	Eau de Parfum	                    230.81
	Elixir de Parfum	                196.00
	PARFUM	                            174.71
	Perfume	                            133.86
	Body Spray	                        133.33
	DIOR HOMME COLOGNE	                129.00
	Does not apply	                    72.00
	Y	                                68.00
	Fragrance Rolling Ball	            62.00
	De Nuit	                            61.00
	Cologne                          	43.50
	Eau de Toillette	                37.00
	Aftershave	                        36.67
	Fragrances	                        33.96
	EDT	                                32.00
	LE PARFUM	                        26.00
	EXTRAIT DE PARFUM	                24.50
	Parfum Intense	                    23.00
	~ THE ONE EAU DE PARFUM SPRAY    	22.00
	Editions Parfums	                16.00
	Eau De Parfum Intense	            11.00
	Pheromone	                        11.00
	Jo Malone Cologne Intense Spray	    6.00
	Elixir	                            4.00
	Assorted	                        4.00
	Various	                            2.00   
    
## Q15. Find perfumes whose sales are above the overall average sales.

SELECT 
    brand,
    sold
FROM men_data
WHERE sold > (
    SELECT AVG(sold)
    FROM men_data
)
ORDER BY sold DESC;

Output:

	brand	        sold
	Calvin Klein	54052
	Davidoff	40130
	Versace	31718
	Azzaro	30655
	Calvin Klein	24048
	Versace	21310
	Versace	19899
	2nd To None	18882
	Davidoff	13549
	Kenneth Cole	12865
	C.K	12739
	Burberry	12583
	Tommy Hilfiger	12184
	Versace	9410
	Kenneth Cole	9265
	Dolce & Gabbana	9208
	Paco Rabanne	8877
	Myrurgia	8453
	Armaf	8385
	Liz Claiborne	7816
	Coach	7592
	Yves de Sistelle	7253
	Liz Claiborne	6634
	Ed Hardy	6633
	Burberry	6188
	Calvin Klein	5582
	Guy Laroche	5500
	Calvin Klein	5377
	Gucci	5227
	Bentley	5145
	Montblanc	5098
	Karl Lagerfeld	5076
	Montblanc	5032
	Polo Ralph Lauren	5023
	Guy Laroche	4972
	Paul Sebastian	4934
	Yves Saint Laurent	4802
	Paco Rabanne	4764
	Dolce&Gabbana	4733
	Ralph Lauren	4520
	Armaf	4460
	Halston	4443
	Calvin Klein	4427
	Versace	4234
	Jaguar	3942
	Liz Claiborne	3823
	Dolce&Gabbana	3787
	Carolina Herrera	3691
	Ralph Lauren	3171
	Giorgio Armani	3110
	Myrurgia	3093
	Carolina Herrera	2934
	Giorgio Beverly Hills	2817
	Jaguar	2777
	PRADA	2774
	Armaf	2550
	Aramis	2486
	Issey Miyake	2465
	Guy Laroche	2345
	Yves Saint Laurent	2293
	Classic Brands	2256
	Cologne	2247
	ISSEY MIYAKE	2206
	Yves Saint Laurent	2153
	HUGO BOSS	2098
	Paris Hilton	2093
	Lacoste	1995
	CURVE	1992
	Lanvin	1955
	Gianni Versace	1925
	Lalique	1866
	Versace	1819
	Versace	1787
	Azzaro	1691
	Ralph Lauren	1683
	Lomani	1630
	Calvin Klein	1536
	MONT BLANC LEGEND	1511
	Ralph Lauren	1503
	Giorgio Armani	1484
	Baron	1433
	Mont Blanc	1424
	Montblanc	1424
	Nautica	1391
	Liz Claiborne	1370
	Calvin Klein	1362
	Liz Claiborne	1337
	Azzaro	1337
	Emporio Armani	1333
	Dior	1332
	Armaf	1306
	Viktor & Rolf	1296
	Dior	1243
	Afnan	1242
	Mont Blanc	1234
	Paco Rabanne	1207
	Paco Rabanne	1165
	Unbranded	1146
	Azzaro	1140
	NIKOS	1128
	Salvatore Ferragamo	1047
	Cologne	1044
	Azzaro	1034
	Jean Paul Gaultier	1024
	Lattafa	989
	Ralph Lauren	972
	Giorgio Armani	969    


## Q16. Calculate the sales-to-availability ratio for each product.

SELECT 
    brand,
    sold,
    available,
    ROUND(sold / NULLIF(available, 0), 2) AS sales_inventory_ratio
FROM men_data
ORDER BY sales_inventory_ratio DESC;

	brand	sold	available	sales_inventory_ratio
	Calvin Klein	54052	10	5405.20
	Davidoff	40130	10	4013.00
	Versace	31718	10	3171.80
	Azzaro	30655	10	3065.50
	Tommy Hilfiger	12184	4	3046.00
	Calvin Klein	24048	10	2404.80
	Versace	21310	10	2131.00
	2nd To None	18882	9	2098.00
	Versace	19899	10	1989.90
	Davidoff	13549	10	1354.90
	Kenneth Cole	12865	10	1286.50
	C.K	12739	10	1273.90
	Burberry	12583	10	1258.30
	Paul Sebastian	4934	4	1233.50
	Lacoste	1995	2	997.50
	Versace	9410	10	941.00
	Kenneth Cole	9265	10	926.50
	Dolce & Gabbana	9208	10	920.80
	Paco Rabanne	8877	10	887.70
	Armaf	8385	10	838.50
	Burberry	6188	10	618.80
	Calvin Klein	5582	10	558.20
	Guy Laroche	5500	10	550.00
	Calvin Klein	5377	10	537.70
	Carolina Herrera	3691	7	527.29
	Gucci	5227	10	522.70
	Bentley	5145	10	514.50
	Montblanc	5098	10	509.80
	Karl Lagerfeld	5076	10	507.60
	CURVE	1992	4	498.00
	Yves Saint Laurent	4802	10	480.20
	Dolce&Gabbana	4733	10	473.30
	Ralph Lauren	4520	10	452.00
	Armaf	4460	10	446.00
	Calvin Klein	4427	10	442.70
	Dolce&Gabbana	3787	10	378.70
	Baron	1433	4	358.25
	Ralph Lauren	3171	10	317.10
	Giorgio Armani	3110	10	311.00
	PRADA	2774	10	277.40
	Armaf	2550	10	255.00
	Giorgio Armani	1484	6	247.33
	Myrurgia	8453	36	234.81
	Yves Saint Laurent	2293	10	229.30
	Classic Brands	2256	10	225.60
	Dior	1332	6	222.00
	ISSEY MIYAKE	2206	10	220.60
	Yves Saint Laurent	2153	10	215.30
	Salvatore Ferragamo	785	4	196.25
	Lalique	1866	10	186.60
	Versace	1787	10	178.70
	Azzaro	1691	10	169.10
	Ralph Lauren	1683	10	168.30
	Dior	1243	8	155.38
	Calvin Klein	1536	10	153.60
	MONT BLANC LEGEND	1511	10	151.10
	Mont Blanc	1424	10	142.40
	Versace	270	2	135.00
	Emporio Armani	1333	10	133.30
	Abercrombie & Fitch	916	7	130.86
	Paris Hilton	2093	16	130.81
	Armaf	1306	10	130.60
	Viktor & Rolf	1296	10	129.60
	Afnan	1242	10	124.20
	Paco Rabanne	1165	10	116.50
	Giorgio Armani	578	5	115.60
	Unbranded	1146	10	114.60
	Azzaro	1140	10	114.00
	John Varvatos	453	4	113.25
	NIKOS	1128	10	112.80
	Polo Ralph Lauren	445	4	111.25
	Paco Rabanne	4764	44	108.27
	Nautica	324	3	108.00
	Cologne	1044	10	104.40
	Azzaro	1034	10	103.40
	Jean Paul Gaultier	1024	10	102.40
	Nautica	291	3	97.00
	Giorgio Armani	969	10	96.90
	Armaf	955	10	95.50
	Montblanc	950	10	95.00
	Dolce&Gabbana	566	6	94.33
	Liz Claiborne	7816	83	94.17
	Azzaro	920	10	92.00
	Abercrombie & Fitch	919	10	91.90
	Abercrombie & Fitch	275	3	91.67
	Giorgio Beverly Hills	2817	31	90.87
	SECERTMU	889	10	88.90
	Yves de Sistelle	7253	82	88.45
	Polo	174	2	87.00
	Ralph Lauren	869	10	86.90
	J. Del Pozo	866	10	86.60
	Davidoff	849	10	84.90
	HUGO BOSS	2098	26	80.69
	SECERTMU	803	10	80.30
	Dolce&Gabbana	400	5	80.00
	CHANEL	239	3	79.67
	Giorgio Armani	159	2	79.50
	Carolina Herrera	780	10	78.00
	J. Del Pozo	542	7	77.43
	Armaf	384	5	76.80
	PRADA	755	10	75.50
	Afnan	372	5	74.40
	Giorgio Armani	743	10	74.30
	HERMÃˆS	740	10	74.00
	Bath & Body Works	717	10	71.70
	Cologne	214	3	71.33
	Armaf	712	10	71.20
	Armaf	700	10	70.00
	Giorgio Armani	684	10	68.40
	Old Spice	132	2	66.00
	Creed	655	10	65.50
	Dolce&Gabbana	458	7	65.43
	Abercrombie & Fitch	129	2	64.50
	Versace	4234	66	64.15
	Louis Vuitton	624	10	62.40
	Dumont	187	3	62.33
	Ralph Lauren	615	10	61.50
	J. Del Pozo	612	10	61.20
	Givenchy	601	10	60.10
	Unbranded	594	10	59.40
	Jean Paul Gaultier	594	10	59.40
	Parfums de Marly	593	10	59.30
	Giorgio Armani	588	10	58.80
	PRADA	587	10	58.70
	Yves Saint Laurent	581	10	58.10
	Abercrombie & Fitch	464	8	58.00
	Jean Paul Gaultier	116	2	58.00
	Dolce&Gabbana	573	10	57.30
	BHARARA	512	9	56.89
	Carolina Herrera	2934	53	55.36
	Mirage Brands	552	10	55.20
	Versace	550	10	55.00
	Jean Paul Gaultier	539	10	53.90
	Tommy Hilfiger	269	5	53.80
	Azzaro	644	12	53.67
	Lomani	1630	31	52.58
	Liz Claiborne	3823	73	52.37
	VICTOR MANUELLE	153	3	51.00
	Burberry	254	5	50.80
	Ralph Lauren	507	10	50.70
	Giorgio Armani	99	2	49.50
	Dolce&Gabbana	98	2	49.00
	Yves Saint Laurent	343	7	49.00
	Acqua di Parma	244	5	48.80
	Michael Jordan	488	10	48.80
	Armaf	485	10	48.50
	Sean John	471	10	47.10
	Abercrombie & Fitch	376	8	47.00
	Abercrombie & Fitch	463	10	46.30
	Ralph Lauren	460	10	46.00
	Ralph Lauren	457	10	45.70
	Creed	456	10	45.60
	Louis Vuitton	448	10	44.80
	Versace	221	5	44.20
	Narciso Rodriguez	432	10	43.20
	King	430	10	43.00
	Liz Claiborne	6634	155	42.80
	Armaf	427	10	42.70
	Hermes	418	10	41.80
	Giorgio Armani	410	10	41.00
	Cologne	410	10	41.00
	Giorgio Armani	81	2	40.50
	Halston	4443	113	39.32
	Giorgio Armani	235	6	39.17
	Giorgio Armani	233	6	38.83
	Creed	386	10	38.60
	LLURE SX	114	3	38.00
	Giorgio Armani	300	8	37.50
	Dolce & Gabbana	370	10	37.00
	Kenneth Cole	368	10	36.80
	Paco Rabanne	293	8	36.63
	Giorgio Armani	363	10	36.30
	Unbranded	358	10	35.80
	MetaHerbal Labs	353	10	35.30
	Valentino	350	10	35.00
	Armaf	276	8	34.50
	Cologne	2247	66	34.05
	CHANEL	163	5	32.60
	Prada	322	10	32.20
	Ralph Lauren	225	7	32.14
	Valentino	316	10	31.60
	Giorgio Armani	157	5	31.40
	Paco Rabanne	313	10	31.30
	Gucci	248	8	31.00
	Jacques Bogart	957	31	30.87
	Yves Saint Laurent	210	7	30.00
	Paco Rabanne	60	2	30.00
	Jaguar	2777	93	29.86
	Valentino	295	10	29.50
	Cologne	294	10	29.40
	Versace	1819	62	29.34
	SECERTMU	290	10	29.00
	Calvin Klein	287	10	28.70
	Coach	286	10	28.60
	Polo Ralph Lauren	257	9	28.56
	Salvatore Ferragamo	1047	37	28.30
	Giorgio Armani	280	10	28.00
	Davidoff	264	10	26.40
	Tom Ford	262	10	26.20
	HERMÃˆS	131	5	26.20
	Giorgio Armani	52	2	26.00
	Rasasi	258	10	25.80
	Armaf	76	3	25.33
	Jean Paul Gaultier	248	10	24.80
	Diesel	147	6	24.50
	Tommy Bahama	242	10	24.20
	Salvatore Ferragamo	120	5	24.00
	Carolina Herrera	236	10	23.60
	Giorgio Armani	235	10	23.50
	Giorgio Armani	141	6	23.50
	Designer Series	229	10	22.90
	Giorgio Armani	204	9	22.67
	Cologne	111	5	22.20
	Thierry Mugler	221	10	22.10
	Pheromones	217	10	21.70
	Clinique	86	4	21.50
	Versace	43	2	21.50
	Reyane Tradition	214	10	21.40
	Ed Hardy	6633	311	21.33
	Paco Rabanne	170	8	21.25
	Ralph Lauren	169	8	21.13
	Carolina Herrera	207	10	20.70
	Polo Ralph Lauren	41	2	20.50
	Paco Rabanne	1207	59	20.46
	Boucheron	61	3	20.33
	Armaf	61	3	20.33
	Lalique	202	10	20.20
	Issey Miyake	2465	124	19.88
	Gucci	196	10	19.60
	Creed	39	2	19.50
	Versace	136	7	19.43
	Viktor & Rolf	116	6	19.33
	Guy Laroche	58	3	19.33
	Polo Ralph Lauren	38	2	19.00
	Armaf	57	3	19.00
	Rochas	433	23	18.83
	Unbranded	94	5	18.80
	Dior	129	7	18.43
	Burberry	55	3	18.33
	REYANE TRADITION	73	4	18.25
	HERMÃˆS	292	16	18.25
	Dolce & Gabbana	182	10	18.20
	Cologne	179	10	17.90
	Armaf	179	10	17.90
	Giorgio Armani	179	10	17.90
	Davidoff	71	4	17.75
	Paco Rabanne	849	48	17.69
	Jaguar	3942	224	17.60
	Yves Saint Laurent	35	2	17.50
	Unbranded	172	10	17.20
	English Laundry	169	10	16.90
	Calvin Klein	83	5	16.60
	Gianni Versace	1925	116	16.59
	Coach	248	15	16.53
	Paco Rabanne	165	10	16.50
	KENZO	165	10	16.50
	As picture show	32	2	16.00
	Davidoff	64	4	16.00
	Christian Dior	160	10	16.00
	Lacoste	634	40	15.85
	AS SHOW	157	10	15.70
	Lattafa	156	10	15.60
	Coach	7592	487	15.59
	Guy Laroche	4972	323	15.39
	Myrurgia	3093	202	15.31
	Yves Saint Laurent	91	6	15.17
	Parfums de Marly	151	10	15.10
	Emanuelle Ungaro	226	15	15.07
	Armaf	150	10	15.00
	Liz Claiborne	150	10	15.00
	Givenchy	45	3	15.00
	Montblanc	1424	95	14.99
	Pierre Cardin	149	10	14.90
	Coty	103	7	14.71
	Afnan	147	10	14.70
	Lattafa	44	3	14.67
	Giorgio Armani	132	9	14.67
	Dior	73	5	14.60
	Azzaro	1337	92	14.53
	Yves Saint Laurent	145	10	14.50
	Coty Inc.	72	5	14.40
	Bharara	142	10	14.20
	Lanvin	1955	138	14.17
	Creed	141	10	14.10
	MAISON ALHAMBRA	42	3	14.00
	Lattafa	139	10	13.90
	Giorgio Armani	111	8	13.88
	Dolce & Gabbana	494	36	13.72
	Givenchy	178	13	13.69
	Unbranded	136	10	13.60
	Roja	68	5	13.60
	Yves Saint Laurent	27	2	13.50
	Liz Claiborne	1337	101	13.24
	Montblanc	5032	383	13.14
	Afnan	131	10	13.10
	Christian Dior	129	10	12.90
	Sterling	129	10	12.90
	Azzaro	424	33	12.85
	Dolce&Gabbana	64	5	12.80
	Mont Blanc	125	10	12.50
	Tommy Hilfiger	75	6	12.50
	Calvin Klein	124	10	12.40
	Giorgio Armani	111	9	12.33
	Jean Paul Gaultier	37	3	12.33
	Versace	37	3	12.33
	Kenneth Cole	731	60	12.18
	Giorgio Armani	121	10	12.10
	Dolce&Gabbana	36	3	12.00
	Abercrombie & Fitch	24	2	12.00
	Mary Kay	24	2	12.00
	Armaf	619	52	11.90
	Paco Rabanne	118	10	11.80
	Paco Rabanne	118	10	11.80
	Bharara	47	4	11.75
	Rasasi	140	12	11.67
	Dior	116	10	11.60
	Sean John	116	10	11.60
	Heaven Scents	46	4	11.50
	Ralph Lauren	56	5	11.20
	Calvin Klein	112	10	11.20
	Polo Ralph Lauren	89	8	11.13
	Paco Rabanne	111	10	11.10
	Azzaro	111	10	11.10
	Armaf	110	10	11.00
	~ DOLCE & GABBANA ~	22	2	11.00
	Joop	33	3	11.00
	Paco Rabanne	33	3	11.00
	Nautica	1391	127	10.95
	Cologne	42	4	10.50
	Mirage Brands	105	10	10.50
	Lattafa	989	96	10.30
	Unbranded	103	10	10.30
	Ralph Lauren	103	10	10.30
	Cologne	72	7	10.29
	SECERTMU	102	10	10.20
	AS SHOWN	101	10	10.10
	Giorgio Armani	101	10	10.10
	Paco Rabanne	20	2	10.00
	MontBlanc	30	3	10.00
	Montblanc	100	10	10.00
	Dolce & Gabbana	79	8	9.88
	Paco Rabanne	59	6	9.83
	Burberry	59	6	9.83
	Giorgio Armani	98	10	9.80
	Abercrombie & Fitch	87	9	9.67
	Ard Al Zaafaran	29	3	9.67
	Jean Paul Gaultier	29	3	9.67
	Mont Blanc	454	47	9.66
	Giorgio Armani	47	5	9.40
	As Show	92	10	9.20
	Aramis	2486	272	9.14
	As Shown	45	5	9.00
	Roja	18	2	9.00
	Lattafa	71	8	8.88
	Givenchy	627	71	8.83
	Montblanc	349	40	8.73
	Acqua Di Gio	78	9	8.67
	AS SHOWN	43	5	8.60
	Gucci	68	8	8.50
	Unbranded	68	8	8.50
	Coty	34	4	8.50
	Unbranded	84	10	8.40
	Halloween	25	3	8.33
	Versace	25	3	8.33
	Lattafa	75	9	8.33
	Azzaro	83	10	8.30
	Dolce&Gabbana	81	10	8.10
	Armaf	24	3	8.00
	As Show	24	3	8.00
	Dolce&Gabbana	40	5	8.00
	Yves Saint Laurent	16	2	8.00
	Lalique	24	3	8.00
	Afnan	16	2	8.00
	Multiple Brands	79	10	7.90
	Gucci	78	10	7.80
	Acqua di Parma	78	10	7.80
	Armaf	739	95	7.78
	BHARARA	31	4	7.75
	Territoire	77	10	7.70
	Salvatore Ferragamo	23	3	7.67
	J. Del Pozo	397	52	7.63
	Paco Rabanne	38	5	7.60
	Jovan	330	44	7.50
	YSL	60	8	7.50
	Avon	74	10	7.40
	Ralph Lauren	44	6	7.33
	Jean Paul Gaultier	73	10	7.30
	Dolce&Gabbana	51	7	7.29
	As Show	63	9	7.00
	Azzaro	21	3	7.00
	Afnan	196	28	7.00
	AS SHOWN	34	5	6.80
	Yves Saint Laurent	20	3	6.67
	Hermes	20	3	6.67
	Giorgio Armani	40	6	6.67
	Polo Ralph Lauren	5023	756	6.64
	Viktor & Rolf	66	10	6.60
	Avon	66	10	6.60
	Ralph Lauren	39	6	6.50
	Unbranded	65	10	6.50
	Dolce&Gabbana	13	2	6.50
	Ralph Lauren	32	5	6.40
	Tom Ford	64	10	6.40
	Abercrombie & Fitch	38	6	6.33
	Yves Saint Laurent	19	3	6.33
	PRADA	19	3	6.33
	Armaf	120	19	6.32
	Cologne	25	4	6.25
	Unbranded	62	10	6.20
	Ralph Lauren	31	5	6.20
	king of kings	43	7	6.14
	Liz Claiborne	1370	226	6.06
	AS SHOW	48	8	6.00
	Tommy Bahama	18	3	6.00
	Maison Alhambra	18	3	6.00
	Burberry	36	6	6.00
	Giorgio Armani	18	3	6.00
	PRADA	30	5	6.00
	CHANEL	12	2	6.00
	Mont Blanc	1234	207	5.96
	Moschino	440	74	5.95
	Parfums de Marly	41	7	5.86
	Armaf	501	86	5.83
	Paco Rabanne	40	7	5.71
	Creed	17	3	5.67
	Dior	22	4	5.50
	Maison Alhambra	55	10	5.50
	rue21	22	4	5.50
	Valentino	11	2	5.50
	CHANEL	11	2	5.50
	Armaf	11	2	5.50
	Hugo Boss	87	16	5.44
	Unbranded	27	5	5.40
	Yves Saint Laurent	16	3	5.33
	Brut	48	9	5.33
	Afnan	16	3	5.33
	Gucci	16	3	5.33
	Creed	53	10	5.30
	Giorgio Armani	37	7	5.29
	Ralph Lauren	37	7	5.29
	Dossier	52	10	5.20
	Carolina Herrera	52	10	5.20
	AS SHOW	51	10	5.10
	Dior	51	10	5.10
	SECERTMU	51	10	5.10
	Michael Malul London	51	10	5.10
	Dolce&Gabbana	45	9	5.00
	Tommy Bahama	10	2	5.00
	Paco Rabanne	50	10	5.00
	Mercedes-Benz	15	3	5.00
	Giorgio Armani	15	3	5.00
	Bentley	65	13	5.00
	Yves Saint Laurent	15	3	5.00
	As Show	49	10	4.90
	Burberry	39	8	4.88
	Calvin Klein	348	72	4.83
	As shown	24	5	4.80
	Luxury	272	57	4.77
	Afnan	14	3	4.67
	Clive Christian	14	3	4.67
	Rasasi	37	8	4.63
	As Show	46	10	4.60
	Unbranded	45	10	4.50
	Franck Olivier	9	2	4.50
	Grandeur	44	10	4.40
	Giorgio Armani	35	8	4.38
	Maison Alhambra	39	9	4.33
	Bentley	13	3	4.33
	Ralph Lauren	43	10	4.30
	Afnan	55	13	4.23
	Paco Rabanne	21	5	4.20
	ysl	42	10	4.20
	Carolina Herrera	25	6	4.17
	Roja Dove	25	6	4.17
	Lauren Ralph Lauren	420	102	4.12
	Versace	37	9	4.11
	Tommy Hilfiger	40	10	4.00
	Al Haramain	12	3	4.00
	Carolina Herrera	40	10	4.00
	FM	16	4	4.00
	Valentino	8	2	4.00
	Missoni	12	3	4.00
	Clinique	40	10	4.00
	Ralph Lauren	39	10	3.90
	Ralph Lauren	35	9	3.89
	Bvlgari	31	8	3.88
	Viktor & Rolf	27	7	3.86
	Valentino	23	6	3.83
	Unbranded	19	5	3.80
	Paco Rabanne	38	10	3.80
	Guy Laroche	2345	620	3.78
	Paco Rabanne	37	10	3.70
	Dolce&Gabbana	37	10	3.70
	CHANEL	11	3	3.67
	Lattafa	11	3	3.67
	Paco Rabanne	11	3	3.67
	Yves Saint Laurent	545	150	3.63
	Yves Saint Laurent	720	199	3.62
	Unbranded	18	5	3.60
	Giorgio Armani	28	8	3.50
	SECERTMU	35	10	3.50
	Dolce&Gabbana	21	6	3.50
	Dolce & Gabbana	771	226	3.41
	Giorgio Armani	34	10	3.40
	Moschino	17	5	3.40
	as showed	34	10	3.40
	Paco Rabanne	10	3	3.33
	Lalique	10	3	3.33
	EstÃ©e Lauder	10	3	3.33
	KENZO	33	10	3.30
	As Picture Show	13	4	3.25
	Roja	26	8	3.25
	Giorgio Armani	26	8	3.25
	AS SHOWN	32	10	3.20
	Valentino	32	10	3.20
	Givenchy	32	10	3.20
	Paco Rabanne	19	6	3.17
	AS SHOW	25	8	3.13
	Ralph Lauren	1503	484	3.11
	Kenneth Cole Reaction	31	10	3.10
	Armaf	109	36	3.03
	John Varvatos	485	161	3.01
	Penhaligons	30	10	3.00
	Roja	30	10	3.00
	Michael Malul	18	6	3.00
	Zara	30	10	3.00
	YSL	9	3	3.00
	Jo Malone	6	2	3.00
	Ted Lapidus	9	3	3.00
	Unbranded	6	2	3.00
	AXE	15	5	3.00
	Ralph Lauren	24	8	3.00
	CHANEL	15	5	3.00
	Jean Paul Gaultier	30	10	3.00
	Calvin Klein	30	10	3.00
	Tom Ford	9	3	3.00
	Emporio Armani	6	2	3.00
	Giorgio Armani	15	5	3.00
	Joop	29	10	2.90
	Dolce&Gabbana	17	6	2.83
	Superz Budapest	28	10	2.80
	Ralph Lauren	143	51	2.80
	Unbranded	27	10	2.70
	Ralph Lauren	27	10	2.70
	Valentino	27	10	2.70
	Coach	35	13	2.69
	Aramis	8	3	2.67
	Unbranded	8	3	2.67
	Jimmy Choo	8	3	2.67
	As Show	16	6	2.67
	Avon	26	10	2.60
	Yves Saint Laurent	25	10	2.50
	Azzaro	210	84	2.50
	Paco Rabanne	15	6	2.50
	Polo Ralph Lauren	17	7	2.43
	Davidoff	17	7	2.43
	Zara	12	5	2.40
	Lapidus	24	10	2.40
	Parfums de Marly	19	8	2.38
	Ralph Lauren	14	6	2.33
	Ralph Lauren	14	6	2.33
	Emporio Armani	7	3	2.33
	Armaf	7	3	2.33
	Paco Rabanne	28	12	2.33
	Versace	7	3	2.33
	Jaguar	7	3	2.33
	HERMÃˆS	23	10	2.30
	Carolina Herrera	23	10	2.30
	Paco Rabanne	23	10	2.30
	Giorgio Armani	20	9	2.22
	Unbranded	22	10	2.20
	MFK	13	6	2.17
	Ralph Lauren	972	452	2.15
	Polo Ralph Lauren	15	7	2.14
	Giorgio Armani	19	9	2.11
	Lucianno	21	10	2.10
	Limited Edition	21	10	2.10
	Milestone Perfumes	21	10	2.10
	Polo Ralph Lauren	4	2	2.00
	As Picture Shown	8	4	2.00
	Bentley	6	3	2.00
	Franck Olivier	6	3	2.00
	Michael Malul London	8	4	2.00
	Cartier	48	24	2.00
	Creed	20	10	2.00
	El Ganso	6	3	2.00
	Paul Sebastian	597	310	1.93
	Dossier	19	10	1.90
	Azzaro	19	10	1.90
	Al Wataniah	19	10	1.90
	Carolina Herrera	19	10	1.90
	Roja Parfums	13	7	1.86
	Dolce&Gabbana	13	7	1.86
	Yves Saint Laurent	13	7	1.86
	Carolina Herrera	85	47	1.81
	Abercrombie & Fitch	18	10	1.80
	Paco Rabanne	18	10	1.80
	Dior	16	9	1.78
	Ralph Lauren	229	129	1.78
	Unbranded	17	10	1.70
	EBC	17	10	1.70
	as showed	17	10	1.70
	As shown	17	10	1.70
	John Varvatos	17	10	1.70
	Mercedes-Benz	17	10	1.70
	Armaf	17	10	1.70
	Parfums de Marly	5	3	1.67
	KING OF KINGS	15	9	1.67
	Afnan	5	3	1.67
	Dolce&Gabbana	10	6	1.67
	Calvin Klein	1362	842	1.62
	Dolce&Gabbana	16	10	1.60
	Paco Rabanne	16	10	1.60
	Rasasi	16	10	1.60
	Paco Rabanne	16	10	1.60
	Giorgio Armani	8	5	1.60
	Burberry	16	10	1.60
	Burberry	16	10	1.60
	Dossier	16	10	1.60
	Unbranded	11	7	1.57
	AS PICTURE SHOWN	15	10	1.50
	fragrance	3	2	1.50
	Giorgio Armani	6	4	1.50
	Cologne	15	10	1.50
	Salvatore Ferragamo	9	6	1.50
	Abercrombie & Fitch	3	2	1.50
	Bvlgari	3	2	1.50
	Burberry	3	2	1.50
	Valentino	3	2	1.50
	Bvlgari	15	10	1.50
	Giorgio Armani	9	6	1.50
	Dior	13	9	1.44
	Giorgio Armani	14	10	1.40
	Unbranded	14	10	1.40
	Ralph Lauren	7	5	1.40
	Giorgio Armani	14	10	1.40
	Dolce&Gabbana	14	10	1.40
	Unbranded	8	6	1.33
	Khadlaj	4	3	1.33
	Versace	4	3	1.33
	Calvin Klein	4	3	1.33
	Jimmy Choo	4	3	1.33
	Lattafa	4	3	1.33
	Versace	417	322	1.30
	As Show	10	8	1.25
	Dossier	12	10	1.20
	Bond No. 9	12	10	1.20
	Lacoste	12	10	1.20
	Reyane Tradition	12	10	1.20
	Azzaro	12	10	1.20
	Giorgio Armani	12	10	1.20
	Viktor & Rolf	8	7	1.14
	Yves Saint Laurent	11	10	1.10
	SECERTMU	11	10	1.10
	Ralph Lauren	3	3	1.00
	AS SHOW	5	5	1.00
	Salvatore Ferragamo	10	10	1.00
	Paco Rabanne	3	3	1.00
	Lattafa	10	10	1.00
	Cologne	5	5	1.00
	Yves Saint Laurent	5	5	1.00
	Ralph Lauren	5	5	1.00
	Paco Rabanne	10	10	1.00
	Calvin Klein	3	3	1.00
	Lacoste	9	10	0.90
	Coach	9	10	0.90
	Giorgio Armani	9	10	0.90
	Bond No. 9	9	10	0.90
	Yves Saint Laurent	9	10	0.90
	Yves Saint Laurent	7	8	0.88
	Carolina Herrera	7	8	0.88
	Giorgio Armani	5	6	0.83
	UOMO	8	10	0.80
	Valentino	8	10	0.80
	Ralph Lauren	4	5	0.80
	Roberto Cavalli	8	10	0.80
	Lâ€™OCCITANE	4	5	0.80
	Dior	4	5	0.80
	As Show	15	20	0.75
	Cologne	3	4	0.75
	Moschino	3	4	0.75
	Unbranded	7	10	0.70
	Rasasi	7	10	0.70
	Burberry	7	10	0.70
	Parfums de Marly	7	10	0.70
	Giorgio Armani	6	9	0.67
	Unbranded	6	10	0.60
	Penhaligons	3	5	0.60
	Parfums de Marly	6	10	0.60
	Bvlgari	5	10	0.50
	Jean Paul Gaultier	5	10	0.50
	Yves Saint Laurent	6	12	0.50
	As Shown	5	10	0.50
	As Show	5	10	0.50
	Mercedes-Benz	2	4	0.50
	Dolce&Gabbana	5	10	0.50
	Moschino	5	10	0.50
	Topshelf	4	10	0.40
	Paco Rabanne	4	10	0.40
	Assorted	4	10	0.40
	Fragrance World	1	3	0.33
	GUERLAIN PARIS	1	3	0.33
	MontBlanc	1	3	0.33
	RawChemistry	4	13	0.31
	Rasasi	3	10	0.30
	HERMÃˆS	3	10	0.30
	Unbranded	3	10	0.30
	Maison Alhambra	3	10	0.30
	Dolce & Gabbana	3	10	0.30
	AS SHOW	3	10	0.30
	Paco Rabanne	2	7	0.29
	Lattafa	14	50	0.28
	Penhaligon's	1	4	0.25
	Maison Francis Kurkdjian	6	24	0.25
	Penhaligon's	1	4	0.25
	Paco Rabanne	2	9	0.22
	Mercedes-Benz	7	33	0.21
	Unbranded	2	10	0.20
	Yves Saint Laurent	2	10	0.20
	Paco Rabanne	2	10	0.20
	Giorgio Armani	1	10	0.10
	Victor & Rolf	1	10	0.10
	Alexandria Fragrances	4	39	0.10
	Armaf	 2	22	0.09                   
    
## Q17. Find brands with at least 5 products and average sales above 50.

SELECT 
    brand,
    COUNT(*) AS product_count,
    ROUND(AVG(sold), 2) AS average_sales
FROM men_data
GROUP BY brand
HAVING COUNT(*) >= 5
   AND AVG(sold) > 50
ORDER BY average_sales DESC;

Output:

	brand	product_count	average_sales
	Davidoff	   7	       7849.14
	Calvin Klein   15	       6491.67
	Versace	       18	       5106.89
	Liz Claiborne   6	       3521.67
	Azzaro	        14	       2735.79
	Burberry	    11	       1750.55
	Coach	        5	       1634.00
	Montblanc	    8	       1623.00
	Dolce & Gabbana	7	       1586.71
	Gucci	        6	       972.17
	Armaf	        27	       867.48
	Prada	         6	       747.83
	Carolina Herrera 12	       674.92
	Polo Ralph Lauren	9	   658.78
	Paco Rabanne	37	       506.08
	Dolce&Gabbana	22	       503.55
	Ralph Lauren	32	       502.50
	Yves Saint Laurent	25	   484.36
	Cologne	           13	   358.54
	Salvatore Ferragamo	6	   332.33
	SECERTMU	        7	   311.57
	Abercrombie & Fitch	12	   309.33
	Viktor & Rolf	     5	   302.60
	Dior	             10	   299.90   
	Givenchy	5	296.60
	Jean Paul Gaultier	10	269.50
	Giorgio Armani	50	247.52
	HERMÃˆS	5	237.80
	Creed	8	220.88
	Afnan	10	219.40
	Lattafa	10	151.30
	Parfums de Marly	7	117.43
	Unbranded	27	115.63
	Valentino	10	107.30
	Rasasi	6	76.83
	CHANEL	6	75.17   
    
## Q18. Find the number of perfume listings updated in each month.

SELECT 
    YEAR(lastUpdated) AS year,
    MONTH(lastUpdated) AS month,
    COUNT(*) AS listing_count
FROM men_data
GROUP BY 
    YEAR(lastUpdated),
    MONTH(lastUpdated)
ORDER BY year, month;

Output:  
	year	month	listing_count
	2024	  5	         724              
    

## Q19. Compare the average price of men's and women's perfumes.

SELECT 
    'Men' AS gender,
    ROUND(AVG(price), 2) AS average_price
FROM men_data

UNION ALL

SELECT 
    'Women' AS gender,
    ROUND(AVG(price), 2) AS average_price
FROM women_data;

Output:
	gender	average_price
	Men	       47
	Women	   45.33         

## Q20. Find brands that appear in both men's and women's datasets.

SELECT DISTINCT
    m.brand
FROM men_data m
INNER JOIN women_data w
    ON m.brand = w.brand
ORDER BY m.brand;                  

## Q21. Find the top 3 best-selling perfumes within each brand.

WITH ranked_products AS (
    SELECT
        brand,
        title,
        sold,
        ROW_NUMBER() OVER (
            PARTITION BY brand
            ORDER BY sold DESC
        ) AS rank_no
    FROM men_data
)

SELECT
    brand,
    title,
    sold,
    rank_no
FROM ranked_products
WHERE rank_no =1
ORDER BY brand, rank_no;

Output:

	brand	title	sold	rank_no
	~ DOLCE & GABBANA ~	DOLCE & GABBANA ~ THE ONE EAU DE PARFUM SPRAY For Men 3.3 OZ 100 Ml White Box	22	1
	2nd To None	6 For $19.95 MEN(M) WOMEN(W) & UNISEX(U) Body Oil Fragrances 10 ml Roll On Pure	18882	1
	Abercrombie & Fitch	Abercrombie & Fitch Fierce 3.4 oz /100ml Eau De Cologne For Men Brand New Sealed	919	1
	Acqua Di Gio	Acqua Di Gio By Giorgio Armani EDT for Men 3.4 oz / 100 ml IN SEALED BOX NEW	78	1
	Acqua di Parma	Acqua di Parma Colonia by Acqua di Parma 3.4 oz EDC Cologne for Men New In Box	244	1
	Afnan	Supremacy Not Only Intense by Afnan 3.4 oz EDP Cologne for Men New In Box	1242	1
	Al Haramain	Al Haramain Men's L'Aventure EDP Spray 6.76 oz (Tester) Fragrances 6291100132980	12	1
	Al Wataniah	Al Wataniah Sabah Al Ward EDP M 100ml Boxed	19	1
	Alexandria Fragrances	Alexandria fragrances: BLACK PANTHER INSPIRED BY BVLGARI TYGAR	4	1
	Aramis	Aramis by Aramis EDT Cologne spray for Men 3.7 oz Brand New In Box	2486	1
	Ard Al Zaafaran	Ard Al Zaafaran Men's Midnight Oud EDP Spray 3.4 oz Fragrances 6205413337789	29	1
	Armaf	ARMAF CLUB DE NUIT INTENSE 3.6 oz FOR MEN EDT SOLE OFFICIAL DISTRIBUTOR OF ARMAF	8385	1
	As picture show	New In Box Eau De Parfum Aventus 3.3 /OZ 100 ML Spray For men	32	1
	AS PICTURE SHOWN	Silver Mountain Water Eau De Parfum 3.3 / 3.4 OZ 100 ML Spray For men New In Box	15	1
	AS SHOW	Sauvage Eau De Parfum  3.4 oz / 100 ml EDP Spray For Men New In Seald Box	157	1
	as showed	Mens Fahrenheit Eau De Toilette Cologne Spray 3.4 fl.oz 100 ML New in Box Sealed	34	1
	AS SHOWN	Mans Sauvage Eau de Toilette 3.4 Oz 100ml Parfum Spray Brand New Sealed In box	101	1
	Assorted	6x Cologne Sampler Lot of Designer Fragrance Samples for Men - NEW	4	1
	Avon	AVON Fullspeed Eau de Toilette 75ml - 2.5 fl.oz Full Speed	74	1
	AXE	6 - AXE Fragrance Premium Body Spray 1 oz - Black Vanilla + $3 OFF Retail	15	1
	Azzaro	Chrome by Azzaro 6.7 / 6.8 oz EDT Cologne for Men New In Box	30655	1
	Baron	THE BARON by BARON 4.5 oz EDC For Men New in Box	1433	1
	Bath & Body Works	X1 Bath & Body Works Men's Collection Cologne for Men 3.4 oz Full Sz CHOOSE ONE	717	1
	Bentley	Bentley Intense by Bentley 3.4 oz EDP Cologne for Men New In Box	5145	1
	BHARARA	BHARARA KING men 3.4 Oz Eau de Parfum spray NEW IN BOX	512	1
	Bond No. 9	Greenwich Village Bond No 9 Handmade Stronger With Pheromones For Sexual Allure!	12	1
	Boucheron	Jaipur Homme / Boucheron EDP Spray 3.4 oz (m) (100 ml)	61	1
	Brut	Brut Original EDT Cologne for Men 3.4 oz Brand New In Box	48	1
	Burberry	Burberry Touch by Burberry EDT Cologne for Men 3.3 / 3.4 oz Brand New Tester	12583	1
	Bvlgari	NEW Men's EDT Bvlgari Pour Homme Eau De Toilette Spray 3.4 fl oz Sealed in Box	31	1
	C.K	Eternity by Calvin Klein 3.4 oz EDT Cologne for Men Brand New Tester	12739	1
	Calvin Klein	Ck One by Calvin Klein Cologne Perfume Unisex 3.4 oz New In Box	54052	1
	Carolina Herrera	212 VIP by Carolina Herrera * Cologne for Men * 3.4 oz * BRAND NEW IN BOX	3691	1
	Cartier	DECLARATION by Cartier edt Cologne 3.3 oz / 3.4 oz New tester	48	1
	CHANEL	Chanel Bleu De Chanel PARFUM Pour Homme Men's Sample Spray .05oz, 1.5ml	239	1
	Christian Dior	SAUVAGE by Christian Dior EDP For Men 6.8 oz / 200 ml *NEW IN SEALED BOX*	160	1
	Classic Brands	Pure Instinct Pheromone Cologne For Him,Sex Attractant, Men's Best Pheromone 1oz	2256	1
	Clinique	CLINIQUE HAPPY Pour Homme Cologne edt for Men 3.4 oz 3.3 NEW in Box	86	1
	Clive Christian	Jump Up And Kiss Me Hedonistic (2021) by Clive Christian 2ml Vial Spray New	14	1
	Coach	COACH NEW YORK by Coach cologne for men EDT 3.3 / 3.4 oz New In Box	7592	1
	Cologne	GIVENCHY POUR HOMME Cologne for Men 3.4 oz / 3.3 oz EDT New in Box	2247	1
	Coty	PLAYBOY HOLLYWOOD Cologne by Coty 3.4 oz Eau de Toilette Spray for Men NEW INBOX	103	1
	Coty Inc.	Adidas Moves for Him Body Fragrance for Men, 2.5 Fl Oz, Liquid, Grapefruit	72	1
	Creed	Creed Aventus Men Eau De Parfum Vial Spray SIZE 2.5 ml On Card NEW	655	1
	CURVE	Curve Chill by Liz Claiborne Cologne for Men 4.2 oz New In Box	1992	1
	Davidoff	Cool Water by Davidoff 4.2 oz EDT Cologne for Men New In Box	40130	1
	Designer Series	Free Shipping PERFUME For Men BLUE 100ml 3.4fl.oz Long Lasting Fragrance Cologne	229	1
	Diesel	DIESEL ONLY THE BRAVE STREET by DIESEL cologne EDT 2.5 oz New	147	1
	Dior	Sauvage Dior Eau De Parfum MINATURE 10ml / 0.34 oz ...	1332	1
	Dolce & Gabbana	Light Blue by Dolce & Gabbana 4.2 oz Cologne for Men Tester with Cap	9208	1
	Dolce&Gabbana	The One by Dolce & Gabbana 5 / 5.0 oz EDT Cologne for Men New In Box	4733	1
	Dossier	Dossier Musky Oakmoss Eau de Parfum Natural Fragrance 1.7 Oz Cologne New no Box	52	1
	Dumont	Dumont Men's Nitro Red EDP Spray 3.4 oz Fragrances 3760060761880	187	1
	EBC	Long Lasting Fire Cologne for Men (Inspired by Fahrenheit) 3.4oz/100ml	17	1
	Ed Hardy	Ed Hardy Hearts & Daggers 3.4 oz edt Cologne Spray for Men New in Box	6633	1
	El Ganso	El Ganso Bravo Monsieur Eau De Toilette EDT  4.2 oz 125 ml Cologne New	6	1
	Emanuelle Ungaro	Diva by Emanuel Ungaro 3.4 oz for Women edp New in Box	226	1
	Emporio Armani	Emporio Armani Stronger With You by Giorgio Armani 3.4 oz Cologne for Men NIB	1333	1
	English Laundry	Oxford Bleu by English Laundry, 3.4 oz EDP Spray for Men	169	1
	EstÃ©e Lauder	Pleasures by Estee Lauder 1.7 oz / 50 ml Cologne Spray for Men	10	1
	FM	New Frederic Malle CARNAL FLOWER Dominique Ropion MINI Travel Spray .12oz/3.5ml	16	1
	fragrance	YSL Yves Saint Laurent Y Eau de Perfume Spray Cologne For Men 3.3 oz 100ML	3	1
	Fragrance World	Fragrance World Men's Imperium EDP Spray 3.4 oz Fragrances 6291108326763	1	1
	Franck Olivier	Franck Olivier Men's Pure Homme EDT Spray 3.4 oz Fragrances 3516642062117	9	1
	Gianni Versace	VERSACE L' HOMME edt 3.3 / 3.4 oz Cologne for Men New in Box	1925	1
	Giorgio Armani	Versace Pour Homme Oud Noir 3.4 oz EDP Cologne for Men New In Box	3110	1
	Giorgio Beverly Hills	RED by Giorgio Beverly Hills 3.3 / 3.4 oz EDT For Men New in BOX	2817	1
	Givenchy	PI by Givenchy cologne for men EDT 3.3 / 3.4 oz New Tester	627	1
	Grandeur	Tribal Intense by Grandeur - Eau de Parfum for Men -100ml (3.4oz)	44	1
	Gucci	GUCCI GUILTY POUR HOMME * Cologne for Men * EDT * 3.0 oz * BRAND NEW IN BOX	5227	1
	GUERLAIN PARIS	EAU DE COLOGNE IMPERIALE by GUERLAIN | Menâ€™s 100 ml/3.4 FL OZ | AS PICTURE SHOWN	1	1
	Guy Laroche	Drakkar Noir by Guy Laroche 3.4 oz EDT Cologne for Men New In Box	5500	1
	Halloween	Halloween Men's Man Mystery EDP 4.2 oz (Tester) Fragrances 8431754008615	25	1
	Halston	Halston Z -14 by Halston Cologne 4.2 oz EDC For Men New tester	4443	1
	Heaven Scents	Taj Perfume 100 ML by Heaven Scents Arabian Fragrance made in Dubai  Perfuma	46	1
	HERMÃˆS	Terre D'hermes by Hermes 6.7 oz EDT Cologne for Men New In Box	740	1
	Hermes	mini Terre D'Hermes by Hermes 0.17 oz EDT Cologne for Men Brand New In Box	418	1
	HUGO BOSS	BOSS # 6 UNLIMITED by HUGO BOSS Cologne EDT Men 3.3 / 3.4 oz NO SIX NEW IN BOX	2098	1
	Issey Miyake	L'EAU D'ISSEY By Issey Miyake cologne for him EDT 6.7 / 6.8 oz New in Box	2465	1
	J. Del Pozo	HALLOWEEN MAN X EDT 4.2 OZ / 125 ML FOR MEN (NEW IN WHITE BOX)	866	1
	Jacques Bogart	ONE MAN SHOW HIGHLY CONCENTRATED by Jacques Bogart Cologne 3.3 / 3.4 oz NEW IN B	957	1
	Jaguar	JAGUAR CLASSIC BLACK by Jaguar cologne for men EDT 3.3 / 3.4 oz New in Box	3942	1
	Jean Paul Gaultier	Jean Paul Gaultier Le Male LE PARFUM 4.2 oz. Eau de Parfum INTENSE Spray. NO BOX	1024	1
	Jimmy Choo	Jimmy Choo Man Ice / Jimmy Choo EDT Spray 3.3 oz (100 ml) (m)	8	1
	Jo Malone	Jo Malone Cypress & Grapevine by Jo Malone Cologne Intense Spray 1.7 oz for Men	6	1
	John Varvatos	ARTISAN by John Varvatos 4.2 oz edt Men's Cologne New tester	485	1
	Joop	Joop! Men's JOOP! Homme Le Parfum EDP Spray 4.2 oz Fragrances 3616303040512	33	1
	Jovan	Jovan Platinum Musk by Jovan cologne for men EDC 3.0 oz New in Box	330	1
	Karl Lagerfeld	Lagerfeld Classic by Lagerfeld 5 oz EDT Cologne for Men New In Box	5076	1
	Kenneth Cole	KENNETH COLE BLACK Cologne for Men 3.4 oz EDT Spray New in Box	12865	1
	Kenneth Cole Reaction	Kenneth Cole Reaction 3.4 new without box	31	1
	KENZO	Kenzo Homme 3.7 oz/ 110 ml Eau de Toilette Intense Spray for Men. New Sealed Box	165	1
	Khadlaj	Khadlaj Karus Blu Spice 3.4 EDP New ðŸ†•	4	1
	King	Bharara King Eau De Parfum Men 3.4 Oz	430	1
	king of kings	King of Kings Royal Blue Parfum 3.4 oz for Men is a wonderful men's fragrance	43	1
	Lâ€™OCCITANE	L'Occitane En Provence Eau Des Baux EDT 3.4 oz 100 ml Eav Des Bavx New Original	4	1
	Lacoste	Lacoste Eau De Lacoste Blanc L.12.12 Cologne for Men 5.9 / 6 oz New In Box	1995	1
	Lalique	Encre Noire by Lalique Cologne for Men EDT 3.3 / 3.4 oz New In Box	1866	1
	Lanvin	LANVIN L'Homme by Lanvin Cologne L Homme for Men 3.4 oz EDT New in Box	1955	1
	Lapidus	LAPIDUS Pour Homme By Ted Lapidus Eau De Toilette 3.3 oz / 100 ml For Men	24	1
	Lattafa	Qaed Al Fursan by Lattafa perfume for unisex EDP 3.04 oz New in Box	989	1
	Lauren Ralph Lauren	Ralph's Club by Ralph Lauren cologne for men EDP 3.3 / 3.4 oz New in Box	420	1
	Limited Edition	Armaf Club De Nuit Intense Man Limited Edition 3.6oz Pure Parfum 2023 Packaging	21	1
	Liz Claiborne	Curve Crush by Liz Claiborne 4.2 oz Cologne for Men Brand New Tester	7816	1
	LLURE SX	LLURE SX HUMAN PHERAMONES #1 FRAGRANCE FOR MEN TO ATTRACT BEAUTIFUL WOMEN	114	1
	Lomani	AB SPIRIT MILLIONAIRE by Lomani men 3.3 oz 3.4 edt cologne NEW IN BOX	1630	1
	Louis Vuitton	Louis Vuitton Meteore Eau de Parfum Sample Spray - 2ml/0.06oz	624	1
	Lucianno	Lucianno California Vibe M 100ml Boxed	21	1
	Luxury	Luxury by New Brand cologne for men EDT 3.3 /3.4 oz New In Box	272	1
	Maison Alhambra	Maison Alhambra Men's Victorioso Victory EDP Spray 3.4 oz Fragrances	55	1
	Maison Francis Kurkdjian	Maison Francis Kurkdjian Amyris Homme 2.4oz Eau de Toilette	6	1
	Mary Kay	Mary Kay Domain Menâ€™s Cologne	24	1
	Mercedes-Benz	Mercedez Benz Club Black 3.3 oz EDT Spray Mens Cologne 100ml NIB	17	1
	MetaHerbal Labs	Arouse-Rx #1 Best Uncented Sex Pheromones For Men That Work 2 Attract Women	353	1
	MFK	AQUA MEDIA COLOGNE FORTE 70 ML / 2.4 oz NEW BOX	13	1
	Michael Jordan	Michael Jordan Legend by Michael Jordan 3.4 oz Cologne Spray for Men New In Box	488	1
	Michael Malul	Citizen Jack Absolute by Micheal Malul for Men 3.4 FL OZ. Eau De Parfum	18	1
	Michael Malul London	Michael Malul Ocean Noir 3.4 oz / 100 ml eau de parfum for men Spray New	51	1
	Milestone Perfumes	Intimation By Milestone Eau de Parfum 3.4 oz Men	21	1
	Mirage Brands	Azure Noir Intense Men's 3.4 Oz EDT Spray Long Lasting Perfume	552	1
	Missoni	Missoni Men's Pour Homme EDP Spray 3.4 oz (Tester) Fragrances 8011003841431	12	1
	Mont Blanc	Starwalker by Mont Blanc 2.5 oz EDT Cologne for Men Brand New Tester	1424	1
	MONT BLANC LEGEND	MONT BLANC LEGEND SPIRIT EDT 3.3 OZ FOR MEN WITH CAP NEW IN WHITE BOX	1511	1
	Montblanc	Mont Blanc Legend Spirit 6.7 oz EDT Cologne for Men New In Box	5098	1
	Moschino	Uomo Moschino by Moschino 4.2 oz EDT Cologne for Men New In Box	440	1
	Multiple Brands	Men's Perfume Sampler 10pcs Sample Vials Designer Fragrance Samples for Men	79	1
	Myrurgia	YACHT MAN RED by Myrurgia 3.3 / 3.4 oz EDT Cologne for Men New in Box	8453	1
	Narciso Rodriguez	Bleu Noir by Narciso Rodriguez 3.3 3.4 oz EDP Cologne for Men New In Box	432	1
	Nautica	NAUTICA VOYAGE cologne for men EDT 6.7 oz 6.8 New in Box	1391	1
	NIKOS	Sculpture Homme by Nikos 3.4 oz EDT Cologne for Men Brand New Tester	1128	1
	Old Spice	Old Spice Cologne Spray for Men,Classic Scent,4.25 fl oz Free Shipping Pack Of 2	132	1
	Paco Rabanne	1 Million by Paco Rabanne 3.4 oz EDT Cologne for Men New Tester	8877	1
	Parfums de Marly	Parfums de Marly Layton by Parfums de Marly, 2.5 oz EDP Spray men	593	1
	Paris Hilton	PARIS HILTON edt Cologne Spray 3.4 oz 3.3 Men New in RETAIL Box	2093	1
	Paul Sebastian	PS by Paul Sebastian Cologne for Men 8 / 8.0 oz Brand New In Box	4934	1
	Penhaligon's	Penhaligon's The Tragedy of Lord George 2.5oz EDP Spray Men's Perfume	30	1
	Pheromones	PHEROMONE SPRAY COLOGNE for MEN *ATTRACT WOMEN! 52X ***NEW***	217	1
	Pierre Cardin	Pierre Cardin Fusion Men's Eau de Toilette Spray. Cool Scent. New in box. 1.7 oz	149	1
	Polo	Polo Double Black by Ralph Lauren for Men EDT Spray 4.2 oz / 125 ml New In Box	174	1
	Polo Ralph Lauren	POLO SPORT Ralph Lauren 4.2 oz Cologne for Men EDT New in Box	5023	1
	PRADA	Prada Luna Rossa by Prada 3.4 oz EDT Cologne for Men New In Box	2774	1
	Ralph Lauren	Polo Green by Ralph Lauren Cologne for Men 4 / 4.0 oz Brand New In Box	4520	1
	Rasasi	Rasasi Men's Hawas EDP Spray 3.4 oz Fragrances 614514331026	258	1
	RawChemistry	FOR HIM by RAW CHEMISRTY 30ml/1oz Peromone Cologne Spray	4	1
	Reyane Tradition	Insurrection II Sport by Reyane Tradition cologne for men EDT 3.0 oz New in Box	214	1
	Roberto Cavalli	Roberto Cavalli Men's Uomo EDT Spray 3.4 oz (100 ml) Sealed	8	1
	Rochas	L'homme Rochas by Rochas cologne EDT 3.3 / 3.4 oz New Tester	433	1
	Roja	Roja Parfums Elysium Pour Homme Parfum Cologne Sample Spray .06oz, 1.7ml in Card	68	1
	Roja Dove	Roja Dove Harrods Aoud Parfum Cologne 3.4oz 100ml For Unisex New In Box	25	1
	Roja Parfums	Roja Danger by Roja Parfums Extrait De Parfum 3.4 oz EDP Spray Men's New in Box	13	1
	rue21	Rue 21 CJ Black Cologne Spray  1.7 fl. Oz  New Without Box	22	1
	Salvatore Ferragamo	F by Ferragamo Pour Homme cologne EDT 3.3 / 3.4 oz New in Box	1047	1
	Sean John	Sean John Unforgivable for Men EDT Cologne 4.2 oz	471	1
	SECERTMU	New 2024 Sexy Cologne Cupid Hypnosis Long Lasting Pheromone Perfume for Men	889	1
	Sterling	Club De Nuit Urban Elixir by Armaf, 3.6 oz EDP Spray for Men	129	1
	Superz Budapest	MOROCCO BY SUPERZ BUDAPEST 50ML/ 1.69 OZ EXTRAIT DE PARFUM USA SELLER	28	1
	Ted Lapidus	Ted Lapidus Men's Poker Face EDT 3.4 oz Fragrances 3355992008341	9	1
	Territoire	Territoire Gold 79 Eau de Parfum Spray for Men. Smooth & Spicy Scent. 3.4 fl.oz	77	1
	Thierry Mugler	Mugler Cologne Come Together by Thierry Mugler 3.3 oz EDT Spray in Sealed Box	221	1
	Tom Ford	Tom Ford Noir Extreme by Tom Ford 3.4 oz EDP Cologne for Men New In Box	262	1
	Tommy Bahama	Maritime Deep Blue by Tommy Bahama 4.2 oz Cologne for Men New in Box	242	1
	Tommy Hilfiger	TOMMY BOY EST 1985 by Tommy Hilfiger Cologne edt men 3.4 / 3.3 oz NEW in BOX	12184	1
	Topshelf	Topshelf Love Bombed- Pheromone Cologne for Men Attraction & Confidence (50 ml)	4	1
	Unbranded	PERFUME Cologne for MEN Long Lasting Fragrance 100ML 3.4 Oz Gift Fast PARFUM	1146	1
	UOMO	Valentino Uomo EDT Perfume For Men 3.4oz / 100ml Spray *NEW IN BOX*	8	1
	Valentino	Valentino Uomo Born In Roma Coral Fantasy 3.4 oz EDT Cologne New In Box	350	1
	Versace	Versace Eros by Gianni Versace 3.4 oz EDT Cologne for Men Tester	31718	1
	Victor & Rolf	Victor & Rolf Spicebomb Extreme EDP 1.7 oz/ 50 ML  Spray For Men	1	1
	VICTOR MANUELLE	VICTOR MANUELLE GOLD EAU DE PARFUM SPRAY FOR MEN 3.4 Oz / 100 ml BRAND NEW!!!	153	1
	Viktor & Rolf	Spicebomb Extreme by Viktor & Rolf 3.04 oz EDP Cologne for Men New In Box	1296	1
	YSL	YSL Y EDT cologne for men Eau de Toilette EDT 3.3 / 3.4 oz New With Box	60	1
	Yves de Sistelle	THALLIUM by YVES DE SISTELLE Men Cologne 3.3 oz edt 3.4 New in Box	7253	1
	Yves Saint Laurent	La Nuit De L'homme by Yves Saint Laurent YSL Cologne Men 3.3 3.4 oz New In Box	4802	1
	Zara	ZARA Sunrise On The Red Sand Dunes (Mylene Alran) 1.01oz (30ml) EDP Spray SEALED	30	1         
    

## Q22. Rank brands based on total estimated revenue.

WITH brand_revenue AS (
    SELECT
        brand,
        SUM(price * sold) AS total_revenue
    FROM men_data
    GROUP BY brand
)

SELECT
    brand,
    ROUND(total_revenue, 2) AS total_revenue,
    DENSE_RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS revenue_rank
FROM brand_revenue
ORDER BY revenue_rank;  

Output:
	brand	total_revenue	revenue_rank
	Versace	3448559.56	1
	Calvin Klein	2487856.47	2
	Azzaro	1672726.65	3
	Davidoff	1570975.76	4
	Yves Saint Laurent	910394.55	5
	Armaf	847410.14	6
	Paco Rabanne	840033.76	7
	Ralph Lauren	726025.74	8
	Giorgio Armani	634752.9	9
	Dolce&Gabbana	596170.31	10
	Burberry	573215.86	11
	Kenneth Cole	566241.94	12
	Montblanc	546805.48	13
	Liz Claiborne	483685.89	14
	Carolina Herrera	412849.58	15
	Prada	409306.09	16
	C.K	366246.25	17
	Dolce & Gabbana	362580.04	18
	Gucci	334300.52	19
	Tommy Hilfiger	325451.64	20
	Coach	295156.02	21
	Guy Laroche	282160	22
	Issey Miyake	256509.26	23
	Creed	204889.92	24
	Polo Ralph Lauren	196665.14	25
	Jean Paul Gaultier	196510	26
	Dior	183137.7	27
	Abercrombie & Fitch	161841.56	28
	Bentley	152226.38	29
	Yves de Sistelle	143246.75	30
	Paul Sebastian	138998.04	31
	Cologne	135579.92	32
	Ed Hardy	134318.25	33
	Lacoste	130046.02	34
	Karl Lagerfeld	127407.6	35
	2nd To None	125565.3	36
	Viktor & Rolf	124329.09	37
	Parfums de Marly	114124.98	38
	Myrurgia	112847.47	39
	Jaguar	104258.9	40
	Mont Blanc	101026.03	41
	Hugo Boss	99950.33	42
	Emporio Armani	96964.21	43
	Valentino	95416.87	44
	HERMÃˆS	94886.09	45
	Afnan	76344.44	46
	J. Del Pozo	76194.52	47
	Halston	68910.93	48
	Givenchy	67578.77	49
	Lalique	62029.14	50
	Nautica	56719.8	51
	Unbranded	55790.25	52
	Salvatore Ferragamo	54186.69	53
	Paris Hilton	53350.57	54
	Aramis	52390.78	55
	MONT BLANC LEGEND	50618.5	56
	Gianni Versace	48952.75	57
	Christian Dior	46495.11	58
	Giorgio Beverly Hills	45184.68	59
	Bharara	43515.42	60
	Baron	40668.54	61
	Classic Brands	40359.84	62
	Tom Ford	39322.29	63
	AS SHOW	36832.41	64
	Lanvin	35170.45	65
	CURVE	33505.44	66
	King	32164	67
	Lattafa	32110.64	68
	John Varvatos	30022.81	69
	Lomani	26715.7	70
	SECERTMU	25707.07	71
	Narciso Rodriguez	25526.88	72
	Louis Vuitton	21658.4	73
	Rasasi	21505.12	74
	Bath & Body Works	20032.98	75
	Lauren Ralph Lauren	19194	76
	Acqua di Parma	18940.78	77
	AS SHOWN	17357.19	78
	Sean John	17024.13	79
	MetaHerbal Labs	14102.35	80
	NIKOS	13795.44	81
	Jacques Bogart	13369.29	82
	Thierry Mugler	13257.79	83
	Roja	12529.06	84
	REYANE TRADITION	12050.92	85
	Moschino	10880.35	86
	Michael Jordan	10633.52	87
	Rochas	10630.15	88
	KENZO	10459.02	89
	Dumont	9348.13	90
	Mirage Brands	8976.72	91
	Tommy Bahama	8627.18	92
	CHANEL	8440.16	93
	As picture show	7704.55	94
	Polo	7271.46	95
	Emanuelle Ungaro	7207.14	96
	Pheromones	7150.15	97
	Hermes	6656.24	98
	Heaven Scents	6439.54	99
	English Laundry	6197.23	100
	VICTOR MANUELLE	6118.47	101
	Michael Malul London	5315.53	102
	YSL	5135.31	103
	Sterling	5028.42	104
	Avon	4836.38	105
	king of kings	4639.42	106
	LLURE SX	4440.3	107
	Maison Alhambra	3987.98	108
	Superz Budapest	3500	109
	Penhaligon's	3459.66	110
	Jovan	3362.7	111
	Roja Dove	3249.75	112
	Luxury	2902.24	113
	Designer Series	2885.4	114
	Cartier	2862.24	115
	Bvlgari	2769.61	116
	As Picture Shown	2689.77	117
	Old Spice	2638.68	118
	Clinique	2610.34	119
	Diesel	2499	120
	Dossier	2246.48	121
	Boucheron	2006.29	122
	Joop	1952.7	123
	Mercedes-Benz	1911.89	124
	Zara	1832.4	125
	Grandeur	1671.56	126
	as showed	1641.35	127
	Coty	1603.57	128
	MFK	1559.87	129
	Michael Malul	1439.82	130
	Lucianno	1386	131
	Limited Edition	1375.5	132
	Territoire	1269.73	133
	Acqua Di Gio	1247.22	134
	~ DOLCE & GABBANA ~	1209.78	135
	Multiple Brands	1184.21	136
	Pierre Cardin	1084.72	137
	Roja Parfums	1039.87	138
	Al Wataniah	950	139
	Maison Francis Kurkdjian	840	140
	Halloween	751.75	141
	Mary Kay	720	142
	Kenneth Cole Reaction	712.69	143
	Brut	666.72	144
	Coty Inc.	663.12	145
	Topshelf	559.96	146
	rue21	550	147
	Ard Al Zaafaran	517.65	148
	Lapidus	486	149
	Al Haramain	462.36	150
	UOMO	439.92	151
	Milestone Perfumes	417.69	152
	Jo Malone	383.94	153
	Bond No. 9	377.58	154
	Missoni	360.84	155
	Jimmy Choo	353.32	156
	Roberto Cavalli	343.6	157
	El Ganso	336	158
	Franck Olivier	276.21	159
	FM	269.6	160
	Ted Lapidus	257.85	161
	Lâ€™OCCITANE	236	162
	EBC	229.5	163
	Khadlaj	219.44	164
	EstÃ©e Lauder	199.9	165
	Clive Christian	182	166
	AXE	179.85	167
	fragrance	140.97	168
	RawChemistry	123.8	169
	GUERLAIN PARIS	100	170
	Victor & Rolf	74.59	171
	Assorted	71.8	172
	Fragrance World	27.99	173
	Alexandria Fragrances	12	174 
    
-- Q22. Compare men's and women's sales for brands appearing in both datasets.

WITH men_sales AS (
    SELECT
        brand,
        SUM(sold) AS men_sold
    FROM men_data
    GROUP BY brand
),

women_sales AS (
    SELECT
        brand,
        SUM(sold) AS women_sold
    FROM women_data
    GROUP BY brand
)

SELECT
    m.brand,
    m.men_sold,
    w.women_sold,
    m.men_sold - w.women_sold AS sales_difference
FROM men_sales m
INNER JOIN women_sales w
    ON m.brand = w.brand
ORDER BY sales_difference DESC;

Output:
	brand	              men_sold	women_sold	sales_difference
	Versace	               91924	       666	       91258
	Davidoff               54944	       291	       54653
	Yves Saint Laurent	   12109	       203	       11906
	Dolce&Gabbana	       11078	       54	       11024
	Dolce & Gabbana	       11107	       1613	       9494
	Coach	               8170	           792	       7378
	Carolina Herrera	   8099	           1029	       7070
	Gucci	               5833	           35	       5798
	Prada	               4487	           38	       4449
	Unbranded	           3122	           38	       3084
	Lattafa	               1513	           174	       1339
	Viktor & Rolf	       1513	           798	       715
	Parfums de Marly	   822	           179	       643
	AS SHOW	               609	           27	       582
	Narciso Rodriguez	   432	           87	       345
	AS SHOWN	           301	           154	       147
	Roja	               142	           37	       105
	YSL	                   111	           25	       86
	Khadlaj	               4	           52	       -48  
    
# Q23. Find products with both above-average price and above-average sales.

SELECT
    brand,
    price,
    sold
FROM men_data
WHERE price > (
    SELECT AVG(price)
    FROM men_data
)
AND sold > (
    SELECT AVG(sold)
    FROM men_data
)
ORDER BY sold DESC;

Output:

	brand	price	sold
	Paco Rabanne	47.99	8877
	Gucci	58.46	5227
	Montblanc	52.62	5098
	Yves Saint Laurent	70.65	4802
	Dolce&Gabbana	63.69	4733
	Dolce&Gabbana	53.45	3787
	Carolina Herrera	59.43	3691
	Ralph Lauren	72.56	3171
	Giorgio Armani	55.16	3110
	PRADA	84.73	2774
	Armaf	54.26	2550
	Issey Miyake	54.92	2465
	Yves Saint Laurent	92.56	2293
	ISSEY MIYAKE	54.91	2206
	Yves Saint Laurent	71.98	2153
	Lacoste	54.5	1995
	Versace	66.39	1819
	Ralph Lauren	52.97	1683
	Emporio Armani	71.98	1333
	Viktor & Rolf	86.72	1296
	Dior	89.98	1243
	Paco Rabanne	70.08	1165
	Jean Paul Gaultier	94.99	1024
	Giorgio Armani	48.95	969        
    
# Q24. Find which price segment generates the highest revenue.

WITH price_segment AS (
    SELECT
        brand,
        title,
        price,
        sold,
        CASE
            WHEN price < 30 THEN 'Budget'
            WHEN price < 70 THEN 'Mid-Range'
            WHEN price < 150 THEN 'Premium'
            ELSE 'Luxury'
        END AS segment
    FROM men_data
)

SELECT
    segment,
    COUNT(*) AS product_count,
    SUM(sold) AS total_sold,
    ROUND(SUM(price * sold), 2) AS total_revenue
FROM price_segment
GROUP BY segment
ORDER BY total_revenue DESC;

Output:

	segment	     product_count	total_sold	total_revenue
	Mid-Range      303	           282307	12100396.58
	Budget	       284	           381588	8394905.74
	Premium	       123	           33022	2777774.29
	Luxury	        14	           1962	    364470.56    
    
#Q25 Combine both datasets and compare men's and women's perfume performance based on product count, total sales,
 average price, inventory, and estimated revenue.

WITH combined_data AS (

    SELECT
        'Men' AS gender,
        brand,
        title,
        type,
        price,
        available,
        sold
    FROM men_data

    UNION ALL

    SELECT
        'Women' AS gender,
        brand,
        title,
        type,
        price,
        available,
        sold
    FROM women_data

)

SELECT
    gender,
    COUNT(*) AS total_products,
    SUM(sold) AS total_sold,
    ROUND(AVG(price), 2) AS average_price,
    SUM(available) AS total_inventory,
    ROUND(SUM(price * sold), 2) AS estimated_revenue,
    ROUND(AVG(sold), 2) AS average_sales_per_product
FROM combined_data
GROUP BY gender
ORDER BY estimated_revenue DESC;

Output:

	gender	total_products	total_sold	average_price	total_inventory	estimated_revenue	average_sales_per_product
	Men	       724	          698879	    47	             15693	       23637547.17	         965.30
	Women	   55	          9709	        45.33	         779	       337116.65	         176.53                    */