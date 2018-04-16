echo "17918045_690834471089219_2687280237708728863_o.jpg"
graph="./tf_files/training_summaries/nasnet_mobile/with_aug/retrained_graph_lr_0.016_ts_500_rb_30_rs_30.pb"
input_height=224
input_width=224
python3 label_image.py \
--graph=$graph --labels=./tf_files/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--input_height=$input_height --input_width=$input_width \
--image=./datasets/predict/hand/17918045_690834471089219_2687280237708728863_o.jpg

echo "19748836_733526833486649_2277833445790702130_n.jpg"
graph="./tf_files/training_summaries/nasnet_mobile/with_aug/retrained_graph_lr_0.016_ts_500_rb_30_rs_30.pb"
input_height=224
input_width=224
python3 label_image.py \
--graph=$graph --labels=./tf_files/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--input_height=$input_height --input_width=$input_width \
--image=./datasets/predict/hand/19748836_733526833486649_2277833445790702130_n.jpg

echo "29512933_855731814599483_1044513431990051005_n.jpg"
graph="./tf_files/training_summaries/nasnet_mobile/with_aug/retrained_graph_lr_0.016_ts_500_rb_30_rs_30.pb"
input_height=224
input_width=224
python3 label_image.py \
--graph=$graph --labels=./tf_files/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--input_height=$input_height --input_width=$input_width \
--image=./datasets/predict/hand/29512933_855731814599483_1044513431990051005_n.jpg

echo "arubahapppy.jpg"
graph="./tf_files/training_summaries/nasnet_mobile/with_aug/retrained_graph_lr_0.016_ts_500_rb_30_rs_30.pb"
input_height=224
input_width=224
python3 label_image.py \
--graph=$graph --labels=./tf_files/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--input_height=$input_height --input_width=$input_width \
--image=./datasets/predict/hand/arubahapppy.jpg
