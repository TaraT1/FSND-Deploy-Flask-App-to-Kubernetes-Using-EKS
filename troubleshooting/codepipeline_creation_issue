### Dependencies

* [Deploy guide partially completed](deploy.md)



### The problem

There is an error on your Codepipeline creation. More specifically, the role creation throws an unexpected error.


### The root cause

After the project's boilerplate code update, the request header located [here](https://github.com/jungleBadger/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS/blob/master/ci-cd-codepipeline.cfn.yml#L158) could not be parsed as a number any longer.


### The solution

Convert the content-length attribute value to string as demonstrated below

```
headers = {'content-type': '', "content-length": str(len(response_body)) }
```

### Notes

Kudos goes to [Max T](https://github.com/mdarkcity/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS) for finding the root cause and the actual solution, and most importantly, sharing the solution on [this thread](https://knowledge.udacity.com/questions/298434)

