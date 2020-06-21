setwd("GitHub/CheatSheetsDS/RStudioDS")
auto <- read.csv("r-course/data/tema1/auto-mpg.csv", header = TRUE, sep = ","
                 , na.strings = "", stringsAsFactors = FALSE)
# para que R reconosca los caracteres como Factores [stringsAsFactors] 
# debe de estar en TRUE encambio si quieres mantener los caracteres y no perderlos en FALSE
names(auto)

# "../r-course/data/tema1/auto-mpg.csv" || con .. vas un nivel atras de las carpetas
# read.table carga datos separados por espacios

# read.csv2()  == read.csv("filename",sep = ";", dec= ",")
# para separar por espacios => sep="\t"

auto_no_header <- read.csv("r-course/data/tema1/auto-mpg-noheader.csv", header = FALSE)
head(auto_no_header, 4)

auto_no_sense <- read.csv("r-course/data/tema1/auto-mpg-noheader.csv")
head(auto_no_sense, 4)

auto_custom_header <- read.csv("r-course/data/tema1/auto-mpg-noheader.csv", header = F
                               ,col.names = c("numero","millas_por_galeon"
                                              ,"cilindrada","desplazamiento"
                                              ,"caballos_de_potencia","peso"
                                              ,"aceleracion","año","modelo"
                                              )
                               )
head(auto_custom_header, 2)

# NA not available
# na.strings="" lo que venga en comillas R lo tomara como si fuera NAs, 
  # en resumen R lo convertira automaticamente en datos NAs
# as,character() convierte una columna a caracteres (desde factor al parecer)

who_from_internet <- read.csv("https://frogames.es/course-contents/r/intro/tema1/WHO.csv")
View(who_from_internet)
