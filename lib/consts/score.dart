class ScoreDescription {
  // positive predictive value
  final double ppv;

  ScoreDescription({
    required this.ppv,
  });

  String getString(String? patient) {
    return "Given the EDEMA score above, ${patient ?? "this patient"} has a risk of Potentially Lethal Malignant Edema with a positive predictive value of " +
        ppv.toString() +
        "%.";
  }
}

Map<int, ScoreDescription> scoreMap = {
  0: ScoreDescription(ppv: 33),
  1: ScoreDescription(ppv: 34),
  2: ScoreDescription(ppv: 44),
  3: ScoreDescription(ppv: 54),
  4: ScoreDescription(ppv: 59),
  5: ScoreDescription(ppv: 81),
  6: ScoreDescription(ppv: 86),
  7: ScoreDescription(ppv: 94),
  8: ScoreDescription(ppv: 92),
  9: ScoreDescription(ppv: 91),
  10: ScoreDescription(ppv: 89),
  11: ScoreDescription(ppv: 85),
  12: ScoreDescription(ppv: 65),
  13: ScoreDescription(ppv: 0),
  14: ScoreDescription(ppv: 0),
};
