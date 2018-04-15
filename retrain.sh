
export TF_CPP_MIN_VLOG_LEVEL=1
export TF_CPP_MIN_LOG_LEVEL=2

ARCHITECTURE=nasnet_mobile
TFHUB_MODULE="https://tfhub.dev/google/imagenet/nasnet_mobile/feature_vector/1"
TRAINING_STEPS=500
LEARNING_RATE=0.016

#Batch sizes
TRAIN_BATCH_SIZE=10
VALIDATION_BATCH_SIZE=-1 # Complete set
TEST_BATCH_SIZE=-1 # Complete set

# Data distribution
TESTING_SET_PERCENTAGE=15
VALIDATION_SET_PERCENTAGE=10
IMAGE_DIR="data/training/"

# augmentations
RANDOM_BRIGHTNESS=30
RANDOM_SCALE=30

python3 -m retrain \
	--flip_left_right \
	--random_brightness=$RANDOM_BRIGHTNESS \
	--random_scale=$RANDOM_SCALE \
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
	--summaries_dir="tf_files/training_summaries/"${ARCHITECTURE}"/with_aug/lr_"${LEARNING_RATE}"_ts_"${TRAINING_STEPS}"_rb_"${RANDOM_BRIGHTNESS}"_rs_"${RANDOM_SCALE} \
	--output_graph="tf_files/training_summaries/"${ARCHITECTURE}"/with_aug/retrained_graph_lr_"${LEARNING_RATE}"_ts_"${TRAINING_STEPS}"_rb_"${RANDOM_BRIGHTNESS}"_rs_"${RANDOM_SCALE}".pb" \
	--output_labels=tf_files/retrained_labels.txt \
	--print_misclassified_test_images \

echo "----Training complete----"