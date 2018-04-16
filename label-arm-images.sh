

echo "19388603_724368611069138_5052042485023250433_o.jpg"
graph="./tf_files/training_summaries/nasnet_mobile/with_aug/retrained_graph_lr_0.016_ts_500_rb_30_rs_30.pb"
input_height=224
input_width=224
python3 label_image.py \
--graph=$graph --labels=./tf_files/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--input_height=$input_height --input_width=$input_width \
--image=./datasets/predict/arm/19388603_724368611069138_5052042485023250433_o.jpg

echo "19575420_732281036944562_4192839481468423780_o.jpg"
graph="./tf_files/training_summaries/nasnet_mobile/with_aug/retrained_graph_lr_0.016_ts_500_rb_30_rs_30.pb"
input_height=224
input_width=224
python3 label_image.py \
--graph=$graph --labels=./tf_files/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--input_height=$input_height --input_width=$input_width \
--image=./datasets/predict/arm/19575420_732281036944562_4192839481468423780_o.jpg

echo "20989117_758067127699286_7907442809435725582_o.jpg"
graph="./tf_files/training_summaries/nasnet_mobile/with_aug/retrained_graph_lr_0.016_ts_500_rb_30_rs_30.pb"
input_height=224
input_width=224
python3 label_image.py \
--graph=$graph --labels=./tf_files/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--input_height=$input_height --input_width=$input_width \
--image=./datasets/predict/arm/20989117_758067127699286_7907442809435725582_o.jpg

echo "27972653_1606131226131326_881297791303811072_o.jpg"
graph="./tf_files/training_summaries/nasnet_mobile/with_aug/retrained_graph_lr_0.016_ts_500_rb_30_rs_30.pb"
input_height=224
input_width=224
python3 label_image.py \
--graph=$graph --labels=./tf_files/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--input_height=$input_height --input_width=$input_width \
--image=./datasets/predict/arm/27972653_1606131226131326_881297791303811072_o.jpg