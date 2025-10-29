// result.dart
// Representación placeholder de una clase Result genérica.

sealed class Result<Ok, Err> {
  const Result();

  factory Result.ok(Ok value) = _ResultOk<Ok, Err>;
  factory Result.err(Err error) = _ResultErr<Ok, Err>;
}

class _ResultOk<Ok, Err> extends Result<Ok, Err> {
  const _ResultOk(this.value);

  final Ok value;
}

class _ResultErr<Ok, Err> extends Result<Ok, Err> {
  const _ResultErr(this.error);

  final Err error;
}
