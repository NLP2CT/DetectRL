Detectors_path=

Task1_path=
Task2_path=

cd Benchmark\Benchmark

# Task 1
python $Detectors_path/likelihood_evaluation.py --test_data_path $Task1_path/multi_llms_ChatGPT_test.json,$Task1_path/multi_llms_Claude-instant_test.json,$Task1_path/multi_llms_Google-PaLM_test.json,$Task1_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/rank_evaluation.py --test_data_path $Task1_path/multi_llms_ChatGPT_test.json,$Task1_path/multi_llms_Claude-instant_test.json,$Task1_path/multi_llms_Google-PaLM_test.json,$Task1_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/logRank_evaluation.py --test_data_path $Task1_path/multi_llms_ChatGPT_test.json,$Task1_path/multi_llms_Claude-instant_test.json,$Task1_path/multi_llms_Google-PaLM_test.json,$Task1_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/entropy_evaluation.py --test_data_path $Task1_path/multi_llms_ChatGPT_test.json,$Task1_path/multi_llms_Claude-instant_test.json,$Task1_path/multi_llms_Google-PaLM_test.json,$Task1_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/LRR_evaluation.py --test_data_path $Task1_path/multi_llms_ChatGPT_test.json,$Task1_path/multi_llms_Claude-instant_test.json,$Task1_path/multi_llms_Google-PaLM_test.json,$Task1_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/NPR_evaluation.py --test_data_path $Task1_path/multi_llms_ChatGPT_test.json,$Task1_path/multi_llms_Claude-instant_test.json,$Task1_path/multi_llms_Google-PaLM_test.json,$Task1_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/DetectGPT_evaluation.py --test_data_path $Task1_path/multi_llms_ChatGPT_test.json,$Task1_path/multi_llms_Claude-instant_test.json,$Task1_path/multi_llms_Google-PaLM_test.json,$Task1_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/Fast_DetectGPT_evaluation.py --test_data_path $Task1_path/multi_llms_ChatGPT_test.json,$Task1_path/multi_llms_Claude-instant_test.json,$Task1_path/multi_llms_Google-PaLM_test.json,$Task1_path/ross_llms_Llama-2-70b_test.json,

python $Detectors_path/train_roberta.py --train_data_path $Task1_path/multi_llms_ChatGPT_test.json, --test_data_path $Task1_path/multi_llms_ChatGPT_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task1_path/multi_llms_Claude-instant_test.json, --test_data_path $Task1_path/multi_llms_Claude-instant_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task1_path/multi_llms_Google-PaLM_test.json --test_data_path $Task1_path/multi_llms_Google-PaLM_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task1_path/multi_llms_Llama-2-70b_test.json --test_data_path $Task1_path/multi_llms_Llama-2-70b_test.json,

# Task 2
python $Detectors_path/zero_shot_transfer_evaluation.py --method likelihood --test_data_path $Task2_path/multi_llms_ChatGPT_test.json, --transfer_data_path multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method rank --test_data_path $Task2_path/multi_llms_ChatGPT_test.json, --transfer_data_path multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method logRank --test_data_path $Task2_path/multi_llms_ChatGPT_test.json, --transfer_data_path multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method entropy --test_data_path $Task2_path/multi_llms_ChatGPT_test.json, --transfer_data_path multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method LRR --test_data_path $Task2_path/multi_llms_ChatGPT_test.json, --transfer_data_path multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method NPR --test_data_path $Task2_path/multi_llms_ChatGPT_test.json, --transfer_data_path multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method DetectGPT --test_data_path $Task2_path/multi_llms_ChatGPT_test.json, --transfer_data_path multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method Fast_DetectGPT --test_data_path $Task2_path/multi_llms_ChatGPT_test.json, --transfer_data_path multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,

python $Detectors_path/zero_shot_transfer_evaluation.py --method likelihood --test_data_path $Task2_path/multi_llms_Claude-instant_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method rank --test_data_path $Task2_path/multi_llms_Claude-instant_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method logRank --test_data_path $Task2_path/multi_llms_Claude-instant_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method entropy --test_data_path $Task2_path/multi_llms_Claude-instant_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method LRR --test_data_path $Task2_path/multi_llms_Claude-instant_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method NPR --test_data_path $Task2_path/multi_llms_Claude-instant_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method DetectGPT --test_data_path $Task2_path/multi_llms_Claude-instant_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method Fast_DetectGPT --test_data_path $Task2_path/multi_llms_Claude-instant_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,

python $Detectors_path/zero_shot_transfer_evaluation.py --method likelihood --test_data_path $Task2_path/multi_llms_Google-PaLM_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method rank --test_data_path $Task2_path/multi_llms_Google-PaLM_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method logRank --test_data_path $Task2_path/multi_llms_Google-PaLM_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method entropy --test_data_path $Task2_path/multi_llms_Google-PaLM_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method LRR --test_data_path $Task2_path/multi_llms_Google-PaLM_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method NPR --test_data_path $Task2_path/multi_llms_Google-PaLM_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method DetectGPT --test_data_path $Task2_path/multi_llms_Google-PaLM_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method Fast_DetectGPT --test_data_path $Task2_path/multi_llms_Google-PaLM_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,


python $Detectors_path/zero_shot_transfer_evaluation.py --method likelihood --test_data_path $Task2_path/multi_llms_Llama-2-70b_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method rank --test_data_path $Task2_path/multi_llms_Llama-2-70b_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method logRank --test_data_path $Task2_path/multi_llms_Llama-2-70b_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method entropy --test_data_path $Task2_path/multi_llms_Llama-2-70b_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method LRR --test_data_path $Task2_path/multi_llms_Llama-2-70b_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method NPR --test_data_path $Task2_path/multi_llms_Llama-2-70b_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method DetectGPT --test_data_path $Task2_path/multi_llms_Llama-2-70b_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,
python $Detectors_path/zero_shot_transfer_evaluation.py --method Fast_DetectGPT --test_data_path $Task2_path/multi_llms_Llama-2-70b_test.json, --transfer_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,

python $Detectors_path/train_roberta.py --train_data_path $Task2_path/multi_llms_ChatGPT_trainjson, --test_data_path $Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task2_path/multi_llms_Claude-instant_trainjson.json, --test_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task2_path/multi_llms_Google-PaLM_trainjson.json --test_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Llama-2-70b_test.json,
python $Detectors_path/train_roberta.py --train_data_path $Task2_path/multi_llms_Llama-2-70b_trainjson.json --test_data_path $Task2_path/multi_llms_ChatGPT_test.json,$Task2_path/multi_llms_Claude-instant_test.json,$Task2_path/multi_llms_Google-PaLM_test.json,