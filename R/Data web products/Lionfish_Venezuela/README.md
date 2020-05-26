Lionfish on the Caribbean Sea analysis:
================

## Introduction

*Pterois* is a genus of venomous marine fish, commonly known as
**lionfish**, native to the **Indo-Pacifi**c. Also called zebrafish,
firefish, turkeyfish, tastyfish or butterfly-cod, it is characterized by
conspicuous warning coloration with red, white, creamy, or black bands,
showy pectoral fins, and venomous spiky fin rays. Pterois radiata,
Pterois volitans, and Pterois miles are the most commonly studied
species in the genus. Pterois species are popular aquarium fish.\*\* P.
volitans and P. miles are recent and significant invasive species\*\* in
the **west Atlantic, Caribbean Sea and Mediterranean Sea.**
[Wikipedia](https://en.wikipedia.org/wiki/Pterois)

<img src="images/red_lionfish.jpg" width="1000px" />

### Long themrs effect of invasion:

Lionfish have **successfully pioneered the coastal waters of the
Atlanticand the carribbean sea** in less than a decade and pose a major
threat to reef ecological systems in these areas. A study comparing
their abundance from Florida to North Carolina with several species of
groupers found they were second only to the native scamp grouper and
equally abundant to the graysby, gag, and rock hind. This could be due
to a surplus of resource availability resulting from the overfishing of
lionfish predators like grouper.

Although the lionfish has not expanded to a population size currently
causing major ecological problems, their invasion in the coastal waters
could lead to serious problems in the future. One likely **ecological
impact caused by Pterois** could be their impact on **prey population
numbers** by directly **affecting food web relationships**. This could
ultimately lead to **reef deterioration** and could **negatively
influence Atlantic and carribean trophic cascade**. Lionfish have
already been shown to **overpopulate reef areas** and display aggressive
tendencies, **forcing native species to move to waters where conditions
might be less than desirable**.

Since lionfish thrive so well in the **Atlantic and the Caribbean due to
nutrient-rich waters and lack of predators**, the species has spread
tremendously. A **single lionfish, located on a reef, reduced young
juvenile reef fish populations by 79%.**

<img src="images/lionfish_progression.png" width="800px" />

Progression of the lionfish invasion from 2000 to 2009. Sightings data
courtesy of the U.S. Geological Survey Non-indigenous Aquatic Species
Database.

## Lionfish on Venezuela coastal regions:

Due to the alarming and rapid expansion of the red lionfish since early
2009, a group of Venezuelan researchers and science professionals began
a campaign of information alerting Venezuelan coast users (divers,
fishermen, swimmers, etc.) to the imminent invasion of these species,
and the possible consequences for the native marine fauna and public
health ( [Lasso-Alcalá &
Posada, 2010](https://www.dcbd.nl/sites/www.dcbd.nl/files/documents/Lasso-Alcala%2520%2526%2520Posada%25202010%2520Presence%2520invasive%2520lionfish%2520in%2520Venezuela%2520-%2520Aq%2520Invas.pdf)
).

As a result of this campaign, between November 2009 and June 2010
several reports and specimens of red lionfish in 23 localities of the
Venezuelan coast. Thirty specimens were observed, and some were
photographed, by recreational SCUBA divers and local fishermen in the
eastern and central regions of the Venezuelan coast, specifically at 18
sites of Parque Nacional Archipiélago de Los Roques (PNAR, Dependencias
Federales), Parque Nacional Morrocoy (Estado Falcón), Bahía de Cata and
Ensenada de Cepe (Estado Aragua), Puerto Cruz, Chichiriviche de La
Costa, Mamo, Catia La Mar, La Guaira, Macuto, Caraballeda (Estado
Vargas) and Farallón Centinela (Dependencias Federales) (Figure 2 and
Annex 1). The specimens were observed from 1 to 27 m depth over coral,
rock and sandy bottoms. These records were deposited into an electronic
database available on the internet (<http://pezleon.cbm.usb.ve/>), which
was created in February 2010 to follow the progress of the invasion of
this species in Venezuelan waters ( [Lasso-Alcalá &
Posada, 2010](https://www.dcbd.nl/sites/www.dcbd.nl/files/documents/Lasso-Alcala%2520%2526%2520Posada%25202010%2520Presence%2520invasive%2520lionfish%2520in%2520Venezuela%2520-%2520Aq%2520Invas.pdf)
).

<img src="images/lionfish_venezuela.png" width="1000px" />

Distribution of Pterois volitans on the Venezuelan coast, southeastern
Caribbean Sea. Each point corresponds to a locality. Records of observed
specimens in numbers( [Lasso-Alcalá &
Posada, 2010](https://www.dcbd.nl/sites/www.dcbd.nl/files/documents/Lasso-Alcala%2520%2526%2520Posada%25202010%2520Presence%2520invasive%2520lionfish%2520in%2520Venezuela%2520-%2520Aq%2520Invas.pdf)
).

## Venezuelan Lionfish analysis:

Based on the data builded by the scuba divers and local fishermen posted
on the Pezleon website a project of the ‘Centro de Biodiversidad Marinas
de la Universidad Simón Bolívar’ the following analysis was performed in
order to build some insight of whats happening with the lionfish in the
Venezuelan coastal regions, where are they gathering? where are they
comming from? where are they going?, and post this plots online to
provide updated information of this topic.

The data base is still online on OBIS record
[here](https://obis.org/dataset/5cdefe7f-f7ba-4140-b508-66ae2f5cc4a0)

Download the data from the repository
[here](http://ipt.iobis.org/caribbeanobis/resource?r=pez_leon)

[See the data manipulation code here](XXXXXX)

### Lionfish Box plots:

![](README_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

[See the plot code here](XXXXXX)

This boxplots can give some **overall insight** of the parameters, it
can be seen that **most of the lionfish** are **gathering at latitude
between 10 and 11**, overall almost **all the venezuelan central coast
mostly between -67 and -65 longitude**, and **swiming in a mean depth of
10 meters** below the surface of the caribbean sea.

### Lionfish Time Series:

![](README_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

[See the plot code here](XXXXXX)

The overall goal of these time series is to **identify a pattern in
time** of the parameters of the depth or position. **Are the lionfish
migrating to deeper waters over time?**. Are they **moving to a specific
location** over time? or are they **staying in the same longitude and
latitude** regardless the passing months or years?.

However **linear regressions are not very accurate**, no one gets near
to 1, meaning that **the data are very sparce and the tendency over the
time is not ver clear.** The Rsquare values for the linear regression
are the followings: **0.0767901** for the Depth vs Time, **0.0053345**
for the Longitude vs Time, and **0.008209** for the Latitude vs Time.

This kind of analysis is dificult to made with data that is **biased by
the places and seasons in which the activity of scuba divers or local
fishermans develops.** It would be better for the regresion model and
the time series if the sighthings were more constants in time and more
randomly scattered among the Venezuelan coast.

### Lionfish maps for Venezuela:

![](README_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

[See the map code here](XXXXXX)

Here it can be see that the sights of the lionfish get stack at the
**central coastal region of Venezuela.** between **Falcon and Sucre**
states. But again this is clearly an effect of the bias generated by the
sigthings that are not randomply distibuited along the coast, the most
sigthings match with the places of high human activity, because is there
where the scubas divers and the local fishermans were carrying out their
activities. It would be better for the heatmap if the sighthings were
more randomly scattered among the Venezuelan coast.

#### Heat map

<img src="images/lionfish_heatmap.png" width="1000px" />

[See the map code here](XXXXXX)

This kind of chart deal better with the **overplotting** managing to
show better were the lionfish are gathering. Now it can be **clearly
seen** that despite the fact that there are several places of sighting,
this **sigthings** are **mainly concentrated in the central coast,
between Puerto Cabello and Guatire.**

#### Location, Depth and Quantity interactives lionfish maps for Venezuela.

<!-- GeoChart generated in R 3.6.1 by googleVis 0.6.4 package -->

<!-- Tue May 26 12:00:41 2020 -->

<!-- jsHeader -->

<script type="text/javascript">
 
// jsData 
function gvisDataEQ () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
10.52494423,
-67.51390457,
8,
1
],
[
10.78879174,
-68.19488525,
null,
1
],
[
10.61480286,
-66.87532425,
16,
1
],
[
10.78204658,
-68.20037842,
null,
null
],
[
10.79148976,
-68.19625854,
null,
null
],
[
11.85391119,
-66.81747437,
22,
1
],
[
10.79014075,
-68.19763184,
14,
1
],
[
10.55506878,
-67.23306656,
28,
1
],
[
10.55346559,
-67.24139214,
27,
1
],
[
10.55658759,
-67.23761559,
27,
1
],
[
10.79014075,
-68.19213867,
17,
1
],
[
10.50148386,
-67.73869514,
20,
1
],
[
11.78653465,
-66.88373566,
7,
1
],
[
11.88414963,
-66.65267944,
5,
1
],
[
11.96678419,
-67.52197266,
10,
1
],
[
11.88482156,
-66.73027039,
6,
1
],
[
11.75578125,
-66.62246704,
15,
1
],
[
11.76502443,
-66.87498093,
10,
1
],
[
10.58502165,
-65.75317383,
24,
1
],
[
10.48241044,
-67.82375336,
27,
1
],
[
11.96409729,
-66.69799805,
27,
1
],
[
11.95872339,
-66.67602539,
27,
1
],
[
10.61969581,
-66.83648586,
4,
1
],
[
10.72793757,
-68.24616373,
12,
2
],
[
10.65520955,
-65.80192566,
22,
1
],
[
10.85758369,
-68.18664551,
12,
1
],
[
10.82251526,
-66.11572266,
24,
1
],
[
10.83330598,
-66.09375,
22,
1
],
[
10.81442196,
-65.82733154,
21,
2
],
[
11.79443251,
-66.89369202,
12,
1
],
[
10.83330598,
-66.03881836,
22,
1
],
[
10.51684301,
-67.3853302,
19,
1
],
[
10.8447707,
-68.20694447,
21,
1
],
[
10.8385326,
-68.20896149,
21,
1
],
[
10.55183602,
-67.23935902,
10,
1
],
[
10.55164617,
-67.24008322,
13,
1
],
[
10.72947923,
-68.24442565,
12,
1
],
[
10.55242668,
-67.23861337,
10,
1
],
[
10.55114517,
-67.24096298,
18,
1
],
[
10.55164089,
-67.23902106,
12,
1
],
[
10.55466799,
-67.2406733,
49,
2
],
[
10.48845541,
-67.94727445,
7,
1
],
[
10.69434579,
-68.21548462,
8,
1
],
[
10.54327668,
-67.35077262,
16,
1
],
[
10.55207861,
-67.23907471,
9,
1
],
[
10.69299635,
-68.15917969,
10,
4
],
[
10.52966985,
-67.5,
10.5,
1
],
[
10.54148357,
-67.31040001,
16,
1
],
[
10.67140447,
-67.13745117,
3,
1
],
[
10.52608872,
-67.51046598,
5,
1
],
[
10.55318609,
-67.23926246,
16,
1
],
[
10.54443429,
-67.34161288,
16,
1
],
[
10.52474381,
-67.51569629,
17,
1
],
[
10.55310171,
-67.23904252,
14,
1
],
[
10.34194006,
-64.56390381,
12,
1
],
[
10.5559653,
-67.18406796,
2,
2
],
[
10.60874983,
-66.15695357,
12,
2
],
[
10.55233702,
-67.2385329,
6,
1
],
[
10.54582921,
-67.29061604,
24,
1
],
[
10.55236339,
-67.23879039,
10,
1
],
[
10.77428946,
-68.19831848,
15,
3
],
[
10.69299635,
-68.11523438,
15,
2
],
[
10.55327047,
-67.23913372,
22,
1
],
[
10.55335484,
-67.23909616,
19,
1
],
[
10.55304897,
-67.23915517,
27,
2
],
[
10.55230538,
-67.23852217,
3,
2
],
[
10.55170945,
-67.23851681,
2,
1
],
[
10.46282943,
-67.73139954,
8,
4
],
[
10.55180702,
-67.2386536,
4,
1
],
[
10.55181493,
-67.23846316,
7,
1
],
[
10.55158816,
-67.23897815,
13,
1
],
[
10.54807585,
-67.25503922,
10,
1
],
[
10.55177801,
-67.23851681,
5,
1
],
[
10.55179911,
-67.23856509,
4,
1
],
[
10.54154685,
-67.31745958,
14,
1
],
[
10.62484176,
-66.74125671,
4,
1
],
[
10.55259016,
-67.23866701,
4,
1
],
[
10.48072247,
-67.82718658,
12,
2
],
[
10.49658902,
-67.74410248,
15,
2
],
[
10.48456259,
-67.81907558,
18,
1
],
[
10.55437266,
-67.2394073,
24,
1
],
[
10.55177274,
-67.23968625,
14,
1
],
[
10.55203115,
-67.23853827,
4,
1
],
[
10.55235284,
-67.23851144,
2,
1
],
[
10.55234757,
-67.23851681,
3,
1
],
[
10.55295404,
-67.23928928,
26,
1
],
[
10.55188876,
-67.2384578,
3,
1
],
[
10.55235812,
-67.23858654,
6,
1
],
[
10.55236866,
-67.23859727,
5,
2
],
[
10.55168308,
-67.23839343,
3,
1
],
[
10.55233702,
-67.23860264,
14,
1
],
[
10.55154597,
-67.23928928,
14,
2
],
[
10.55151432,
-67.23945022,
14,
1
],
[
10.55300151,
-67.21830368,
18,
6
],
[
10.55632391,
-67.18439788,
6,
2
],
[
10.55231593,
-67.23862141,
4,
1
],
[
10.55238185,
-67.23898888,
15,
1
],
[
10.5528433,
-67.23903179,
16,
1
],
[
10.540173,
-67.3439464,
9,
2
],
[
10.54739026,
-67.28233337,
12,
3
],
[
10.5269695,
-67.55561829,
14,
2
],
[
10.5472215,
-67.28284836,
12.5,
1
],
[
10.5526218,
-67.49450684,
14,
1
],
[
10.5526218,
-67.30499268,
10,
2
],
[
10.5458714,
-67.30499268,
14,
1
],
[
10.29394493,
-64.75980163,
15,
1
],
[
10.62504212,
-66.74040914,
5,
4
],
[
10.55188348,
-67.23843634,
9,
1
],
[
10.55415117,
-67.23908544,
24,
1
],
[
10.61808505,
-66.7466104,
2,
1
],
[
10.54519636,
-67.30155945,
16,
3
],
[
10.5526218,
-67.24731445,
6,
3
],
[
10.6120189,
-66.69525146,
2,
1
],
[
10.37976522,
-66.41235352,
5,
1
],
[
11.93185233,
-66.77490234,
22,
1
],
[
10.62116157,
-66.74756527,
1,
12
],
[
10.55227638,
-67.23859459,
2,
2
],
[
10.54928881,
-67.25516796,
10,
2
],
[
10.55214453,
-67.23859727,
2,
2
],
[
10.62104558,
-66.74829483,
4,
15
],
[
10.65520955,
-66.85180664,
10,
7
],
[
10.621611,
-66.745019,
1,
7
],
[
10.6302407,
-66.48170471,
3,
7
],
[
10.55217881,
-67.23932952,
18,
4
],
[
10.55076282,
-67.25276202,
24,
5
],
[
10.63091556,
-66.4377594,
8,
10
],
[
10.57962191,
-66.37390137,
8,
1
],
[
10.62965284,
-66.47615254,
5,
2
],
[
10.55771614,
-67.18053818,
7,
1
],
[
10.59801437,
-66.12353325,
2,
1
],
[
10.61733766,
-66.74797028,
2.5,
1
],
[
11.96141035,
-66.70280457,
25,
4
],
[
10.29397659,
-64.75818157,
12,
1
],
[
11.79308821,
-66.89077377,
null,
1
],
[
12.03243716,
-67.67080307,
10,
1
],
[
10.53448505,
-67.40167558,
18,
2
],
[
10.55223682,
-67.23951459,
19,
5
],
[
10.55286439,
-67.23888695,
12,
2
],
[
10.55081819,
-67.24309802,
17,
2
],
[
10.55435684,
-67.2403273,
45,
1
],
[
10.55118208,
-67.25076914,
22,
6
],
[
10.28282911,
-64.66926098,
6,
1
],
[
10.26543149,
-64.62733269,
5,
1
],
[
10.48663033,
-67.94958115,
10,
1
],
[
10.55110298,
-67.25212097,
19,
1
],
[
10.54785435,
-67.27621794,
12,
2
],
[
10.55080237,
-67.25120366,
8,
1
],
[
10.64441246,
-66.84631348,
8,
3
],
[
10.54182109,
-67.31323242,
12,
8
],
[
10.5526218,
-67.26928711,
15,
5
],
[
10.26840858,
-64.75041389,
18,
1
],
[
10.29929685,
-64.75582123,
18,
1
],
[
10.29980353,
-64.75607872,
16,
2
],
[
10.29946574,
-64.75582123,
18,
3
],
[
10.59233012,
-66.0976553,
7,
2
],
[
10.54503814,
-67.29312122,
25,
2
],
[
10.54696835,
-67.27057457,
15,
2
],
[
10.54713712,
-67.28713989,
12,
2
],
[
10.54739026,
-67.28791237,
35,
3
],
[
10.54776997,
-67.26718426,
14,
2
],
[
10.55261125,
-67.23891914,
7,
6
],
[
10.55262708,
-67.23903179,
10,
2
],
[
10.55441485,
-67.25162745,
16,
5
],
[
10.49502772,
-67.74172068,
15,
4
],
[
10.49749099,
-67.74389863,
13,
1
],
[
10.49673144,
-67.74416149,
10,
1
],
[
10.49736967,
-67.74386644,
9,
1
],
[
10.49707429,
-67.74399519,
8,
1
],
[
10.49663122,
-67.74451017,
7,
1
],
[
10.48781188,
-67.39013672,
30,
2
],
[
10.52021854,
-66.84082031,
22,
6
],
[
10.484014,
-67.81916142,
7,
1
],
[
10.48342322,
-67.82486916,
10,
1
],
[
10.52304553,
-67.55675554,
35,
12
],
[
10.55241613,
-67.23920882,
10,
3
],
[
10.52502862,
-67.55827904,
24,
3
],
[
10.29431439,
-64.75908279,
15,
1
],
[
10.53470655,
-67.47161686,
25,
32
],
[
10.55273255,
-67.23926783,
29,
9
],
[
10.26011067,
-64.75667953,
15,
1
],
[
10.26764848,
-64.75022614,
12,
1
],
[
10.66060795,
-65.79711914,
25,
2
],
[
10.58350298,
-66.06388092,
5,
4
],
[
11.00590446,
-63.76464844,
3,
1
],
[
10.29969797,
-64.75590706,
14,
7
],
[
10.54528074,
-66.061306,
3,
1
],
[
10.54182109,
-67.00561523,
12,
15
],
[
10.5094167,
-66.04980469,
5,
2
],
[
10.91675234,
-65.38410187,
18,
1
],
[
10.91742656,
-65.38770676,
16,
1
],
[
10.62939713,
-66.52665854,
9,
2
],
[
10.89247945,
-65.31406403,
15,
1
],
[
10.89391228,
-65.31775475,
12,
1
],
[
11.76384804,
-66.71035767,
15,
1
],
[
10.57838797,
-66.06352687,
6,
2
],
[
10.29483164,
-64.75627184,
17,
1
],
[
10.29504276,
-64.75649714,
12,
2
],
[
11.7715785,
-66.71928406,
17,
1
],
[
11.76418416,
-66.70417786,
9,
2
],
[
11.95351733,
-66.6919899,
9.5,
1
],
[
11.95376924,
-66.69190407,
7,
1
],
[
11.95334939,
-66.69181824,
7,
1
],
[
11.95872339,
-66.69456482,
17,
1
],
[
11.94182432,
-69.79818106,
2,
3
],
[
11.79207998,
-66.89609528,
7,
1
],
[
10.29483164,
-64.75620747,
11,
1
],
[
10.57692201,
-67.13195801,
6,
20
],
[
11.94999059,
-66.6852951,
18,
2
],
[
11.94864706,
-66.68357849,
18,
2
],
[
11.96073862,
-66.70040131,
28,
2
],
[
10.29420883,
-64.75887895,
14.5,
1
],
[
10.26774349,
-64.75055605,
12,
1
],
[
10.26770654,
-64.75064993,
14,
1
],
[
10.29600337,
-64.75586414,
12.2,
1
],
[
10.30749872,
-64.75650787,
7,
1
],
[
10.30632704,
-64.75243628,
5,
1
],
[
10.55271409,
-67.23862678,
12,
5
],
[
10.55325464,
-67.23911762,
17,
3
],
[
10.26806812,
-64.75101739,
25,
1
],
[
10.26781739,
-64.75089669,
15,
1
],
[
10.29795623,
-64.75400805,
5,
1
],
[
10.2974601,
-64.75394368,
10,
2
],
[
10.49405718,
-67.99138069,
9,
2
],
[
10.55266399,
-67.23898888,
15,
11
],
[
11.79266811,
-66.89536572,
8,
1
],
[
11.79283615,
-66.89523697,
12,
1
],
[
10.26803909,
-64.75103617,
23,
1
],
[
10.29431439,
-64.75880384,
12,
1
],
[
10.44915575,
-67.8546524,
4,
4
],
[
10.55245304,
-67.23941803,
23,
2
],
[
10.81117615,
-68.2738924,
2,
1
],
[
10.25031337,
-64.76101398,
27,
1
],
[
10.80093264,
-66.03057861,
27,
3
],
[
10.29034526,
-64.75944757,
11,
2
],
[
10.29059861,
-64.76131439,
16,
1
],
[
10.82017581,
-68.24774086,
3,
15
],
[
11.21524858,
-63.76796365,
12,
1
],
[
10.81172414,
-67.17041016,
2,
6
],
[
10.62475741,
-66.73928261,
1,
2
],
[
10.49633584,
-67.74483204,
9,
18
],
[
10.29114753,
-64.76107836,
14,
2
],
[
10.29725954,
-64.75394368,
10,
3
],
[
10.91961776,
-63.83056641,
3,
2
],
[
10.55383475,
-67.23907471,
15,
7
],
[
10.2967634,
-64.60523129,
15,
1
],
[
10.30603676,
-64.75154042,
10,
3
],
[
10.63901378,
-66.15966797,
5,
2
],
[
10.29687952,
-64.7546947,
10,
2
],
[
10.29533833,
-64.7565937,
10,
3
],
[
10.29482636,
-64.75612164,
12,
1
],
[
10.29405049,
-64.76015568,
15,
1
],
[
10.29399243,
-64.76016641,
15,
1
],
[
10.29417188,
-64.75978017,
16,
1
],
[
10.29428272,
-64.75890577,
15,
1
],
[
10.92232513,
-65.42199612,
3,
1
],
[
10.48080687,
-67.80899048,
7,
1
],
[
10.4982769,
-67.74333,
19,
49
],
[
10.25111575,
-64.76180255,
16,
1
],
[
10.2993549,
-64.75635231,
15,
3
],
[
10.53802388,
-66.09336376,
3,
1
],
[
10.55298041,
-67.23879039,
8,
21
],
[
10.52568261,
-67.51098633,
8,
1
],
[
10.26855638,
-64.75049436,
18,
1
],
[
10.26793088,
-64.75093156,
19,
1
],
[
10.29398187,
-64.75813329,
10,
1
],
[
10.29393965,
-64.75813866,
10,
1
],
[
10.29419827,
-64.75817621,
12,
1
],
[
10.29429328,
-64.757967,
18,
2
],
[
10.97272835,
-64.40415144,
3,
1
],
[
10.53131198,
-67.48631001,
7,
8
],
[
10.36220411,
-64.49163437,
18,
1
],
[
10.30516591,
-64.56171513,
17,
1
],
[
10.30520813,
-64.56175804,
17,
1
],
[
10.8185424,
-68.24597597,
12,
7
],
[
10.2945044,
-64.6059823,
18,
1
],
[
11.95301352,
-66.62272453,
2,
1
],
[
10.36236241,
-64.49923038,
10,
1
],
[
10.47162838,
-67.90009975,
1.5,
2
],
[
10.29452551,
-64.60557461,
25,
1
],
[
10.48568086,
-67.98292637,
1,
9
],
[
10.30322364,
-64.68586922,
9,
1
],
[
10.28304024,
-64.66843486,
10,
1
],
[
10.26845081,
-64.75047827,
15,
1
],
[
10.29393437,
-64.75807965,
17,
2
],
[
10.64910988,
-66.26188695,
6,
1
],
[
10.47686912,
-68.01260501,
4,
2
],
[
10.28904684,
-64.60335374,
7,
1
],
[
10.29017636,
-64.60643291,
10,
1
],
[
10.49101894,
-67.95290709,
6,
2
],
[
10.30596814,
-64.75172281,
9,
5
],
[
10.25037672,
-64.76069212,
10,
2
],
[
10.79148976,
-64.17938232,
9.8,
1
],
[
11.80417849,
-66.19741201,
7,
3
],
[
11.80417849,
-66.19741201,
7,
3
],
[
10.90716563,
-65.36321282,
17,
1
],
[
10.90689172,
-65.36292315,
18,
1
],
[
10.90665995,
-65.36262274,
16,
1
],
[
10.90650192,
-65.36205411,
18,
1
],
[
10.89624061,
-65.32472312,
14,
1
],
[
10.89612472,
-65.32483578,
16,
2
],
[
10.89669363,
-65.32655239,
17,
3
],
[
10.48544876,
-67.98374176,
1,
4
],
[
10.89276391,
-65.25478721,
12,
4
],
[
10.89684113,
-65.32670259,
18,
3
],
[
10.89694648,
-65.32715321,
16,
3
],
[
10.84274755,
-64.21783447,
9,
1
],
[
10.26255995,
-64.75444794,
18,
1
],
[
10.26801797,
-64.7510469,
25,
1
],
[
10.14283995,
-64.9164319,
3,
1
],
[
10.29278375,
-64.5768857,
10,
1
],
[
10.29925462,
-64.75597143,
17,
1
],
[
10.30740372,
-64.7501564,
10,
1
],
[
10.84641977,
-68.22924167,
3,
1
],
[
10.26260218,
-64.75507021,
18,
5
],
[
10.39091982,
-64.38003302,
30,
4
],
[
10.29427217,
-64.60540295,
18,
1
],
[
11.2031984,
-63.75306129,
15,
1
],
[
10.29034526,
-64.76054192,
10,
1
],
[
10.30900818,
-64.76037025,
8,
5
],
[
10.29963464,
-64.75590706,
10,
2
],
[
10.25183366,
-64.76200104,
15,
5
],
[
10.25054564,
-64.76088524,
14,
2
],
[
10.2503556,
-64.76037025,
7,
1
],
[
10.25310056,
-64.76092815,
8,
5
],
[
10.86044968,
-68.21737289,
6,
1
],
[
10.2938077,
-64.7599411,
18,
1
],
[
10.29431439,
-64.60596085,
28,
5
],
[
10.29009191,
-64.60639,
10,
1
],
[
10.29465219,
-64.75530624,
8,
1
],
[
10.29583447,
-64.75607872,
14,
1
],
[
10.29009191,
-64.7599411,
9,
3
],
[
10.29929685,
-64.75590706,
12,
4
],
[
10.15348542,
-64.94318962,
6,
1
],
[
11.20244064,
-63.74825478,
6,
1
],
[
10.2620532,
-64.75221634,
25,
1
],
[
10.29399771,
-64.75989819,
15,
1
],
[
10.15139438,
-64.94155884,
6,
3
],
[
10.5329714,
-67.47380555,
5,
2
],
[
10.64877774,
-66.26217127,
6,
1
],
[
10.27244133,
-64.74659443,
13,
8
],
[
10.57620484,
-64.24405575,
10,
2
],
[
12.03621466,
-69.84609604,
2,
12
],
[
12.03550113,
-69.8468256,
2,
12
],
[
10.58407512,
-64.27277952,
6,
4
],
[
10.57309622,
-64.25965548,
3,
2
],
[
10.29684785,
-64.62192535,
21,
6
],
[
10.30559658,
-64.63402748,
11,
6
],
[
10.80767738,
-64.1519165,
10,
1
],
[
10.55083929,
-67.25128412,
15,
18
],
[
10.54968962,
-67.25237846,
12,
4
],
[
10.49706638,
-67.74413198,
8,
10
],
[
10.44729878,
-63.97596359,
10,
1
],
[
10.2513269,
-64.53103065,
4,
2
],
[
10.56710565,
-67.14817733,
6,
5
],
[
10.87376774,
-65.30754089,
17,
18
],
[
10.30753567,
-64.76000547,
8,
2
],
[
10.29596114,
-64.59890127,
12,
1
],
[
10.536948,
-67.46751308,
17,
14
],
[
10.53760197,
-67.47073174,
15,
14
],
[
10.62197354,
-66.8542099,
21,
5
],
[
10.49097674,
-67.9939127,
1,
1
],
[
10.56207211,
-64.14093018,
1.5,
2
],
[
10.54348763,
-67.29638815,
14,
14
],
[
10.61023674,
-66.87733054,
3,
1
],
[
10.62821611,
-66.69799805,
2,
1
],
[
10.55552232,
-67.21000493,
12,
18
],
[
11.14892956,
-63.91828537,
6,
1
],
[
11.94397088,
-69.80334967,
1,
1
],
[
10.51025006,
-67.59896278,
6,
2
],
[
10.29104197,
-64.76103544,
15,
3
],
[
10.37976522,
-66.73095703,
2,
2
],
[
10.62639186,
-66.4349243,
2,
6
],
[
10.36625676,
-64.49884415,
14,
6
],
[
10.62821611,
-66.61010742,
3,
1
],
[
10.5909275,
-66.09117508,
27,
11
],
[
10.30649593,
-64.75069284,
10,
3
],
[
10.29194981,
-64.57476139,
10,
1
],
[
10.55606023,
-67.19842315,
4,
3
],
[
10.55466799,
-67.21004248,
2,
1
],
[
10.55251633,
-67.21407652,
3,
2
],
[
10.55576491,
-67.18472242,
2,
23
],
[
10.61995417,
-66.85679555,
2,
1
],
[
10.30470145,
-64.56463337,
15,
7
],
[
10.58767929,
-66.08314991,
4,
1
],
[
10.93468183,
-64.21035916,
1,
1
],
[
10.29625671,
-64.60503817,
18,
2
],
[
10.54519636,
-66.0741806,
3,
2
],
[
10.52246536,
-67.51684427,
1,
1
],
[
10.62495776,
-66.73880786,
1,
5
],
[
10.61994889,
-66.85712814,
2,
3
],
[
10.62049724,
-66.74827337,
2,
4
],
[
11.22159445,
-63.75597954,
15,
3
],
[
11.21511176,
-63.76567841,
12,
2
],
[
10.61813514,
-66.8590486,
3,
4
],
[
10.4954075,
-67.73963928,
15,
16
],
[
10.293301,
-65.23681641,
8,
1
],
[
10.61920547,
-66.85896277,
2,
1
],
[
10.52545055,
-67.51321793,
19,
24
],
[
10.50788184,
-67.58765459,
1,
1
],
[
10.52334088,
-67.51356125,
7,
3
],
[
10.83447039,
-68.23626101,
4,
3
],
[
10.56521775,
-64.26353663,
10,
1
],
[
10.81953299,
-68.2513243,
6,
1
],
[
10.53709567,
-67.47013092,
18,
32
],
[
10.49662858,
-67.74475425,
10,
2
],
[
10.49673671,
-67.74291158,
25,
1
],
[
10.49850899,
-67.74316907,
12,
2
],
[
10.49681583,
-67.74430096,
8,
2
],
[
10.49687385,
-67.74369478,
10,
11
],
[
10.44414403,
-64.033041,
2,
1
],
[
10.62054996,
-66.74821973,
2,
15
],
[
10.57557205,
-67.11616516,
3,
4
],
[
10.53681087,
-67.37168312,
0,
1
],
[
10.5510186,
-67.25203514,
15,
20
],
[
10.55591257,
-67.2099781,
12,
20
],
[
10.54941538,
-67.25349426,
7,
20
],
[
10.86432715,
-68.24707031,
10,
55
],
[
10.60758456,
-66.15593433,
6,
1
],
[
10.7392113,
-68.21651459,
10,
6
],
[
10.53321401,
-66.0968399,
3,
2
],
[
10.56949715,
-67.23907471,
15,
6
],
[
10.4788446,
-67.80897975,
2,
2
],
[
11.21637464,
-63.76893997,
10,
16
],
[
10.56311627,
-66.05434299,
4,
1
],
[
10.46299824,
-67.94559002,
1,
1
],
[
10.5526218,
-68.00537109,
11,
8
],
[
10.94517091,
-68.26720297,
4,
1
],
[
10.5094167,
-66.13769531,
4,
8
],
[
15.39013572,
-63.36914062,
12,
1
],
[
15.39013572,
-63.36914062,
12,
1
],
[
15.40072782,
-63.36914062,
16,
1
],
[
15.39013572,
-63.36914062,
17,
4
],
[
10.54262272,
-66.0806179,
4,
2
],
[
15.40072782,
-63.38012695,
20,
2
],
[
10.54421542,
-67.34233975,
20,
9
],
[
10.44527299,
-67.84606934,
4,
12
],
[
10.62239534,
-66.84400678,
1,
5
],
[
10.64936293,
-66.26175821,
5,
1
],
[
11.76460429,
-66.60083771,
16,
48
],
[
10.4840984,
-67.94782162,
3,
3
],
[
10.93000467,
-68.25999856,
1.8,
1
],
[
10.52021854,
-67.82958984,
6,
2
],
[
12.05246384,
-69.85093206,
1.5,
2
],
[
10.59582083,
-66.86279297,
1,
4
],
[
10.92501142,
-68.22509766,
null,
1
],
[
10.30740372,
-64.75865364,
6,
2
],
[
10.61250399,
-66.88443303,
3,
1
],
[
10.60847565,
-66.17228508,
25,
2
],
[
10.66060795,
-68.15917969,
15,
20
],
[
10.46282943,
-67.93093443,
1,
1
],
[
10.92277812,
-65.41856289,
6,
18
],
[
10.48110227,
-67.80688763,
10,
22
],
[
10.58350298,
-66.06370926,
5,
8
],
[
10.30913485,
-64.7252655,
4,
1
],
[
11.09397151,
-63.97613525,
1,
1
],
[
11.97484475,
-67.66479492,
20,
20
],
[
10.49604178,
-67.74497956,
3,
2
],
[
10.49321323,
-67.73672104,
0,
1
],
[
10.49946369,
-67.73282111,
2,
1
],
[
10.85151445,
-68.22509766,
13,
41
],
[
10.49137763,
-67.99562931,
1,
1
],
[
10.94119179,
-64.46777344,
25,
4
],
[
10.4881851,
-67.82441406,
3.5,
5
],
[
10.62189972,
-66.84572875,
null,
null
],
[
10.62191027,
-66.84573144,
null,
null
],
[
10.55306878,
-67.23870544,
12,
1
],
[
10.50924136,
-67.59925871,
0,
1
],
[
10.55679197,
-66.05726748,
0.85,
1
] 
];
data.addColumn('number','Latitude');
data.addColumn('number','Longitude');
data.addColumn('number','profundidad');
data.addColumn('number','cantidad');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartEQ() {
var data = gvisDataEQ();
var options = {};
options["width"] = 556;
options["height"] = 347;
options["region"] = "VE";
options["displayMode"] = "Markers";
options["colorAxis"] = {colors:['purple', 'red','orange', 'grey', 'black']};
options["backgroundColor"] = "lightblue";

    var chart = new google.visualization.GeoChart(
    document.getElementById('EQ')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "geochart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartEQ);
})();
function displayChartEQ() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>

<!-- jsChart -->

<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartEQ"></script>

<!-- divChart -->

<div id="EQ" style="width: 556; height: 347;">

</div>

[See the map code here](XXXXXX)

Despite this kind of graphic its kind of messy, it **merges the 3
principal dimensions** of the data set, **the position plotting a
circle** in the coordenate, the **depth that colors the circles** using
chromatic scale and the **quantity of fish** sigthed on that area **that
increases the radius of the circle.**

<!-- Map generated in R 3.6.1 by googleVis 0.6.4 package -->

<!-- Tue May 26 12:00:42 2020 -->

<!-- jsHeader -->

<script type="text/javascript">
 
// jsData 
function gvisDataMapIDe206aa2427a () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
10.52494423,
-67.51390457,
"Profundidad: 8"
],
[
10.78879174,
-68.19488525,
"Profundidad: NA"
],
[
10.61480286,
-66.87532425,
"Profundidad: 16"
],
[
10.78204658,
-68.20037842,
"Profundidad: NA"
],
[
10.79148976,
-68.19625854,
"Profundidad: NA"
],
[
11.85391119,
-66.81747437,
"Profundidad: 22"
],
[
10.79014075,
-68.19763184,
"Profundidad: 14"
],
[
10.55506878,
-67.23306656,
"Profundidad: 28"
],
[
10.55346559,
-67.24139214,
"Profundidad: 27"
],
[
10.55658759,
-67.23761559,
"Profundidad: 27"
],
[
10.79014075,
-68.19213867,
"Profundidad: 17"
],
[
10.50148386,
-67.73869514,
"Profundidad: 20"
],
[
11.78653465,
-66.88373566,
"Profundidad: 7"
],
[
11.88414963,
-66.65267944,
"Profundidad: 5"
],
[
11.96678419,
-67.52197266,
"Profundidad: 10"
],
[
11.88482156,
-66.73027039,
"Profundidad: 6"
],
[
11.75578125,
-66.62246704,
"Profundidad: 15"
],
[
11.76502443,
-66.87498093,
"Profundidad: 10"
],
[
10.58502165,
-65.75317383,
"Profundidad: 24"
],
[
10.48241044,
-67.82375336,
"Profundidad: 27"
],
[
11.96409729,
-66.69799805,
"Profundidad: 27"
],
[
11.95872339,
-66.67602539,
"Profundidad: 27"
],
[
10.61969581,
-66.83648586,
"Profundidad: 4"
],
[
10.72793757,
-68.24616373,
"Profundidad: 12"
],
[
10.65520955,
-65.80192566,
"Profundidad: 22"
],
[
10.85758369,
-68.18664551,
"Profundidad: 12"
],
[
10.82251526,
-66.11572266,
"Profundidad: 24"
],
[
10.83330598,
-66.09375,
"Profundidad: 22"
],
[
10.81442196,
-65.82733154,
"Profundidad: 21"
],
[
11.79443251,
-66.89369202,
"Profundidad: 12"
],
[
10.83330598,
-66.03881836,
"Profundidad: 22"
],
[
10.51684301,
-67.3853302,
"Profundidad: 19"
],
[
10.8447707,
-68.20694447,
"Profundidad: 21"
],
[
10.8385326,
-68.20896149,
"Profundidad: 21"
],
[
10.55183602,
-67.23935902,
"Profundidad: 10"
],
[
10.55164617,
-67.24008322,
"Profundidad: 13"
],
[
10.72947923,
-68.24442565,
"Profundidad: 12"
],
[
10.55242668,
-67.23861337,
"Profundidad: 10"
],
[
10.55114517,
-67.24096298,
"Profundidad: 18"
],
[
10.55164089,
-67.23902106,
"Profundidad: 12"
],
[
10.55466799,
-67.2406733,
"Profundidad: 49"
],
[
10.48845541,
-67.94727445,
"Profundidad: 7"
],
[
10.69434579,
-68.21548462,
"Profundidad: 8"
],
[
10.54327668,
-67.35077262,
"Profundidad: 16"
],
[
10.55207861,
-67.23907471,
"Profundidad: 9"
],
[
10.69299635,
-68.15917969,
"Profundidad: 10"
],
[
10.52966985,
-67.5,
"Profundidad: 10.5"
],
[
10.54148357,
-67.31040001,
"Profundidad: 16"
],
[
10.67140447,
-67.13745117,
"Profundidad: 3"
],
[
10.52608872,
-67.51046598,
"Profundidad: 5"
],
[
10.55318609,
-67.23926246,
"Profundidad: 16"
],
[
10.54443429,
-67.34161288,
"Profundidad: 16"
],
[
10.52474381,
-67.51569629,
"Profundidad: 17"
],
[
10.55310171,
-67.23904252,
"Profundidad: 14"
],
[
10.34194006,
-64.56390381,
"Profundidad: 12"
],
[
10.5559653,
-67.18406796,
"Profundidad: 2"
],
[
10.60874983,
-66.15695357,
"Profundidad: 12"
],
[
10.55233702,
-67.2385329,
"Profundidad: 6"
],
[
10.54582921,
-67.29061604,
"Profundidad: 24"
],
[
10.55236339,
-67.23879039,
"Profundidad: 10"
],
[
10.77428946,
-68.19831848,
"Profundidad: 15"
],
[
10.69299635,
-68.11523438,
"Profundidad: 15"
],
[
10.55327047,
-67.23913372,
"Profundidad: 22"
],
[
10.55335484,
-67.23909616,
"Profundidad: 19"
],
[
10.55304897,
-67.23915517,
"Profundidad: 27"
],
[
10.55230538,
-67.23852217,
"Profundidad: 3"
],
[
10.55170945,
-67.23851681,
"Profundidad: 2"
],
[
10.46282943,
-67.73139954,
"Profundidad: 8"
],
[
10.55180702,
-67.2386536,
"Profundidad: 4"
],
[
10.55181493,
-67.23846316,
"Profundidad: 7"
],
[
10.55158816,
-67.23897815,
"Profundidad: 13"
],
[
10.54807585,
-67.25503922,
"Profundidad: 10"
],
[
10.55177801,
-67.23851681,
"Profundidad: 5"
],
[
10.55179911,
-67.23856509,
"Profundidad: 4"
],
[
10.54154685,
-67.31745958,
"Profundidad: 14"
],
[
10.62484176,
-66.74125671,
"Profundidad: 4"
],
[
10.55259016,
-67.23866701,
"Profundidad: 4"
],
[
10.48072247,
-67.82718658,
"Profundidad: 12"
],
[
10.49658902,
-67.74410248,
"Profundidad: 15"
],
[
10.48456259,
-67.81907558,
"Profundidad: 18"
],
[
10.55437266,
-67.2394073,
"Profundidad: 24"
],
[
10.55177274,
-67.23968625,
"Profundidad: 14"
],
[
10.55203115,
-67.23853827,
"Profundidad: 4"
],
[
10.55235284,
-67.23851144,
"Profundidad: 2"
],
[
10.55234757,
-67.23851681,
"Profundidad: 3"
],
[
10.55295404,
-67.23928928,
"Profundidad: 26"
],
[
10.55188876,
-67.2384578,
"Profundidad: 3"
],
[
10.55235812,
-67.23858654,
"Profundidad: 6"
],
[
10.55236866,
-67.23859727,
"Profundidad: 5"
],
[
10.55168308,
-67.23839343,
"Profundidad: 3"
],
[
10.55233702,
-67.23860264,
"Profundidad: 14"
],
[
10.55154597,
-67.23928928,
"Profundidad: 14"
],
[
10.55151432,
-67.23945022,
"Profundidad: 14"
],
[
10.55300151,
-67.21830368,
"Profundidad: 18"
],
[
10.55632391,
-67.18439788,
"Profundidad: 6"
],
[
10.55231593,
-67.23862141,
"Profundidad: 4"
],
[
10.55238185,
-67.23898888,
"Profundidad: 15"
],
[
10.5528433,
-67.23903179,
"Profundidad: 16"
],
[
10.540173,
-67.3439464,
"Profundidad: 9"
],
[
10.54739026,
-67.28233337,
"Profundidad: 12"
],
[
10.5269695,
-67.55561829,
"Profundidad: 14"
],
[
10.5472215,
-67.28284836,
"Profundidad: 12.5"
],
[
10.5526218,
-67.49450684,
"Profundidad: 14"
],
[
10.5526218,
-67.30499268,
"Profundidad: 10"
],
[
10.5458714,
-67.30499268,
"Profundidad: 14"
],
[
10.29394493,
-64.75980163,
"Profundidad: 15"
],
[
10.62504212,
-66.74040914,
"Profundidad: 5"
],
[
10.55188348,
-67.23843634,
"Profundidad: 9"
],
[
10.55415117,
-67.23908544,
"Profundidad: 24"
],
[
10.61808505,
-66.7466104,
"Profundidad: 2"
],
[
10.54519636,
-67.30155945,
"Profundidad: 16"
],
[
10.5526218,
-67.24731445,
"Profundidad: 6"
],
[
10.6120189,
-66.69525146,
"Profundidad: 2"
],
[
10.37976522,
-66.41235352,
"Profundidad: 5"
],
[
11.93185233,
-66.77490234,
"Profundidad: 22"
],
[
10.62116157,
-66.74756527,
"Profundidad: 1"
],
[
10.55227638,
-67.23859459,
"Profundidad: 2"
],
[
10.54928881,
-67.25516796,
"Profundidad: 10"
],
[
10.55214453,
-67.23859727,
"Profundidad: 2"
],
[
10.62104558,
-66.74829483,
"Profundidad: 4"
],
[
10.65520955,
-66.85180664,
"Profundidad: 10"
],
[
10.621611,
-66.745019,
"Profundidad: 1"
],
[
10.6302407,
-66.48170471,
"Profundidad: 3"
],
[
10.55217881,
-67.23932952,
"Profundidad: 18"
],
[
10.55076282,
-67.25276202,
"Profundidad: 24"
],
[
10.63091556,
-66.4377594,
"Profundidad: 8"
],
[
10.57962191,
-66.37390137,
"Profundidad: 8"
],
[
10.62965284,
-66.47615254,
"Profundidad: 5"
],
[
10.55771614,
-67.18053818,
"Profundidad: 7"
],
[
10.59801437,
-66.12353325,
"Profundidad: 2"
],
[
10.61733766,
-66.74797028,
"Profundidad: 2.5"
],
[
11.96141035,
-66.70280457,
"Profundidad: 25"
],
[
10.29397659,
-64.75818157,
"Profundidad: 12"
],
[
11.79308821,
-66.89077377,
"Profundidad: NA"
],
[
12.03243716,
-67.67080307,
"Profundidad: 10"
],
[
10.53448505,
-67.40167558,
"Profundidad: 18"
],
[
10.55223682,
-67.23951459,
"Profundidad: 19"
],
[
10.55286439,
-67.23888695,
"Profundidad: 12"
],
[
10.55081819,
-67.24309802,
"Profundidad: 17"
],
[
10.55435684,
-67.2403273,
"Profundidad: 45"
],
[
10.55118208,
-67.25076914,
"Profundidad: 22"
],
[
10.28282911,
-64.66926098,
"Profundidad: 6"
],
[
10.26543149,
-64.62733269,
"Profundidad: 5"
],
[
10.48663033,
-67.94958115,
"Profundidad: 10"
],
[
10.55110298,
-67.25212097,
"Profundidad: 19"
],
[
10.54785435,
-67.27621794,
"Profundidad: 12"
],
[
10.55080237,
-67.25120366,
"Profundidad: 8"
],
[
10.64441246,
-66.84631348,
"Profundidad: 8"
],
[
10.54182109,
-67.31323242,
"Profundidad: 12"
],
[
10.5526218,
-67.26928711,
"Profundidad: 15"
],
[
10.26840858,
-64.75041389,
"Profundidad: 18"
],
[
10.29929685,
-64.75582123,
"Profundidad: 18"
],
[
10.29980353,
-64.75607872,
"Profundidad: 16"
],
[
10.29946574,
-64.75582123,
"Profundidad: 18"
],
[
10.59233012,
-66.0976553,
"Profundidad: 7"
],
[
10.54503814,
-67.29312122,
"Profundidad: 25"
],
[
10.54696835,
-67.27057457,
"Profundidad: 15"
],
[
10.54713712,
-67.28713989,
"Profundidad: 12"
],
[
10.54739026,
-67.28791237,
"Profundidad: 35"
],
[
10.54776997,
-67.26718426,
"Profundidad: 14"
],
[
10.55261125,
-67.23891914,
"Profundidad: 7"
],
[
10.55262708,
-67.23903179,
"Profundidad: 10"
],
[
10.55441485,
-67.25162745,
"Profundidad: 16"
],
[
10.49502772,
-67.74172068,
"Profundidad: 15"
],
[
10.49749099,
-67.74389863,
"Profundidad: 13"
],
[
10.49673144,
-67.74416149,
"Profundidad: 10"
],
[
10.49736967,
-67.74386644,
"Profundidad: 9"
],
[
10.49707429,
-67.74399519,
"Profundidad: 8"
],
[
10.49663122,
-67.74451017,
"Profundidad: 7"
],
[
10.48781188,
-67.39013672,
"Profundidad: 30"
],
[
10.52021854,
-66.84082031,
"Profundidad: 22"
],
[
10.484014,
-67.81916142,
"Profundidad: 7"
],
[
10.48342322,
-67.82486916,
"Profundidad: 10"
],
[
10.52304553,
-67.55675554,
"Profundidad: 35"
],
[
10.55241613,
-67.23920882,
"Profundidad: 10"
],
[
10.52502862,
-67.55827904,
"Profundidad: 24"
],
[
10.29431439,
-64.75908279,
"Profundidad: 15"
],
[
10.53470655,
-67.47161686,
"Profundidad: 25"
],
[
10.55273255,
-67.23926783,
"Profundidad: 29"
],
[
10.26011067,
-64.75667953,
"Profundidad: 15"
],
[
10.26764848,
-64.75022614,
"Profundidad: 12"
],
[
10.66060795,
-65.79711914,
"Profundidad: 25"
],
[
10.58350298,
-66.06388092,
"Profundidad: 5"
],
[
11.00590446,
-63.76464844,
"Profundidad: 3"
],
[
10.29969797,
-64.75590706,
"Profundidad: 14"
],
[
10.54528074,
-66.061306,
"Profundidad: 3"
],
[
10.54182109,
-67.00561523,
"Profundidad: 12"
],
[
10.5094167,
-66.04980469,
"Profundidad: 5"
],
[
10.91675234,
-65.38410187,
"Profundidad: 18"
],
[
10.91742656,
-65.38770676,
"Profundidad: 16"
],
[
10.62939713,
-66.52665854,
"Profundidad: 9"
],
[
10.89247945,
-65.31406403,
"Profundidad: 15"
],
[
10.89391228,
-65.31775475,
"Profundidad: 12"
],
[
11.76384804,
-66.71035767,
"Profundidad: 15"
],
[
10.57838797,
-66.06352687,
"Profundidad: 6"
],
[
10.29483164,
-64.75627184,
"Profundidad: 17"
],
[
10.29504276,
-64.75649714,
"Profundidad: 12"
],
[
11.7715785,
-66.71928406,
"Profundidad: 17"
],
[
11.76418416,
-66.70417786,
"Profundidad: 9"
],
[
11.95351733,
-66.6919899,
"Profundidad: 9.5"
],
[
11.95376924,
-66.69190407,
"Profundidad: 7"
],
[
11.95334939,
-66.69181824,
"Profundidad: 7"
],
[
11.95872339,
-66.69456482,
"Profundidad: 17"
],
[
11.94182432,
-69.79818106,
"Profundidad: 2"
],
[
11.79207998,
-66.89609528,
"Profundidad: 7"
],
[
10.29483164,
-64.75620747,
"Profundidad: 11"
],
[
10.57692201,
-67.13195801,
"Profundidad: 6"
],
[
11.94999059,
-66.6852951,
"Profundidad: 18"
],
[
11.94864706,
-66.68357849,
"Profundidad: 18"
],
[
11.96073862,
-66.70040131,
"Profundidad: 28"
],
[
10.29420883,
-64.75887895,
"Profundidad: 14.5"
],
[
10.26774349,
-64.75055605,
"Profundidad: 12"
],
[
10.26770654,
-64.75064993,
"Profundidad: 14"
],
[
10.29600337,
-64.75586414,
"Profundidad: 12.2"
],
[
10.30749872,
-64.75650787,
"Profundidad: 7"
],
[
10.30632704,
-64.75243628,
"Profundidad: 5"
],
[
10.55271409,
-67.23862678,
"Profundidad: 12"
],
[
10.55325464,
-67.23911762,
"Profundidad: 17"
],
[
10.26806812,
-64.75101739,
"Profundidad: 25"
],
[
10.26781739,
-64.75089669,
"Profundidad: 15"
],
[
10.29795623,
-64.75400805,
"Profundidad: 5"
],
[
10.2974601,
-64.75394368,
"Profundidad: 10"
],
[
10.49405718,
-67.99138069,
"Profundidad: 9"
],
[
10.55266399,
-67.23898888,
"Profundidad: 15"
],
[
11.79266811,
-66.89536572,
"Profundidad: 8"
],
[
11.79283615,
-66.89523697,
"Profundidad: 12"
],
[
10.26803909,
-64.75103617,
"Profundidad: 23"
],
[
10.29431439,
-64.75880384,
"Profundidad: 12"
],
[
10.44915575,
-67.8546524,
"Profundidad: 4"
],
[
10.55245304,
-67.23941803,
"Profundidad: 23"
],
[
10.81117615,
-68.2738924,
"Profundidad: 2"
],
[
10.25031337,
-64.76101398,
"Profundidad: 27"
],
[
10.80093264,
-66.03057861,
"Profundidad: 27"
],
[
10.29034526,
-64.75944757,
"Profundidad: 11"
],
[
10.29059861,
-64.76131439,
"Profundidad: 16"
],
[
10.82017581,
-68.24774086,
"Profundidad: 3"
],
[
11.21524858,
-63.76796365,
"Profundidad: 12"
],
[
10.81172414,
-67.17041016,
"Profundidad: 2"
],
[
10.62475741,
-66.73928261,
"Profundidad: 1"
],
[
10.49633584,
-67.74483204,
"Profundidad: 9"
],
[
10.29114753,
-64.76107836,
"Profundidad: 14"
],
[
10.29725954,
-64.75394368,
"Profundidad: 10"
],
[
10.91961776,
-63.83056641,
"Profundidad: 3"
],
[
10.55383475,
-67.23907471,
"Profundidad: 15"
],
[
10.2967634,
-64.60523129,
"Profundidad: 15"
],
[
10.30603676,
-64.75154042,
"Profundidad: 10"
],
[
10.63901378,
-66.15966797,
"Profundidad: 5"
],
[
10.29687952,
-64.7546947,
"Profundidad: 10"
],
[
10.29533833,
-64.7565937,
"Profundidad: 10"
],
[
10.29482636,
-64.75612164,
"Profundidad: 12"
],
[
10.29405049,
-64.76015568,
"Profundidad: 15"
],
[
10.29399243,
-64.76016641,
"Profundidad: 15"
],
[
10.29417188,
-64.75978017,
"Profundidad: 16"
],
[
10.29428272,
-64.75890577,
"Profundidad: 15"
],
[
10.92232513,
-65.42199612,
"Profundidad: 3"
],
[
10.48080687,
-67.80899048,
"Profundidad: 7"
],
[
10.4982769,
-67.74333,
"Profundidad: 19"
],
[
10.25111575,
-64.76180255,
"Profundidad: 16"
],
[
10.2993549,
-64.75635231,
"Profundidad: 15"
],
[
10.53802388,
-66.09336376,
"Profundidad: 3"
],
[
10.55298041,
-67.23879039,
"Profundidad: 8"
],
[
10.52568261,
-67.51098633,
"Profundidad: 8"
],
[
10.26855638,
-64.75049436,
"Profundidad: 18"
],
[
10.26793088,
-64.75093156,
"Profundidad: 19"
],
[
10.29398187,
-64.75813329,
"Profundidad: 10"
],
[
10.29393965,
-64.75813866,
"Profundidad: 10"
],
[
10.29419827,
-64.75817621,
"Profundidad: 12"
],
[
10.29429328,
-64.757967,
"Profundidad: 18"
],
[
10.97272835,
-64.40415144,
"Profundidad: 3"
],
[
10.53131198,
-67.48631001,
"Profundidad: 7"
],
[
10.36220411,
-64.49163437,
"Profundidad: 18"
],
[
10.30516591,
-64.56171513,
"Profundidad: 17"
],
[
10.30520813,
-64.56175804,
"Profundidad: 17"
],
[
10.8185424,
-68.24597597,
"Profundidad: 12"
],
[
10.2945044,
-64.6059823,
"Profundidad: 18"
],
[
11.95301352,
-66.62272453,
"Profundidad: 2"
],
[
10.36236241,
-64.49923038,
"Profundidad: 10"
],
[
10.47162838,
-67.90009975,
"Profundidad: 1.5"
],
[
10.29452551,
-64.60557461,
"Profundidad: 25"
],
[
10.48568086,
-67.98292637,
"Profundidad: 1"
],
[
10.30322364,
-64.68586922,
"Profundidad: 9"
],
[
10.28304024,
-64.66843486,
"Profundidad: 10"
],
[
10.26845081,
-64.75047827,
"Profundidad: 15"
],
[
10.29393437,
-64.75807965,
"Profundidad: 17"
],
[
10.64910988,
-66.26188695,
"Profundidad: 6"
],
[
10.47686912,
-68.01260501,
"Profundidad: 4"
],
[
10.28904684,
-64.60335374,
"Profundidad: 7"
],
[
10.29017636,
-64.60643291,
"Profundidad: 10"
],
[
10.49101894,
-67.95290709,
"Profundidad: 6"
],
[
10.30596814,
-64.75172281,
"Profundidad: 9"
],
[
10.25037672,
-64.76069212,
"Profundidad: 10"
],
[
10.79148976,
-64.17938232,
"Profundidad: 9.8"
],
[
11.80417849,
-66.19741201,
"Profundidad: 7"
],
[
11.80417849,
-66.19741201,
"Profundidad: 7"
],
[
10.90716563,
-65.36321282,
"Profundidad: 17"
],
[
10.90689172,
-65.36292315,
"Profundidad: 18"
],
[
10.90665995,
-65.36262274,
"Profundidad: 16"
],
[
10.90650192,
-65.36205411,
"Profundidad: 18"
],
[
10.89624061,
-65.32472312,
"Profundidad: 14"
],
[
10.89612472,
-65.32483578,
"Profundidad: 16"
],
[
10.89669363,
-65.32655239,
"Profundidad: 17"
],
[
10.48544876,
-67.98374176,
"Profundidad: 1"
],
[
10.89276391,
-65.25478721,
"Profundidad: 12"
],
[
10.89684113,
-65.32670259,
"Profundidad: 18"
],
[
10.89694648,
-65.32715321,
"Profundidad: 16"
],
[
10.84274755,
-64.21783447,
"Profundidad: 9"
],
[
10.26255995,
-64.75444794,
"Profundidad: 18"
],
[
10.26801797,
-64.7510469,
"Profundidad: 25"
],
[
10.14283995,
-64.9164319,
"Profundidad: 3"
],
[
10.29278375,
-64.5768857,
"Profundidad: 10"
],
[
10.29925462,
-64.75597143,
"Profundidad: 17"
],
[
10.30740372,
-64.7501564,
"Profundidad: 10"
],
[
10.84641977,
-68.22924167,
"Profundidad: 3"
],
[
10.26260218,
-64.75507021,
"Profundidad: 18"
],
[
10.39091982,
-64.38003302,
"Profundidad: 30"
],
[
10.29427217,
-64.60540295,
"Profundidad: 18"
],
[
11.2031984,
-63.75306129,
"Profundidad: 15"
],
[
10.29034526,
-64.76054192,
"Profundidad: 10"
],
[
10.30900818,
-64.76037025,
"Profundidad: 8"
],
[
10.29963464,
-64.75590706,
"Profundidad: 10"
],
[
10.25183366,
-64.76200104,
"Profundidad: 15"
],
[
10.25054564,
-64.76088524,
"Profundidad: 14"
],
[
10.2503556,
-64.76037025,
"Profundidad: 7"
],
[
10.25310056,
-64.76092815,
"Profundidad: 8"
],
[
10.86044968,
-68.21737289,
"Profundidad: 6"
],
[
10.2938077,
-64.7599411,
"Profundidad: 18"
],
[
10.29431439,
-64.60596085,
"Profundidad: 28"
],
[
10.29009191,
-64.60639,
"Profundidad: 10"
],
[
10.29465219,
-64.75530624,
"Profundidad: 8"
],
[
10.29583447,
-64.75607872,
"Profundidad: 14"
],
[
10.29009191,
-64.7599411,
"Profundidad: 9"
],
[
10.29929685,
-64.75590706,
"Profundidad: 12"
],
[
10.15348542,
-64.94318962,
"Profundidad: 6"
],
[
11.20244064,
-63.74825478,
"Profundidad: 6"
],
[
10.2620532,
-64.75221634,
"Profundidad: 25"
],
[
10.29399771,
-64.75989819,
"Profundidad: 15"
],
[
10.15139438,
-64.94155884,
"Profundidad: 6"
],
[
10.5329714,
-67.47380555,
"Profundidad: 5"
],
[
10.64877774,
-66.26217127,
"Profundidad: 6"
],
[
10.27244133,
-64.74659443,
"Profundidad: 13"
],
[
10.57620484,
-64.24405575,
"Profundidad: 10"
],
[
12.03621466,
-69.84609604,
"Profundidad: 2"
],
[
12.03550113,
-69.8468256,
"Profundidad: 2"
],
[
10.58407512,
-64.27277952,
"Profundidad: 6"
],
[
10.57309622,
-64.25965548,
"Profundidad: 3"
],
[
10.29684785,
-64.62192535,
"Profundidad: 21"
],
[
10.30559658,
-64.63402748,
"Profundidad: 11"
],
[
10.80767738,
-64.1519165,
"Profundidad: 10"
],
[
10.55083929,
-67.25128412,
"Profundidad: 15"
],
[
10.54968962,
-67.25237846,
"Profundidad: 12"
],
[
10.49706638,
-67.74413198,
"Profundidad: 8"
],
[
10.44729878,
-63.97596359,
"Profundidad: 10"
],
[
10.2513269,
-64.53103065,
"Profundidad: 4"
],
[
10.56710565,
-67.14817733,
"Profundidad: 6"
],
[
10.87376774,
-65.30754089,
"Profundidad: 17"
],
[
10.30753567,
-64.76000547,
"Profundidad: 8"
],
[
10.29596114,
-64.59890127,
"Profundidad: 12"
],
[
10.536948,
-67.46751308,
"Profundidad: 17"
],
[
10.53760197,
-67.47073174,
"Profundidad: 15"
],
[
10.62197354,
-66.8542099,
"Profundidad: 21"
],
[
10.49097674,
-67.9939127,
"Profundidad: 1"
],
[
10.56207211,
-64.14093018,
"Profundidad: 1.5"
],
[
10.54348763,
-67.29638815,
"Profundidad: 14"
],
[
10.61023674,
-66.87733054,
"Profundidad: 3"
],
[
10.62821611,
-66.69799805,
"Profundidad: 2"
],
[
10.55552232,
-67.21000493,
"Profundidad: 12"
],
[
11.14892956,
-63.91828537,
"Profundidad: 6"
],
[
11.94397088,
-69.80334967,
"Profundidad: 1"
],
[
10.51025006,
-67.59896278,
"Profundidad: 6"
],
[
10.29104197,
-64.76103544,
"Profundidad: 15"
],
[
10.37976522,
-66.73095703,
"Profundidad: 2"
],
[
10.62639186,
-66.4349243,
"Profundidad: 2"
],
[
10.36625676,
-64.49884415,
"Profundidad: 14"
],
[
10.62821611,
-66.61010742,
"Profundidad: 3"
],
[
10.5909275,
-66.09117508,
"Profundidad: 27"
],
[
10.30649593,
-64.75069284,
"Profundidad: 10"
],
[
10.29194981,
-64.57476139,
"Profundidad: 10"
],
[
10.55606023,
-67.19842315,
"Profundidad: 4"
],
[
10.55466799,
-67.21004248,
"Profundidad: 2"
],
[
10.55251633,
-67.21407652,
"Profundidad: 3"
],
[
10.55576491,
-67.18472242,
"Profundidad: 2"
],
[
10.61995417,
-66.85679555,
"Profundidad: 2"
],
[
10.30470145,
-64.56463337,
"Profundidad: 15"
],
[
10.58767929,
-66.08314991,
"Profundidad: 4"
],
[
10.93468183,
-64.21035916,
"Profundidad: 1"
],
[
10.29625671,
-64.60503817,
"Profundidad: 18"
],
[
10.54519636,
-66.0741806,
"Profundidad: 3"
],
[
10.52246536,
-67.51684427,
"Profundidad: 1"
],
[
10.62495776,
-66.73880786,
"Profundidad: 1"
],
[
10.61994889,
-66.85712814,
"Profundidad: 2"
],
[
10.62049724,
-66.74827337,
"Profundidad: 2"
],
[
11.22159445,
-63.75597954,
"Profundidad: 15"
],
[
11.21511176,
-63.76567841,
"Profundidad: 12"
],
[
10.61813514,
-66.8590486,
"Profundidad: 3"
],
[
10.4954075,
-67.73963928,
"Profundidad: 15"
],
[
10.293301,
-65.23681641,
"Profundidad: 8"
],
[
10.61920547,
-66.85896277,
"Profundidad: 2"
],
[
10.52545055,
-67.51321793,
"Profundidad: 19"
],
[
10.50788184,
-67.58765459,
"Profundidad: 1"
],
[
10.52334088,
-67.51356125,
"Profundidad: 7"
],
[
10.83447039,
-68.23626101,
"Profundidad: 4"
],
[
10.56521775,
-64.26353663,
"Profundidad: 10"
],
[
10.81953299,
-68.2513243,
"Profundidad: 6"
],
[
10.53709567,
-67.47013092,
"Profundidad: 18"
],
[
10.49662858,
-67.74475425,
"Profundidad: 10"
],
[
10.49673671,
-67.74291158,
"Profundidad: 25"
],
[
10.49850899,
-67.74316907,
"Profundidad: 12"
],
[
10.49681583,
-67.74430096,
"Profundidad: 8"
],
[
10.49687385,
-67.74369478,
"Profundidad: 10"
],
[
10.44414403,
-64.033041,
"Profundidad: 2"
],
[
10.62054996,
-66.74821973,
"Profundidad: 2"
],
[
10.57557205,
-67.11616516,
"Profundidad: 3"
],
[
10.53681087,
-67.37168312,
"Profundidad: 0"
],
[
10.5510186,
-67.25203514,
"Profundidad: 15"
],
[
10.55591257,
-67.2099781,
"Profundidad: 12"
],
[
10.54941538,
-67.25349426,
"Profundidad: 7"
],
[
10.86432715,
-68.24707031,
"Profundidad: 10"
],
[
10.60758456,
-66.15593433,
"Profundidad: 6"
],
[
10.7392113,
-68.21651459,
"Profundidad: 10"
],
[
10.53321401,
-66.0968399,
"Profundidad: 3"
],
[
10.56949715,
-67.23907471,
"Profundidad: 15"
],
[
10.4788446,
-67.80897975,
"Profundidad: 2"
],
[
11.21637464,
-63.76893997,
"Profundidad: 10"
],
[
10.56311627,
-66.05434299,
"Profundidad: 4"
],
[
10.46299824,
-67.94559002,
"Profundidad: 1"
],
[
10.5526218,
-68.00537109,
"Profundidad: 11"
],
[
10.94517091,
-68.26720297,
"Profundidad: 4"
],
[
10.5094167,
-66.13769531,
"Profundidad: 4"
],
[
15.39013572,
-63.36914062,
"Profundidad: 12"
],
[
15.39013572,
-63.36914062,
"Profundidad: 12"
],
[
15.40072782,
-63.36914062,
"Profundidad: 16"
],
[
15.39013572,
-63.36914062,
"Profundidad: 17"
],
[
10.54262272,
-66.0806179,
"Profundidad: 4"
],
[
15.40072782,
-63.38012695,
"Profundidad: 20"
],
[
10.54421542,
-67.34233975,
"Profundidad: 20"
],
[
10.44527299,
-67.84606934,
"Profundidad: 4"
],
[
10.62239534,
-66.84400678,
"Profundidad: 1"
],
[
10.64936293,
-66.26175821,
"Profundidad: 5"
],
[
11.76460429,
-66.60083771,
"Profundidad: 16"
],
[
10.4840984,
-67.94782162,
"Profundidad: 3"
],
[
10.93000467,
-68.25999856,
"Profundidad: 1.8"
],
[
10.52021854,
-67.82958984,
"Profundidad: 6"
],
[
12.05246384,
-69.85093206,
"Profundidad: 1.5"
],
[
10.59582083,
-66.86279297,
"Profundidad: 1"
],
[
10.92501142,
-68.22509766,
"Profundidad: NA"
],
[
10.30740372,
-64.75865364,
"Profundidad: 6"
],
[
10.61250399,
-66.88443303,
"Profundidad: 3"
],
[
10.60847565,
-66.17228508,
"Profundidad: 25"
],
[
10.66060795,
-68.15917969,
"Profundidad: 15"
],
[
10.46282943,
-67.93093443,
"Profundidad: 1"
],
[
10.92277812,
-65.41856289,
"Profundidad: 6"
],
[
10.48110227,
-67.80688763,
"Profundidad: 10"
],
[
10.58350298,
-66.06370926,
"Profundidad: 5"
],
[
10.30913485,
-64.7252655,
"Profundidad: 4"
],
[
11.09397151,
-63.97613525,
"Profundidad: 1"
],
[
11.97484475,
-67.66479492,
"Profundidad: 20"
],
[
10.49604178,
-67.74497956,
"Profundidad: 3"
],
[
10.49321323,
-67.73672104,
"Profundidad: 0"
],
[
10.49946369,
-67.73282111,
"Profundidad: 2"
],
[
10.85151445,
-68.22509766,
"Profundidad: 13"
],
[
10.49137763,
-67.99562931,
"Profundidad: 1"
],
[
10.94119179,
-64.46777344,
"Profundidad: 25"
],
[
10.4881851,
-67.82441406,
"Profundidad: 3.5"
],
[
10.62189972,
-66.84572875,
"Profundidad: NA"
],
[
10.62191027,
-66.84573144,
"Profundidad: NA"
],
[
10.55306878,
-67.23870544,
"Profundidad: 12"
],
[
10.50924136,
-67.59925871,
"Profundidad: 0"
],
[
10.55679197,
-66.05726748,
"Profundidad: 0.85"
] 
];
data.addColumn('number','Latitude');
data.addColumn('number','Longitude');
data.addColumn('string','prof');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartMapIDe206aa2427a() {
var data = gvisDataMapIDe206aa2427a();
var options = {};
options["showTip"] = true;
options["mapType"] = "terrain";
options["enableScrollWheel"] = false;
options["useMapTypeControl"] = true;

    var chart = new google.visualization.Map(
    document.getElementById('MapIDe206aa2427a')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "map";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartMapIDe206aa2427a);
})();
function displayChartMapIDe206aa2427a() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>

<!-- jsChart -->

<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMapIDe206aa2427a"></script>

<!-- divChart -->

<div id="MapIDe206aa2427a" style="width: 500; height: automatic;">

</div>

[See the map code here](XXXXXX)

For the last map a google map was plotted with only the **position and
depth** of the sighthing, its less messy than the previous plot but with
the fact of lossing an important information as the quantity.
