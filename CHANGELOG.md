# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2024-07-01

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.20`](#velvet_framework---v001-dev20)
 - [`velvet_support` - `v0.0.1-dev.7`](#velvet_support---v001-dev7)
 - [`velvet_generator` - `v0.0.1-dev.12`](#velvet_generator---v001-dev12)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `velvet_generator` - `v0.0.1-dev.12`

---

#### `velvet_framework` - `v0.0.1-dev.20`

 - **REFACTOR**: update exports. ([7582556f](https://github.com/dedecube/velvet/commit/7582556fff7053063f62372c810055ff24369823))
 - **REFACTOR**: wrap theme creation inside hooks. ([d9cec3b1](https://github.com/dedecube/velvet/commit/d9cec3b1b49486251950b5dd459dac93dfcace96))
 - **REFACTOR**: rename exceptions import. ([3dff9e65](https://github.com/dedecube/velvet/commit/3dff9e65661866a7b73ecc7f8cf43aa8b215be52))
 - **REFACTOR**: :pencil2: stackTrack to stackTrace. ([3ebe69a2](https://github.com/dedecube/velvet/commit/3ebe69a2d1844feda47e842d197b994b51e68e3b))
 - **FIX**: prevent type error in translationLocaleFromStoreBootstrap. ([9d4f6469](https://github.com/dedecube/velvet/commit/9d4f64694e1103ab5c846a0f51902fe1f54855bd))
 - **FIX**: remove usage of deprecated `WidgetsBinding.instance.window.locale`. ([770a1e14](https://github.com/dedecube/velvet/commit/770a1e14fb7301d903e18a39c59fbd019c6a707f))
 - **FEAT**: add form_config_provider. ([fd24eccc](https://github.com/dedecube/velvet/commit/fd24eccc453b6004a3d64bff3b37c0e731f36112))
 - **FEAT**: :sparkles: add ExceptionToMessageResolver and ExceptionToMessageResolverFactory. ([538d6c66](https://github.com/dedecube/velvet/commit/538d6c66418aaf5b52bfb971128950dd079091bd))
 - **DOCS**: :memo: add some docs using copilot. ([843b1974](https://github.com/dedecube/velvet/commit/843b1974104b4edb4cff76e0ec110db77ca4c80d))

#### `velvet_support` - `v0.0.1-dev.7`

 - **FEAT**: :sparkles: add DotNotationMap extension for Map. ([160d98f5](https://github.com/dedecube/velvet/commit/160d98f5bdccf5bc0d10346a763b7ea12b35ffff))


## 2024-06-26

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.19`](#velvet_framework---v001-dev19)

---

#### `velvet_framework` - `v0.0.1-dev.19`

 - **FIX**: add translate and kernel_context to exports. ([e16fd5a3](https://github.com/dedecube/velvet/commit/e16fd5a36da42b65b81f1384377aaa2bb3c0badf))


## 2024-06-26

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.18`](#velvet_framework---v001-dev18)

---

#### `velvet_framework` - `v0.0.1-dev.18`

 - **REVERT**: remove TranslationItem and fix context usage for Localizations resolver. ([0f7618d6](https://github.com/dedecube/velvet/commit/0f7618d610f40f6a3e8cbd3626886b664a440890))


## 2024-06-26

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.17`](#velvet_framework---v001-dev17)

---

#### `velvet_framework` - `v0.0.1-dev.17`

 - **REVERT**: remove Config core interface. ([134ecd8f](https://github.com/dedecube/velvet/commit/134ecd8f415863b546f4eceafe9860b6d293542a))
 - **REFACTOR**: method enum value. ([001cfd7d](https://github.com/dedecube/velvet/commit/001cfd7d901a92e7007917f214567ab25dfbc3c5))
 - **FIX**: export also max_length_rule. ([d3838400](https://github.com/dedecube/velvet/commit/d383840051054d5da5e281986b33de66b9de679a))
 - **FEAT**: update entrypoint exports. ([caa39012](https://github.com/dedecube/velvet/commit/caa39012c579c2b2f36bb8b28bb8100eb6deb24e))
 - **FEAT**: ExceptionMatcher now must return a TranslationItem instead of String. ([6c834f59](https://github.com/dedecube/velvet/commit/6c834f59429d27cfac6b6d8d60f87bcdd0a8544a))
 - **FEAT**: move form related hooks to form "module" and add validation logic with options. ([bc8d41f7](https://github.com/dedecube/velvet/commit/bc8d41f7eb6e305a86388d1e8d29bbc3d97d5d5d))
 - **FEAT**: add Validator and base Rule class with some useful rules. ([a567ef6f](https://github.com/dedecube/velvet/commit/a567ef6f81c439f9491b3acb2ce52e8980b861a5))
 - **FEAT**: add TranslationItem. ([52eea882](https://github.com/dedecube/velvet/commit/52eea882faad7d96232147ef6cb6ad6385049546))
 - **FEAT**: add data_loader. ([3ebbb4a6](https://github.com/dedecube/velvet/commit/3ebbb4a6cab5421123e14f9684ac103c77b20537))
 - **DOCS**: describe usePostBuildCallback. ([da0b3654](https://github.com/dedecube/velvet/commit/da0b36546928d4be48fa7419bd9116332c7c816a))


## 2024-06-21

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.16`](#velvet_framework---v001-dev16)

---

#### `velvet_framework` - `v0.0.1-dev.16`

 - **FIX**: force to return bool in flutter_i18n translator adapter. ([414e1be5](https://github.com/dedecube/velvet/commit/414e1be5fcff85474be33901d5fc26f747602375))
 - **FIX**: check locale using only language_code in _loadFromOS. ([c49b7790](https://github.com/dedecube/velvet/commit/c49b779014442dbce1788e9ecd0d0f7e93ecf1a1))


## 2024-06-20

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_generator` - `v0.0.1-dev.11`](#velvet_generator---v001-dev11)

---

#### `velvet_generator` - `v0.0.1-dev.11`

 - **FIX**: remove json_serializable. ([473c3f48](https://github.com/dedecube/velvet/commit/473c3f48b847d9747e2892744b18cb71424967f2))


## 2024-06-20

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_custom_lints` - `v0.0.1-dev.6`](#velvet_custom_lints---v001-dev6)
 - [`velvet_lints` - `v0.0.1-dev.5`](#velvet_lints---v001-dev5)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `velvet_lints` - `v0.0.1-dev.5`

---

#### `velvet_custom_lints` - `v0.0.1-dev.6`

 - **FIX**: prevent errors from check_translation_key_exists when PropertyAccessImpl found instead of StringLiteral. ([5749a283](https://github.com/dedecube/velvet/commit/5749a283a2b879aae95f4d3cb6d4dff6e4b17188))


## 2024-06-20

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_annotation` - `v0.0.1-dev.7`](#velvet_annotation---v001-dev7)
 - [`velvet_custom_lints` - `v0.0.1-dev.5`](#velvet_custom_lints---v001-dev5)
 - [`velvet_framework` - `v0.0.1-dev.15`](#velvet_framework---v001-dev15)
 - [`velvet_generator` - `v0.0.1-dev.10`](#velvet_generator---v001-dev10)
 - [`velvet_support` - `v0.0.1-dev.6`](#velvet_support---v001-dev6)
 - [`velvet_lints` - `v0.0.1-dev.4`](#velvet_lints---v001-dev4)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `velvet_lints` - `v0.0.1-dev.4`

---

#### `velvet_annotation` - `v0.0.1-dev.7`

 - **FIX**: remove meta from dependencies_overrides and downgrade analyzer to ^6.4.1. ([15750a93](https://github.com/dedecube/velvet/commit/15750a9384db9f0c49bf4b5c3bc8d8d66740a8f9))

#### `velvet_custom_lints` - `v0.0.1-dev.5`

 - **FIX**: remove meta from dependencies_overrides and downgrade analyzer to ^6.4.1. ([15750a93](https://github.com/dedecube/velvet/commit/15750a9384db9f0c49bf4b5c3bc8d8d66740a8f9))

#### `velvet_framework` - `v0.0.1-dev.15`

 - **FIX**: remove meta from dependencies_overrides and downgrade analyzer to ^6.4.1. ([15750a93](https://github.com/dedecube/velvet/commit/15750a9384db9f0c49bf4b5c3bc8d8d66740a8f9))

#### `velvet_generator` - `v0.0.1-dev.10`

 - **FIX**: remove meta from dependencies_overrides and downgrade analyzer to ^6.4.1. ([15750a93](https://github.com/dedecube/velvet/commit/15750a9384db9f0c49bf4b5c3bc8d8d66740a8f9))

#### `velvet_support` - `v0.0.1-dev.6`

 - **FIX**: remove meta from dependencies_overrides and downgrade analyzer to ^6.4.1. ([15750a93](https://github.com/dedecube/velvet/commit/15750a9384db9f0c49bf4b5c3bc8d8d66740a8f9))


## 2024-06-20

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_annotation` - `v0.0.1-dev.6`](#velvet_annotation---v001-dev6)
 - [`velvet_custom_lints` - `v0.0.1-dev.4`](#velvet_custom_lints---v001-dev4)
 - [`velvet_framework` - `v0.0.1-dev.14`](#velvet_framework---v001-dev14)
 - [`velvet_generator` - `v0.0.1-dev.9`](#velvet_generator---v001-dev9)
 - [`velvet_support` - `v0.0.1-dev.5`](#velvet_support---v001-dev5)
 - [`velvet_lints` - `v0.0.1-dev.3`](#velvet_lints---v001-dev3)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `velvet_lints` - `v0.0.1-dev.3`

---

#### `velvet_annotation` - `v0.0.1-dev.6`

 - **FIX**: add dependency_overrides for meta package. ([86bd4060](https://github.com/dedecube/velvet/commit/86bd406012f83bcd49d735bc612fe1c42474c58a))

#### `velvet_custom_lints` - `v0.0.1-dev.4`

 - **FIX**: add dependency_overrides for meta package. ([86bd4060](https://github.com/dedecube/velvet/commit/86bd406012f83bcd49d735bc612fe1c42474c58a))

#### `velvet_framework` - `v0.0.1-dev.14`

 - **FIX**: add dependency_overrides for meta package. ([86bd4060](https://github.com/dedecube/velvet/commit/86bd406012f83bcd49d735bc612fe1c42474c58a))

#### `velvet_generator` - `v0.0.1-dev.9`

 - **FIX**: add dependency_overrides for meta package. ([86bd4060](https://github.com/dedecube/velvet/commit/86bd406012f83bcd49d735bc612fe1c42474c58a))

#### `velvet_support` - `v0.0.1-dev.5`

 - **FIX**: add dependency_overrides for meta package. ([86bd4060](https://github.com/dedecube/velvet/commit/86bd406012f83bcd49d735bc612fe1c42474c58a))


## 2024-06-20

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_generator` - `v0.0.1-dev.8`](#velvet_generator---v001-dev8)

---

#### `velvet_generator` - `v0.0.1-dev.8`


## 2024-06-20

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_annotation` - `v0.0.1-dev.5`](#velvet_annotation---v001-dev5)
 - [`velvet_framework` - `v0.0.1-dev.13`](#velvet_framework---v001-dev13)
 - [`velvet_generator` - `v0.0.1-dev.7`](#velvet_generator---v001-dev7)

---

#### `velvet_annotation` - `v0.0.1-dev.5`

 - **FEAT**: remove config autoloader and introduce a more generic and reusable autoloader generator. ([9b74d6fc](https://github.com/dedecube/velvet/commit/9b74d6fc816179594869520a5de75b207cdf44f3))

#### `velvet_framework` - `v0.0.1-dev.13`

 - **REFACTOR**: move BaseRoute transition logic to specific mixin. ([d7258811](https://github.com/dedecube/velvet/commit/d7258811ae9b0b488ed054ffded1e7fa28322275))
 - **FEAT**: add core with base Config class. ([db98887a](https://github.com/dedecube/velvet/commit/db98887a448c5e4a4d0b50d8214d7cbb4e3a0241))

#### `velvet_generator` - `v0.0.1-dev.7`

 - **FEAT**: wrap build.yaml from vendor. ([433f3300](https://github.com/dedecube/velvet/commit/433f33006579d5e05212f48bda9df33dc3282864))
 - **FEAT**: remove config autoloader and introduce a more generic and reusable autoloader generator. ([9b74d6fc](https://github.com/dedecube/velvet/commit/9b74d6fc816179594869520a5de75b207cdf44f3))
 - **DOCS**: specify that generator also wrap vendor build.yaml files. ([50d4f2e9](https://github.com/dedecube/velvet/commit/50d4f2e95594673b6aa8648207e94d4fbfcd4db0))


## 2024-06-17

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_custom_lints` - `v0.0.1-dev.3`](#velvet_custom_lints---v001-dev3)
 - [`velvet_framework` - `v0.0.1-dev.12`](#velvet_framework---v001-dev12)
 - [`velvet_generator` - `v0.0.1-dev.6`](#velvet_generator---v001-dev6)

---

#### `velvet_custom_lints` - `v0.0.1-dev.3`

 - **REFACTOR**: create a JsonLoader class and remove unuseful comments. ([11c81bd0](https://github.com/dedecube/velvet/commit/11c81bd0be19b1ef51d4e1cab9b56b557fa2b95b))
 - **FEAT**: add translation rules and add velvet_ prefix to each rule. ([3570be18](https://github.com/dedecube/velvet/commit/3570be186b04665abde15ca5c3294011ce29350f))

#### `velvet_framework` - `v0.0.1-dev.12`

 - **REFACTOR**: rewrite exports using generate-index. ([8f829d83](https://github.com/dedecube/velvet/commit/8f829d83cca40e18b52e34b75ed5cf3d747b864c))
 - **REFACTOR**: remove dead import and regenerate router_provider. ([e6434ec4](https://github.com/dedecube/velvet/commit/e6434ec4b2e09aa2cffbd09094bbbbe0d457419e))
 - **REFACTOR**: now flutter_i18n load files from translation folder. ([965bc9a8](https://github.com/dedecube/velvet/commit/965bc9a8a30dd49ef047cb4c80e60c35221ae859))
 - **FIX**(translation): now use default from config. ([164c9870](https://github.com/dedecube/velvet/commit/164c98709ce26a57baa4880c2821749ad92a5732))
 - **FEAT**(translation): add boostrap function to load locale from store. ([63f4c527](https://github.com/dedecube/velvet/commit/63f4c527a3d08306d9a8cb74ccf8f29b75b751e8))
 - **FEAT**(translation): add LocaleStorable. ([c0198a17](https://github.com/dedecube/velvet/commit/c0198a17c0b9980092081fe22259b6584a7483ab))
 - **FEAT**(translation): load locale from os (optionally, defined by config). ([92c4d768](https://github.com/dedecube/velvet/commit/92c4d768fb4eac5a520c1a62e603269afdc5f27d))

#### `velvet_generator` - `v0.0.1-dev.6`

 - **REFACTOR**: move ConfigValue to seperated file. ([a11bc687](https://github.com/dedecube/velvet/commit/a11bc6875b7299d47f872c181743ed53074b34f2))


## 2024-06-13

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_custom_lints` - `v0.0.1-dev.2`](#velvet_custom_lints---v001-dev2)
 - [`velvet_framework` - `v0.0.1-dev.11`](#velvet_framework---v001-dev11)

---

#### `velvet_custom_lints` - `v0.0.1-dev.2`

 - **FIX**: remove custom_lints from topics in pubspec because invalid char. ([1a799b54](https://github.com/dedecube/velvet/commit/1a799b542000911181a201c2c1f217fe6966e4f9))

#### `velvet_framework` - `v0.0.1-dev.11`

 - **FEAT**: add useInputState and useFormState. ([1e30f25b](https://github.com/dedecube/velvet/commit/1e30f25bee5e3aecf2580ed2abadf758d3e5994e))
 - **FEAT**: add remove in Storable class. ([2808d678](https://github.com/dedecube/velvet/commit/2808d6786166434785b2555fabbfdab05d13df3a))


## 2024-06-12

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_custom_lints` - `v0.0.1-dev.1`](#velvet_custom_lints---v001-dev1)
 - [`velvet_framework` - `v0.0.1-dev.10`](#velvet_framework---v001-dev10)

---

#### `velvet_custom_lints` - `v0.0.1-dev.1`

 - **FEAT**: add velvet_custom_lints package. ([f182bbc5](https://github.com/dedecube/velvet/commit/f182bbc53caefef7bd569be6de3947b7d5815bec))

#### `velvet_framework` - `v0.0.1-dev.10`

 - **FIX**: fallback dioException message on HttpRequestException. ([b5479317](https://github.com/dedecube/velvet/commit/b5479317e93edca764192067fff13dde3baac81b))
 - **FEAT**: add dioInstance getter on Http. ([7c33bdaa](https://github.com/dedecube/velvet/commit/7c33bdaa95b8253ad143c537af79a7dd8ca9f7ad))


## 2024-06-11

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.9`](#velvet_framework---v001-dev9)

---

#### `velvet_framework` - `v0.0.1-dev.9`

 - **FIX**(http): HttpRequestBadResponseHandlerContract method accept as args dioException and httpRequest. ([1671afd6](https://github.com/dedecube/velvet/commit/1671afd64f1ad0fa85699ad41fef8d24aeef4e21))
 - **FEAT**: add vendor exports in entrypoint. ([f2b0edc1](https://github.com/dedecube/velvet/commit/f2b0edc1a4438ccb87f2a82cad112a3c340d2953))


## 2024-06-10

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.8`](#velvet_framework---v001-dev8)

---

#### `velvet_framework` - `v0.0.1-dev.8`

 - **FEAT**: rename client to http and wrap each exception. ([9abbf421](https://github.com/dedecube/velvet/commit/9abbf421fc0c6b708e2cbe131912553a4f5fbf02))


## 2024-06-09

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.7`](#velvet_framework---v001-dev7)

---

#### `velvet_framework` - `v0.0.1-dev.7`

 - **REVERT**: remove unuseful ClientResponseListMapper mixin. ([3cf3361b](https://github.com/dedecube/velvet/commit/3cf3361bdc3a346957b3ad686798994a8df10760))
 - **FEAT**: add export of client. ([62969d17](https://github.com/dedecube/velvet/commit/62969d17df174be56f9f9ec494ac7f18d38b18c7))


## 2024-06-09

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.6`](#velvet_framework---v001-dev6)

---

#### `velvet_framework` - `v0.0.1-dev.6`

 - **FEAT**: add client wrap around dio. ([a0963daf](https://github.com/dedecube/velvet/commit/a0963daf4c4d51989e9b961ca7904b10ea5c3e4d))


## 2024-06-07

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_annotation` - `v0.0.1-dev.4`](#velvet_annotation---v001-dev4)
 - [`velvet_generator` - `v0.0.1-dev.5`](#velvet_generator---v001-dev5)

---

#### `velvet_annotation` - `v0.0.1-dev.4`

 - **FEAT**: add provider to VelvetConfig annotation. ([c0d14888](https://github.com/dedecube/velvet/commit/c0d14888fc1b3f13301cdd9ad0b4476d5d630c34))

#### `velvet_generator` - `v0.0.1-dev.5`

 - **FIX**: MergingBuilder generic type. ([58d41eb9](https://github.com/dedecube/velvet/commit/58d41eb9eb592fed64960d494c3949bcba0a0f03))
 - **FIX**: config_generator export. ([6f9fea57](https://github.com/dedecube/velvet/commit/6f9fea5712a585ede51efea212d24af5b832a527))
 - **FEAT**: config generator now work with provider, so that can use with kernel.bind. ([0de2c455](https://github.com/dedecube/velvet/commit/0de2c45507a0fecfe348f4d628916b1899add277))


## 2024-06-07

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_annotation` - `v0.0.1-dev.3`](#velvet_annotation---v001-dev3)
 - [`velvet_generator` - `v0.0.1-dev.4`](#velvet_generator---v001-dev4)

---

#### `velvet_annotation` - `v0.0.1-dev.3`

 - **FEAT**: add VelvetConfig annotation. ([6d070a41](https://github.com/dedecube/velvet/commit/6d070a4123bdaf1c8893134fecfadb93b321ab83))

#### `velvet_generator` - `v0.0.1-dev.4`

 - **REFACTOR**: move and rename builders and generators files. ([3264afc2](https://github.com/dedecube/velvet/commit/3264afc2a46813c1b1e77157cec1b21872588f43))
 - **FEAT**: add generator and builder for VelvetConfig. ([6dc32712](https://github.com/dedecube/velvet/commit/6dc32712c2519842a470a9787d9b139938d4c4ec))


## 2024-06-03

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.5`](#velvet_framework---v001-dev5)
 - [`velvet_generator` - `v0.0.1-dev.3`](#velvet_generator---v001-dev3)

---

#### `velvet_framework` - `v0.0.1-dev.5`

 - **REVERT**: remove vendor exports. ([976cfea9](https://github.com/dedecube/velvet/commit/976cfea93f3ad08251b72b839f3881cad557befd))

#### `velvet_generator` - `v0.0.1-dev.3`

 - **FIX**: set right import file in build.yaml. ([7759307d](https://github.com/dedecube/velvet/commit/7759307d76e31cbb2de95237d44a21f000061841))


## 2024-06-03

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.4`](#velvet_framework---v001-dev4)

---

#### `velvet_framework` - `v0.0.1-dev.4`

 - **FIX**: hide store, export flutter_hooks and remove exports of envied. ([0aa978c8](https://github.com/dedecube/velvet/commit/0aa978c868607cc777be1f07fa5c02adf944851f))
 - **FIX**: add missing store exports. ([7bade1d1](https://github.com/dedecube/velvet/commit/7bade1d19f7831cc638d488461ce119bd94b6654))
 - **FIX**: add keepAlive in dev_inspector_config_provider and translation_config_provider. ([17460426](https://github.com/dedecube/velvet/commit/17460426b8d445ce03186e7b64219342fed7393a))
 - **FIX**: export flutter_riverpod instead of riverpod. ([2d457d1d](https://github.com/dedecube/velvet/commit/2d457d1d9ea6d566494c68c339df59b753db29c5))


## 2024-06-02

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_framework` - `v0.0.1-dev.3`](#velvet_framework---v001-dev3)

---

#### `velvet_framework` - `v0.0.1-dev.3`

 - **REFACTOR**: remove unused secondary var from WireframeDark. ([ddbb3a4c](https://github.com/dedecube/velvet/commit/ddbb3a4ce83f5ce2a5d2301be6f0324d2f5fe4a2))
 - **FIX**: remove envied config. ([0f82630f](https://github.com/dedecube/velvet/commit/0f82630fd42a784cd20d406c923d4c03592b9dde))
 - **FIX**: rename usePostBuildCallback dir. ([728d2b5d](https://github.com/dedecube/velvet/commit/728d2b5da6da5e6260882435a168b3cf578f78ec))
 - **FEAT**: update entrypoint with each export. ([70f0246b](https://github.com/dedecube/velvet/commit/70f0246bd0132794b165810f84f052eacca82c21))
 - **FEAT**: update bind and add bindAsync on Kernel. ([da32275f](https://github.com/dedecube/velvet/commit/da32275fe0616fc3b54ed58be01e356590e5ed2b))


## 2024-06-02

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_annotation` - `v0.0.1-dev.2`](#velvet_annotation---v001-dev2)
 - [`velvet_framework` - `v0.0.1-dev.2`](#velvet_framework---v001-dev2)
 - [`velvet_generator` - `v0.0.1-dev.2`](#velvet_generator---v001-dev2)
 - [`velvet_lints` - `v0.0.1-dev.2`](#velvet_lints---v001-dev2)
 - [`velvet_support` - `v0.0.1-dev.4`](#velvet_support---v001-dev4)

---

#### `velvet_annotation` - `v0.0.1-dev.2`

 - **DOCS**: clean README.md and add Contributing and License. ([e1bb86b9](https://github.com/dedecube/velvet/commit/e1bb86b97abc8723af091b479e991709e4c3240c))
 - **DOCS**: fix homepage and description and add topics. ([50af3365](https://github.com/dedecube/velvet/commit/50af3365a69a738b614833b7ab1d798306ad1c70))
 - **DOCS**: add example. ([94fce6fe](https://github.com/dedecube/velvet/commit/94fce6feaf29edc67fcc3330bc2fba7c6e9ba9b4))

#### `velvet_framework` - `v0.0.1-dev.2`

 - **REVERT**: remove color_shade deps. ([bb75ebb3](https://github.com/dedecube/velvet/commit/bb75ebb35396620ee70bc1a8f37131365db5ad34))
 - **FIX**: remove .flutter-plugins files. ([d055060c](https://github.com/dedecube/velvet/commit/d055060cfc802268e8bb005b2085d3eb78cdf336))
 - **FIX**: routerProvider returns Future. ([6761069c](https://github.com/dedecube/velvet/commit/6761069c2f32ae58ad50491356be4ddb611b2ce5))
 - **DOCS**: clean README.md and add Contributing and License. ([e1bb86b9](https://github.com/dedecube/velvet/commit/e1bb86b97abc8723af091b479e991709e4c3240c))
 - **DOCS**: add example. ([94fce6fe](https://github.com/dedecube/velvet/commit/94fce6feaf29edc67fcc3330bc2fba7c6e9ba9b4))
 - **DOCS**: update description. ([a07f129c](https://github.com/dedecube/velvet/commit/a07f129c5b8b6186d60a287083a326594d2c40e6))

#### `velvet_generator` - `v0.0.1-dev.2`

 - **FIX**: build_extensions now uses .velvet.dart as output. ([97a741bd](https://github.com/dedecube/velvet/commit/97a741bdab22d3daae3106f5e1e9ded53f4b9106))
 - **DOCS**: clean README.md and add Contributing and License. ([e1bb86b9](https://github.com/dedecube/velvet/commit/e1bb86b97abc8723af091b479e991709e4c3240c))
 - **DOCS**: fix homepage and description and add topics. ([50af3365](https://github.com/dedecube/velvet/commit/50af3365a69a738b614833b7ab1d798306ad1c70))
 - **DOCS**: add example. ([94fce6fe](https://github.com/dedecube/velvet/commit/94fce6feaf29edc67fcc3330bc2fba7c6e9ba9b4))

#### `velvet_lints` - `v0.0.1-dev.2`

 - **DOCS**: clean README.md and add Contributing and License. ([e1bb86b9](https://github.com/dedecube/velvet/commit/e1bb86b97abc8723af091b479e991709e4c3240c))
 - **DOCS**: fix homepage and description and add topics. ([50af3365](https://github.com/dedecube/velvet/commit/50af3365a69a738b614833b7ab1d798306ad1c70))
 - **DOCS**: add example. ([94fce6fe](https://github.com/dedecube/velvet/commit/94fce6feaf29edc67fcc3330bc2fba7c6e9ba9b4))

#### `velvet_support` - `v0.0.1-dev.4`

 - **DOCS**: clean README.md and add Contributing and License. ([e1bb86b9](https://github.com/dedecube/velvet/commit/e1bb86b97abc8723af091b479e991709e4c3240c))
 - **DOCS**: fix homepage and description and add topics. ([50af3365](https://github.com/dedecube/velvet/commit/50af3365a69a738b614833b7ab1d798306ad1c70))
 - **DOCS**: add example. ([94fce6fe](https://github.com/dedecube/velvet/commit/94fce6feaf29edc67fcc3330bc2fba7c6e9ba9b4))


## 2024-05-31

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_support` - `v0.0.1-dev.3`](#velvet_support---v001-dev3)

---

#### `velvet_support` - `v0.0.1-dev.3`

 - **FIX**: usage of library in test.


## 2024-05-31

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_support` - `v0.0.1-dev.2`](#velvet_support---v001-dev2)

---

#### `velvet_support` - `v0.0.1-dev.2`

 - **FIX**: rename velvet_support library file and library name.


## 2024-05-31

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_support` - `v0.0.1-dev.1`](#velvet_support---v001-dev1)

---

#### `velvet_support` - `v0.0.1-dev.1`

 - **REFACTOR**: apply lint rules in velvet_support.


## 2024-05-31

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_annotation` - `v0.0.1-dev.1`](#velvet_annotation---v001-dev1)
 - [`velvet_framework` - `v0.0.1-dev.1`](#velvet_framework---v001-dev1)
 - [`velvet_generator` - `v0.0.1-dev.1`](#velvet_generator---v001-dev1)
 - [`velvet_lints` - `v0.0.1-dev.1`](#velvet_lints---v001-dev1)

---

#### `velvet_annotation` - `v0.0.1-dev.1`

 - **DOCS**: clean CHANGELOG.md on each package.
 - **DOCS**: add LICENSE file on each package.

#### `velvet_framework` - `v0.0.1-dev.1`

 - **DOCS**: clean CHANGELOG.md on each package.
 - **DOCS**: add LICENSE file on each package.

#### `velvet_generator` - `v0.0.1-dev.1`

 - **DOCS**: clean CHANGELOG.md on each package.
 - **DOCS**: add LICENSE file on each package.

#### `velvet_lints` - `v0.0.1-dev.1`

 - **DOCS**: add LICENSE file on each package.


## 2024-05-31

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`velvet_annotation` - `v0.0.1-dev.0`](#velvet_annotation---v001-dev0)
 - [`velvet_framework` - `v0.0.1-dev.0`](#velvet_framework---v001-dev0)
 - [`velvet_generator` - `v0.0.1-dev.0`](#velvet_generator---v001-dev0)
 - [`velvet_lints` - `v0.0.1-dev.0`](#velvet_lints---v001-dev0)
 - [`velvet_support` - `v0.0.1-dev.0`](#velvet_support---v001-dev0)

---

#### `velvet_annotation` - `v0.0.1-dev.0`

 - **FEAT**: import and init packages development.

#### `velvet_framework` - `v0.0.1-dev.0`

 - **FEAT**: import and init packages development.

#### `velvet_generator` - `v0.0.1-dev.0`

 - **FEAT**: import and init packages development.

#### `velvet_lints` - `v0.0.1-dev.0`

 - **FEAT**: import and init packages development.

#### `velvet_support` - `v0.0.1-dev.0`

 - **FEAT**: import and init packages development.

