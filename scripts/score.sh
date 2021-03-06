if [ $1 == 1 ] ; then
    echo "running multi-bleu.perl"
    ./multi-bleu.perl ../data/devtest.en < ../data/output.txt
elif [ $1 == 2 ] ; then
    echo "running train_bi.py"
    python train_bi.py --data_file data/hw4_data.bin --optimizer Adam -lr 1e-2 --batch_size 48 --model_file model.py
else
    echo "Unknown parameter"
fi

