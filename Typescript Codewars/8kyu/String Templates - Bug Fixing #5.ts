/*
Description

Oh no! Timmy hasn't followed instructions very carefully and forgot how to use the new String Template feature, Help Timmy 
with his string template so it works as he expects!

export function buildString(... template: string[]): string {
  return `I like {template.join(',')}!`
}
*/

export function buildString(...template: string[]): string {
  return `I like ${template.join(", ")}!`;
}
