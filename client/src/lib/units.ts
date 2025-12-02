const MAS_PRECISION = 9n;
const MAS_FACTOR = 10n ** MAS_PRECISION;

function sanitizeInput(value: string): string {
  return value.replace(/[^0-9.]/g, '');
}

export function masToNano(value: string | number): bigint {
  const asString =
    typeof value === 'number' ? value.toString() : sanitizeInput(value);
  if (!asString.length) {
    return 0n;
  }
  const [whole, decimal = ''] = asString.split('.');
  const normalized =
    whole.replace(/^0+/, '') || '0';
  const fractional = (decimal + '000000000').slice(0, Number(MAS_PRECISION));
  return (
    BigInt(normalized) * MAS_FACTOR +
    BigInt(fractional || '0')
  );
}

export function nanoToMasString(value: bigint, precision = 4): string {
  const whole = value / MAS_FACTOR;
  const fractional = value % MAS_FACTOR;
  if (precision === 0) {
    return whole.toString();
  }
  const fractionalStr = fractional
    .toString()
    .padStart(Number(MAS_PRECISION), '0')
    .slice(0, precision)
    .replace(/0+$/, '');
  return fractionalStr.length
    ? `${whole.toString()}.${fractionalStr}`
    : whole.toString();
}

export function nanoToMasNumber(value: bigint, precision = 6): number {
  const str = nanoToMasString(value, precision);
  return Number(str);
}


