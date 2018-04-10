export TRAINING_STEPS=300
export LEARNING_RATE=0.01
export ARCHITECTURE=inception_v3
export TF_CPP_MIN_VLOG_LEVEL=1

echo "ARCHITECTURE=$ARCHITECTURE"
echo "----Hyperparameters----"
echo "training_steps=$TRAINING_STEPS"
echo "learning_rate=$LEARNING_RATE"

echo "----Starting training----"

python3 -m retrain \
	--flip_left_right \
	--bottleneck_dir=tf_files/bottlenecks \
	--learning_rate=$LEARNING_RATE \
	--how_many_training_steps=$TRAINING_STEPS \
	--model_dir=tf_files/models/ \
	--summaries_dir=tf_files/training_summaries/"${ARCHITECTURE}" \
	--output_graph="tf_files/retrained_graph_${ARCHITECTURE}_${TRAINING_STEPS}_${LEARNING_RATE}.pb" \
	--output_labels=tf_files/retrained_labels.txt \
	--architecture="${ARCHITECTURE}" \
	--image_dir=data/training/ \
	--print_misclassified_test_images

echo "----Training complete----"