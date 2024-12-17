
```
az login
```

```
az account list
```

```
az account set --subscription="<subscription ID>"
```

* サービスプリンシパルを作成する場合
```
az ad sp create-for-rbac --role="Contributor" --scopes="<subscription ID>"
Creating 'Contributor' role assignment under scope '/subscriptions/20b6f48f-b1ba-45bf-bbb7-a3b58d7dc8c5'
The output includes credentials that you must protect. Be sure that you do not include these credentials in your code or check the credentials into your source control. For more information, see https://aka.ms/azadsp-cli
{
  "appId": "aaa",
  "displayName": "bbb",
  "password": "ccc",
  "tenant": "ddd"
}

```

* appId : client_id
* password : client_secret
* tenant : tenant_id
* subscription ID : subscription_id

