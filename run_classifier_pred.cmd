set BERT_BASE_DIR="D:\data\nlp\bert\uncased_L-12_H-768_A-12"
set GLUE_DIR="D:\data\bert_news_sentiment"
set TRAINED_CLASSIFIER="D:\data\tmp"

python run_classifier.py --task_name=TWEET --do_predict=true --data_dir=%GLUE_DIR% --vocab_file=%BERT_BASE_DIR%\vocab.txt --bert_config_file=%BERT_BASE_DIR%\bert_config.json --init_checkpoint=%TRAINED_CLASSIFIER% --max_seq_length=16 --output_dir="D:\data\tmp\prediction"