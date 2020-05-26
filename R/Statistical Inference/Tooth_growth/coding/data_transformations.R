# Libraries:
library(reshape2)

# Labeling subjects:
data("ToothGrowth")

# Hipotesis testing:

## Supplement Hipothesis, OJ vs CV:

### Compare all dosage, OJ vs CV (0.5 mg + 1.0 mg+ 2.0 mg):
H_all_dosage<-t.test(len ~ supp, paired=FALSE, var.equal=FALSE, data=ToothGrowth)

### Compare low dosage OJ vs VC (0.5 mg):
low_dose <- ToothGrowth[ToothGrowth$dose==0.5, ]
H_0.5<-t.test(len ~ supp, paired=FALSE, var.equal=FALSE, data=low_dose)

### Compare mid dosage OJ vs VC (1.0 mg):
mid_dose <- ToothGrowth[ToothGrowth$dose==1.0, ]
H_1.0<-t.test(len ~ supp, paired=FALSE, var.equal=FALSE, data=mid_dose)

### Compare high dosage OJ vs VC (2.0 mg):
high_dose <- ToothGrowth[ToothGrowth$dose==2.0, ]
H_2.0<-t.test(len ~ supp, paired=FALSE, var.equal=FALSE, data=high_dose)

## Dosage Hipothesis: 0.5 vs 1.0 and 1.0 vs 2.0 for all supplements.

### Compare 0.5 vs 1.0 for all supplements:
low_mid<-rbind(low_dose,mid_dose)
H_low_mid<-t.test(len ~ dose, paired=FALSE, var.equal=FALSE, data=low_mid)

### Compare 0.5 vs 1.0 for all supplements:
high_mid<-rbind(mid_dose,high_dose)
H_high_mid<-t.test(len ~ dose, paired=FALSE, var.equal=FALSE, data=high_mid)

### Compare 0.5 vs 1.0 for OJ:
OJ_low_mid <- rbind(low_dose,mid_dose)
OJ_low_mid <- OJ_low_mid[OJ_low_mid$supp=="OJ",]
H_OJ_low_mid <- t.test(len ~ dose, paired=FALSE, var.equal=FALSE, data=OJ_low_mid)

### Compare 1.0 vs 2.0 via OJ:
OJ_mid_high <- rbind(mid_dose,high_dose)
OJ_mid_high <- OJ_mid_high[OJ_mid_high$supp=="OJ",]
H_OJ_mid_high <- t.test(len ~ dose, paired=FALSE, var.equal=FALSE, data=OJ_mid_high)

### Compare 0.5 vs 1.0 via VC:
VC_low_mid <- rbind(low_dose,mid_dose)
VC_low_mid <- VC_low_mid[VC_low_mid$supp=="VC",]
H_VC_low_mid <- t.test(len ~ dose, paired=FALSE, var.equal=FALSE, data=VC_low_mid)

### Compare 1.0 vs 2.0 via VC:
VC_mid_high <- rbind(mid_dose,high_dose)
VC_mid_high <- VC_mid_high[VC_mid_high$supp=="VC",]
H_VC_mid_high <- t.test(len ~ dose, paired=FALSE, var.equal=FALSE, data=VC_mid_high)