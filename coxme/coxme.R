# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Fit a mixed effects Cox model Use coxme With (In) R Software
install.packages("coxme")
library("coxme")
coxme = read.csv("https://raw.githubusercontent.com/timbulwidodostp/coxme/main/coxme/coxme.csv",sep = ";")
# Estimation Fit a mixed effects Cox model Use coxme With (In) R Software
result_coxph <- coxph(Surv(time, status) ~ ph.ecog + age, data=coxme, subset=(!is.na(inst)))
summary(result_coxph)
result_coxme_1 <- coxme(Surv(time, status) ~ ph.ecog + age + (1|inst), coxme)
summary(result_coxme_1)
anova(result_coxph, result_coxme_1)
result <- with(coxme, scale(cbind(age, wt.loss, meal.cal)))
result_coxme_2 <- coxme(Surv(time, status) ~ ph.ecog + (result | 1), data=coxme)
summary(result_coxme_2)
# Fit a mixed effects Cox model Use coxme With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished