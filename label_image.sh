python3 label_image.py \
--graph=./tf_files/retrained_graph_300_0.01.pb --labels=./tf_files/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--input_height=299 --input_width=299 \
--image=./datasets/57.\ ultimakerpost.jpg