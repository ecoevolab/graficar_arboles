# MPN strain: ST00085 // 2023/08/10
rm(list=ls())
library(MPN)
tubes=  c(3,3,3,3,3)
positives = c(3,3,3,2,0)
amount = 2 * c(10**-5,10**-6,10**-7,10**-8,10**-9)
mpn <- mpn(positives, tubes, amount)
format(mpn, scientific = TRUE)

# MPN strain: ST00114 // 2023/10/06
rm(list=ls())
library(MPN)
tubes=  c(3,3,3,3,3,3)
positives = c(3,3,2,1,2,0)
amount = 2 * c(10**-5,10**-6,10**-7,10**-8,10**-9, 10**-10)
mpn <- mpn(positives, tubes, amount)
format(mpn, scientific = TRUE)

# MPN strain: ST00085 // 2023/10/06
rm(list=ls())
library(MPN)
tubes=  c(3,3,3,3,3,3)
positives = c(3,3,3,3,0,1)
amount = 2 * c(10**-5,10**-6,10**-7,10**-8,10**-9, 10**-10)
mpn <- mpn(positives, tubes, amount)
format(mpn, scientific = TRUE)

# MPN strain: ST00114 // 2023/10/11
rm(list=ls())
library(MPN)
tubes=  c(3,3,3)
positives = c(3,3,0)
amount = 2 * c(10**-5,10**-6,10**-7)
mpn <- mpn(positives, tubes, amount)
format(mpn, scientific = TRUE)
