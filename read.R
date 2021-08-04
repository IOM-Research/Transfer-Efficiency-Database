# library
library(RODBC)

mdbConnect<-odbcDriverConnect("Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=database/Transfer Efficiency Database V1.1.3.mdb")

tbls <- sqlTables(mdbConnect)


contacts <- sqlFetch(mdbConnect, "Contacts")

#write.csv(contacts, "contactsdata.csv", row.names=F)


for(i in c("ContactType", "Efficiency Type", "PhysicalState", "References", "Substances", "TE Analysis", "TransferEfficiencySource", "TransferType")){
outputAUX <- sqlFetch(mdbConnect, i)
write.csv(outputAUX, paste0("data/", i ,".csv"), row.names=F)
}


odbcClose(mdbConnect)


# ContactType

# EfficiencyType

# PhysicalState

# References

#Substances

# TE Analysis

# TransferEfficiencySource

# TransferType