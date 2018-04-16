echo "IMG_1619.jpg"
graph="./tf_files/training_summaries/nasnet_mobile/with_aug/retrained_graph_lr_0.016_ts_500_rb_30_rs_30.pb"
input_height=224
input_width=224
python3 label_image.py \
--graph=$graph --labels=./tf_files/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--input_height=$input_height --input_width=$input_width \
--image=./datasets/predict/random/IMG_1619.jpg