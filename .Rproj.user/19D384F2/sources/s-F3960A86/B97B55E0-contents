# library
library(RODBC)

mdbConnect<-odbcDriverConnect("Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=database/Transfer Efficiency Database V1.1.3.mdb")

tbls <- sqlTables(mdbConnect)


contacts <- sqlFetch(mdbConnect, "Contacts")

write.csv(contacts, "contactsdata.csv", row.names=F)


ContactTypeAUX <- sqlFetch(mdbConnect, "ContactType")
EfficiencyTypeAUX <- sqlFetch(mdbConnect, " Efficiency Type")


odbcClose(mdbConnect)


# ContactType

# EfficiencyType

# PhysicalState

# References

#Substances

# TE Analysis

# TransferEfficiencySource

# TransferType