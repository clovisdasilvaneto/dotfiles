#!/usr/bin/env node

function getName() {
  var letters = 'abcdefghijklmnopqrstuvwxyz'.split('');
  var numbers = '1234567890'.split('');
  var lett = letters.map( () => letters[Math.floor(Math.random() * letters.length)] ).join('');
  var numb = numbers.map( () => numbers[Math.floor(Math.random() * numbers.length)] ).join('');
  return `${lett}_${numb}`;
}

function setName() {
  var name = getName();
  var email = `daniel.dacosta+${name}@marleyspoon.com`;
	return email;
}

console.log(setName());
