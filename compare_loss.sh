#!/bin/bash

## Comparaison des taux de pertes des divers scénario

# indiquer la liste des dossier concerné
list="1H  2nd 3rd CA 1H_obstacle 2nd_obstacle 3rd_obstacle CA_obstacle 2nd_unsaturated_1G_500o 2nd_unsaturated_100M_500o 2nd_unsaturated_100M_def 2nd_unsaturated_100M_full 2nd_unsaturated_5M_500o 2nd_unsaturated_5M_def 2nd_unsaturated_5M_full 2nd_unsaturated_500o_full 2nd_unsaturated_def_full" 


echo -e "\tratio_retry\tloss_ack\tloss_seq_initial\tloss_seq_new"
for i in $list
do 
res=`awk -f loss_rate.awk "$i"/complete_data.csv`
echo -e "$i\t$res"
### appliquer script awk calcul tx perte

done
