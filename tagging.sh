export BERT_BASE_DIR=/home/amax/zhanghaipeng/bert_tagging/model/chinese_L-12_H-768_A-12
export TEA_DIR=/home/amax/zhanghaipeng/bert_tagging/TEA

CUDA_VISIBLE_DEVICES=0 python bert-master/run_sequence_tagging.py \
	  --task_name=TEA \
	    --do_train=false \
	      --do_eval=true \
	        --data_dir=$TEA_DIR \
		  --vocab_file=$BERT_BASE_DIR/vocab.txt \
		    --bert_config_file=$BERT_BASE_DIR/bert_config.json \
		      --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
		        --max_seq_length=128 \
			  --train_batch_size=32 \
			    --eval_batch_size=8  \
			      --pred_batch_size=50  \
			       --learning_rate=5e-5 \
			         --num_train_epochs=5.0 \
			           --output_dir=./tea_output/
