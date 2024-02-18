export function abbrevName(name: string): string {
  return name.split(" ").map((part) => part[0].toUpperCase()).join(".");
}