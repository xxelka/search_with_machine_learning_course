python createContentTrainingData.py --output /workspace/datasets/categories/output.fasttext --sample_rate 0.5 --min_products 10

~/fastText-0.9.2/fasttext supervised -input train.fasttext -output products -epoch 50 -wordNgrams 2 -lr 2

wc -l /workspace/datasets/fasttext/shuffled.fasttext

head -n 10000 /workspace/datasets/fasttext/shuffled.fasttext > /workspace/datasets/fasttext/train.fasttext
tail -n 10000 /workspace/datasets/fasttext/shuffled.fasttext > /workspace/datasets/fasttext/test.fasttext

~/fastText-0.9.2/fasttext supervised -input train.fasttext -output products -epoch 50 -wordNgrams 2 -lr 2