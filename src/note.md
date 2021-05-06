`content.js`


`7.0.2`

1.查找

```javascript
this._optsView=t,this._authView=i,this._state=n
```

2.找到 `oe` 函数,修改此函数直接返回 true
```javascript
if(oe(this._state))return;
```


`6.0.4`

1.查找

```javascript
this._optsView=t,this._authView=i,this._state=n
```

2.找到 `J` 函数,修改此函数直接返回 true
```javascript
if(J(this._state))return;
```
