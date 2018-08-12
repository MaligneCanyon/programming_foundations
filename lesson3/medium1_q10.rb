def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)
# foo always returns 'yes', which is used as the arg for the call to 'bar'
# param is == 'yes' in 'bar', so 'no' is returned
