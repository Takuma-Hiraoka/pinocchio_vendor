# pinocchio_vendor

`CMakeLists.txt`:

```cmake
find_package(pinocchio REQUIRED)

target_link_libraries(my_target pinocchio::pinocchio)
```

`package.xml`:

```xml
<depend>pinocchio_vendor</depend>
```