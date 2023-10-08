struct Foo
  x::Any
  y::Any
end

function test()
  foo = Foo(nothing, nothing)
  for i in 1:100
    foo = Foo(foo, foo)
  end
  println(1)
  println(Base.summarysize(foo))  # Use Base.summarysize to estimate the size
  println(2)
end

test()
