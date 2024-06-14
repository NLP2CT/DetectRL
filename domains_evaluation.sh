Detectors_path=

Task1_path=
Task2_path=

cd Benchmark\Benchmark

# Task 1
python $Detectors_path/likelihood_evaluation.py --test_data_path $Task1_path/multi_domains_arxiv_test.json,$Task1_path/multi_domains_xsum_test.json,$Task1_path/multi_domains_writing_prompt_test.json,$Task1_path/multi_domains_yelp_review_test.json,
python $Detectors_path/rank_evaluation.py --test_data_path $Task1_path/multi_domains_arxiv_test.json,$Task1_path/multi_domains_xsum_test.json,$Task1_path/multi_domains_writing_prompt_test.json,$Task1_path/multi_domains_yelp_review_test.json,
python $Detectors_path/logRank_evaluation.py --test_data_path $Task1_path/multi_domains_arxiv_test.json,$Task1_path/multi_domains_xsum_test.json,$Task1_path/multi_domains_writing_prompt_test.json,$Task1_path/multi_domains_yelp_review_test.json,
python $Detectors_path/entropy_evaluation.py --test_data_path $Task1_path/multi_domains_arxiv_test.json,$Task1_path/multi_domains_xsum_test.json,$Task1_path/multi_domains_writing_prompt_test.json,$Task1_path/multi_domains_yelp_review_test.json,
python $Detectors_path/LRR_evaluation.py --test_data_path $Task1_path/multi_domains_arxiv_test.json,$Task1_path/multi_domains_xsum_test.json,$Task1_path/multi_domains_writing_prompt_test.json,$Task1_path/multi_domains_yelp_review_test.json,
python $Detectors_path/NPR_evaluation.py --test_data_path $Task1_path/multi_domains_arxiv_test.json,$Task1_path/multi_domains_xsum_test.json,$Task1_path/multi_domains_writing_prompt_test.json,$Task1_path/multi_domains_yelp_review_test.json,
python $Detectors_path/DetectGPT_evaluation.py --test_data_path $Task1_path/multi_domains_arxiv_test.json,$Task1_path/multi_domains_xsum_test.json,$Task1_path/multi_domains_writing_prompt_test.json,$Task1_path/multi_domains_yelp_review_test.json,
python $Detectors_path/Fast_DetectGPT_evaluation.py --test_data_path $Task1_path/multi_domains_arxiv_test.json,$Task1_path/multi_domains_xsum_test.json,$Task1_path/multi_domains_writing_prompt_test.json,$Task1_path/multi_domains_yelp_review_test.json,

python $Detectors_path/train_roberta.py --train_data_path $Task1_path/multi_domains_arxiv_test.json, --test_data_path $Task1_path/multi_domains_arxiv_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task1_path/multi_domains_xsum_test.json, --test_data_path $Task1_path/multi_domains_xsum_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task1_path/multi_domains_writing_prompt_test.json --test_data_path $Task1_path/multi_domains_writing_prompt_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task1_path/multi_domains_yelp_review_test.json --test_data_path $Task1_path/multi_domains_yelp_review_test.json,

# Task 2
python $Detectors_path/zero_shot_transfer_evaluation.py --method likelihood --test_data_path $Task2_path/multi_domains_arxiv_test.json, --transfer_data_path $Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method rank --test_data_path $Task2_path/multi_domains_arxiv_test.json, --transfer_data_path $Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method logRank --test_data_path $Task2_path/multi_domains_arxiv_test.json, --transfer_data_path $Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method entropy --test_data_path $Task2_path/multi_domains_arxiv_test.json, --transfer_data_path $Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method LRR --test_data_path $Task2_path/multi_domains_arxiv_test.json, --transfer_data_path $Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method NPR --test_data_path $Task2_path/multi_domains_arxiv_test.json, --transfer_data_path $Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method DetectGPT --test_data_path $Task2_path/multi_domains_arxiv_test.json, --transfer_data_path $Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method Fast_DetectGPT --test_data_path $Task2_path/multi_domains_arxiv_test.json, --transfer_data_path $Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,

python $Detectors_path/zero_shot_transfer_evaluation.py --method likelihood --test_data_path $Task2_path/multi_domains_xsum_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method rank --test_data_path $Task2_path/multi_domains_xsum_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method logRank --test_data_path $Task2_path/multi_domains_xsum_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method entropy --test_data_path $Task2_path/multi_domains_xsum_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method LRR --test_data_path $Task2_path/multi_domains_xsum_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method NPR --test_data_path $Task2_path/multi_domains_xsum_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method DetectGPT --test_data_path $Task2_path/multi_domains_xsum_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method Fast_DetectGPT --test_data_path $Task2_path/multi_domains_xsum_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,

python $Detectors_path/zero_shot_transfer_evaluation.py --method likelihood --test_data_path $Task2_path/multi_domains_writing_prompt_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method rank --test_data_path $Task2_path/multi_domains_writing_prompt_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method logRank --test_data_path $Task2_path/multi_domains_writing_prompt_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method entropy --test_data_path $Task2_path/multi_domains_writing_prompt_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method LRR --test_data_path $Task2_path/multi_domains_writing_prompt_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method NPR --test_data_path $Task2_path/multi_domains_writing_prompt_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method DetectGPT --test_data_path $Task2_path/multi_domains_writing_prompt_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method Fast_DetectGPT --test_data_path $Task2_path/multi_domains_writing_prompt_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_yelp_review_test.json,


python $Detectors_path/zero_shot_transfer_evaluation.py --method likelihood --test_data_path $Task2_path/multi_domains_yelp_review_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method rank --test_data_path $Task2_path/multi_domains_yelp_review_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method logRank --test_data_path $Task2_path/multi_domains_yelp_review_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method entropy --test_data_path $Task2_path/multi_domains_yelp_review_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method LRR --test_data_path $Task2_path/multi_domains_yelp_review_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method NPR --test_data_path $Task2_path/multi_domains_yelp_review_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method DetectGPT --test_data_path $Task2_path/multi_domains_yelp_review_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method Fast_DetectGPT --test_data_path $Task2_path/multi_domains_yelp_review_test.json, --transfer_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,

python $Detectors_path/train_roberta.py --train_data_path $Task2_path/multi_domains_arxiv_train.json, --test_data_path $Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task2_path/multi_domains_xsum_train.json, --test_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_writing_prompt_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task2_path/multi_domains_writing_prompt_train.json --test_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_yelp_review_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task2_path/multi_domains_yelp_review_train.json --test_data_path $Task2_path/multi_domains_arxiv_test.json,$Task2_path/multi_domains_xsum_test.json,$Task2_path/multi_domains_writing_prompt_test.json,