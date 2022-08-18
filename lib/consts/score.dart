class ScoreDescription {
  // probability
  final int prob;
  // positive predictive value
  final double ppv;
  // negative predictive value
  final double npv;
  // sensitivity
  final double sens;
  // specificity
  final double spec;

  ScoreDescription({
    required this.prob,
    required this.ppv,
    required this.npv,
    required this.sens,
    required this.spec,
  });

  String getString() {
    return "Given the EDEMA score above, this patient has a risk of Potentially Lethal Malignant Edema with a probability of " +
        prob.toString() +
        "% (positive predictive value of " +
        ppv.toString() +
        ", negative predictive value of " +
        npv.toString() +
        ", sensitivity of " +
        sens.toString() +
        ", and specificity of " +
        spec.toString() +
        ")";
  }
}

Map<int, ScoreDescription> scoreMap = {
  0: ScoreDescription(prob: 16, ppv: 0.33, npv: 0, sens: 1, spec: 0),
  1: ScoreDescription(prob: 25, ppv: 0.34, npv: 0.91, sens: 0.99, spec: 0.07),
  2: ScoreDescription(prob: 36, ppv: 0.44, npv: 0.87, sens: 0.85, spec: 0.48),
  3: ScoreDescription(prob: 49, ppv: 0.54, npv: 0.84, sens: 0.73, spec: 0.70),
  4: ScoreDescription(prob: 61, ppv: 0.59, npv: 0.76, sens: 0.45, spec: 0.85),
  5: ScoreDescription(prob: 73, ppv: 0.81, npv: 0.75, sens: 0.34, spec: 0.96),
  6: ScoreDescription(prob: 82, ppv: 0.86, npv: 0.73, sens: 0.25, spec: 0.98),
  7: ScoreDescription(prob: 88, ppv: 0.94, npv: 0.72, sens: 0.21, spec: 0.99),
  8: ScoreDescription(prob: 93, ppv: 0.92, npv: 0.71, sens: 0.16, spec: 0.99),
  9: ScoreDescription(prob: 96, ppv: 0.91, npv: 0.70, sens: 0.14, spec: 0.99),
  10: ScoreDescription(prob: 97, ppv: 0.89, npv: 0.69, sens: 0.11, spec: 0.99),
  11: ScoreDescription(prob: 99, ppv: 0.85, npv: 0.69, sens: 0.08, spec: 0.99),
  12: ScoreDescription(prob: 99, ppv: 0.65, npv: 0.68, sens: 0.03, spec: 0.99),
  13: ScoreDescription(prob: 99, ppv: 0.0, npv: 0, sens: 0.0, spec: 1),
  14: ScoreDescription(prob: 99, ppv: 0.0, npv: 0, sens: 0.0, spec: 0),
};
