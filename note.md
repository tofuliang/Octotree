`content.js`

`7.0.7`,`7.1.0`,`7.2.0`

同`7.0.2`


`7.0.2`

0.直接操作

sed -i 's/function\s\([a-z]\{1,\}([a-z]\{1,\})\){return [a-z]\{1,\}===[a-z]\{1,\}}/function \1{return !0}/g' 7.0.2_0/content.js

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
