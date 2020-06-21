install.packages("XML", dependencies = TRUE)
library(XML)

url <- "r-course/data/tema1/cd_catalog.xml"

xmldoc <- xmlParse(url) # XMLInternalDocument
rootnode <- xmlRoot(xmldoc)
rootnode[2]

cds_data <- xmlSApply(rootnode, function(x) xmlSApply(x, xmlValue))
View(cds_data)

cds.catalog <- data.frame(t(cds_data), row.names = NULL)
View(cds.catalog)
head(cds.catalog,2)
cds.catalog[1:5,]
cds.catalog[1:5,2:4]

# funciones importantes
# xpathSApply()  ...
# getNodeSet()   obtener conjuntode nodos

population_url <- "r-course/data/tema1/WorldPopulation-wiki.htm"
tables <- readHTMLTable(population_url)

most_populated <- tables[[6]]
head(most_populated, 3)

custom_table <- readHTMLTable(population_url, which = 6)
View(custom_table)
