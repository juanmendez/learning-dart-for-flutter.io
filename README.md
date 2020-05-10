# learning_dart

I find necessary to learn the language before Flutter. I guess I could just hack and pretend to write Dart with a Kotlin or Java mindset. Instead of cutting corners, I am taking a good amount of time to feel very confortable with Dart just like I feel now after [learning Kotlin](https://github.com/juanmendez/learning-kotlin). I break each learning subject into a git branch. 

Extending null-safety and extension-methods:
- include in `analysis_options.yaml`
```yaml
  enable-experiment:
    - non-nullable
    - extension-methods
```
- vm-options used:
```yaml
--enable-experiment=non-nullable,extension-methods
```
- if it doesn't work restart your Ide.