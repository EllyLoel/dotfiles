"use strict";var i=Object.defineProperty;var r=Object.getOwnPropertyDescriptor;var c=Object.getOwnPropertyNames;var p=Object.prototype.hasOwnProperty;var s=(n,o)=>{for(var t in o)i(n,t,{get:o[t],enumerable:!0})},u=(n,o,t,l)=>{if(o&&typeof o=="object"||typeof o=="function")for(let a of c(o))!p.call(n,a)&&a!==t&&i(n,a,{get:()=>o[a],enumerable:!(l=r(o,a))||l.enumerable});return n};var d=n=>u(i({},"__esModule",{value:!0}),n);var m={};s(m,{default:()=>f});module.exports=d(m);var e=require("@raycast/api"),f=async()=>{(0,e.open)("cleanshot://pin"),await(0,e.closeMainWindow)()};0&&(module.exports={});