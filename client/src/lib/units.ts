const MAS_PRECISION = 9;
const MAS_FACTOR = BigInt('1000000000');

function sanitizeInput(value: string): string {
  return value.replace(/[^0-9.]/g, '');
}

export function masToNano(value: string | number): bigint {
  const asString =
    typeof value === 'number' ? value.toString() : sanitizeInput(value);
  if (!asString.length) {
    return BigInt(0);
  }
  const [whole, decimal = ''] = asString.split('.');
  const normalized = whole.replace(/^0+/, '') || '0';
  const fractional = (decimal + '000000000').slice(0, MAS_PRECISION);
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
    .padStart(MAS_PRECISION, '0')
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


