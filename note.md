`content.js`

```javascript
JSON.parse(e.substring(0,i+1))
-> ((e)=>{let a=JSON.parse(e.substring(0,i+1));a.subscriptionStatus="ACTIVE";return a})(e)
```
