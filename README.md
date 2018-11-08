# bert-sequence-tagging
基于BERT的中文序列标注

BERT的一作Jacob说他不准备放出序列标注的代码，不过你可以在issues中看到Jacob参与的讨论。

该Repo不是可以直接运行的，不过如果你真的需要这个实现，很大程度上应该一看就能明白。

sequence tagging可以用在很多地方，NER, POS等，也许最近的天池瑞金比赛也可以尝试，Kaggle最新的一个文本分类的比赛也可以尝试，不过Kaggle的这个新赛直接使用Jacob公布的代码应该不需要修改很多地方。

基于google-bert源代码，写sequence tagging模块，并在IJCNLP的CGED数据上做了初步测试，实验结果如下图所示。

![实验结果](http://wx1.sinaimg.cn/mw690/aba7d18bly1fx0zcmf50qj20fr0th79n.jpg)

其中，最上图是2017年哈工大的一个组公布的代码C++跑出的结果；中图是我用Tensorflow复现出的结果；下图是基于BERT做fine-tuning得到的一个结果。

从结果上来看，实现上暂时看起来似乎没有问题。


