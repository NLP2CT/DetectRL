import numpy as np
from sklearn.metrics import roc_curve, auc, precision_recall_curve, confusion_matrix, precision_score, recall_score, \
    accuracy_score, f1_score


def get_roc_metrics(real_preds, sample_preds):
    real_labels = [0] * len(real_preds) + [1] * len(sample_preds)
    predicted_probs = real_preds + sample_preds

    fpr, tpr, thresholds = roc_curve(real_labels, predicted_probs)
    roc_auc = auc(fpr, tpr)

    # Youden's J statistic
    optimal_idx = np.argmax(tpr - fpr)
    optimal_threshold = thresholds[optimal_idx]

    predictions = [1 if prob >= optimal_threshold else 0 for prob in predicted_probs]
    conf_matrix = confusion_matrix(real_labels, predictions)
    precision = precision_score(real_labels, predictions)
    recall = recall_score(real_labels, predictions)
    f1 = f1_score(real_labels, predictions)
    accuracy = accuracy_score(real_labels, predictions)
    tpr_at_fpr_0_01 = np.interp(0.01 / 100, fpr, tpr)

    return float(roc_auc), float(optimal_threshold), conf_matrix.tolist(), float(
        precision), float(recall), float(f1), float(accuracy), float(tpr_at_fpr_0_01)


def get_metrics(real_preds, sample_preds, optimal_threshold):
    real_labels = [0] * len(real_preds) + [1] * len(sample_preds)
    predicted_probs = real_preds + sample_preds

    predictions = [1 if prob >= optimal_threshold else 0 for prob in predicted_probs]
    conf_matrix = confusion_matrix(real_labels, predictions)
    precision = precision_score(real_labels, predictions)
    recall = recall_score(real_labels, predictions)
    f1 = f1_score(real_labels, predictions)
    accuracy = accuracy_score(real_labels, predictions)

    return float(optimal_threshold), conf_matrix.tolist(), float(
        precision), float(recall), float(f1), float(accuracy)


def get_precision_recall_metrics(real_preds, sample_preds):
    precision, recall, _ = precision_recall_curve([0] * len(real_preds) + [1] * len(sample_preds),
                                                  real_preds + sample_preds)
    pr_auc = auc(recall, precision)
    return precision.tolist(), recall.tolist(), float(pr_auc)


def get_accurancy(real_preds, sample_preds):
    return sum(np.array(real_preds) < np.array(sample_preds)) / len(sample_preds)
