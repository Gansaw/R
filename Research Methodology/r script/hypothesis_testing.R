ph_stf <- read.csv("phone_satisfaction.csv", header = T)
app_stf <- ph_stf[ph_stf$Manufacturer=='Apple',2]
sams_stf <- ph_stf[ph_stf$Manufacturer=='Samsung',2]

var.test(app_stf,sams_stf)
t.test(app_stf,sams_stf,alt="greater", var.equal=T)