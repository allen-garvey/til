function quadraticFormula(a, b, c) {
  const discriminant = Math.sqrt(b ** 2 - 4 * a * c);
  const denom = 2 * a;

  const pos = (b * -1 + discriminant) / denom;
  const neg = (b * -1 - discriminant) / denom;
  return [pos, neg];
}
