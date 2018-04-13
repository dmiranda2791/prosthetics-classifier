
export TF_CPP_MIN_VLOG_LEVEL=1
export TF_CPP_MIN_LOG_LEVEL=2

ARCHITECTURE=nasnet_mobile
TFHUB_MODULE="https://tfhub.dev/google/imagenet/nasnet_mobile/feature_vector/1"
TRAINING_STEPS=500
LEARNING_RATE=0.015

#Batch sizes
TRAIN_BATCH_SIZE=10
VALIDATION_BATCH_SIZE=-1 # Complete set
TEST_BATCH_SIZE=-1 # Complete set

# Data distribution
TESTING_SET_PERCENTAGE=10
VALIDATION_SET_PERCENTAGE=10
IMAGE_DIR="data/training/"

python3 -m retrain \
	--tfhub_module=$TFHUB_MODULE \
	--learning_rate=$LEARNING_RATE \
	--how_many_training_steps=$TRAINING_STEPS \
	--testing_percentage=$TESTING_SET_PERCENTAGE \
	--validation_percentage=$VALIDATION_SET_PERCENTAGE \
	--train_batch_size=$TRAIN_BATCH_SIZE \
	--validation_batch_size=$VALIDATION_BATCH_SIZE \
	--test_batch_size=$TEST_BATCH_SIZE \
	--bottleneck_dir=tf_files/bottlenecks \
	--image_dir=$IMAGE_DIR \
	--model_dir=tf_files/models/ \
	--summaries_dir="tf_files/training_summaries/"${ARCHITECTURE}"/ts_optimization/ts_"${TRAINING_STEPS} \
	--output_graph="tf_files/training_summaries/"${ARCHITECTURE}"/ts_optimization/retrained_graph_${TRAINING_STEPS}.pb" \
	--output_labels=tf_files/retrained_labels.txt \
	--print_misclassified_test_images \

echo "----Training complete----"