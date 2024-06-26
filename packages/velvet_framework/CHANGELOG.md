## 0.0.1-dev.18

 - **REVERT**: remove TranslationItem and fix context usage for Localizations resolver. ([0f7618d6](https://github.com/dedecube/velvet/commit/0f7618d610f40f6a3e8cbd3626886b664a440890))

## 0.0.1-dev.17

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

## 0.0.1-dev.16

 - **FIX**: force to return bool in flutter_i18n translator adapter. ([414e1be5](https://github.com/dedecube/velvet/commit/414e1be5fcff85474be33901d5fc26f747602375))
 - **FIX**: check locale using only language_code in _loadFromOS. ([c49b7790](https://github.com/dedecube/velvet/commit/c49b779014442dbce1788e9ecd0d0f7e93ecf1a1))

## 0.0.1-dev.15

 - **FIX**: remove meta from dependencies_overrides and downgrade analyzer to ^6.4.1. ([15750a93](https://github.com/dedecube/velvet/commit/15750a9384db9f0c49bf4b5c3bc8d8d66740a8f9))

## 0.0.1-dev.14

 - **FIX**: add dependency_overrides for meta package. ([86bd4060](https://github.com/dedecube/velvet/commit/86bd406012f83bcd49d735bc612fe1c42474c58a))

## 0.0.1-dev.13

 - **REFACTOR**: move BaseRoute transition logic to specific mixin. ([d7258811](https://github.com/dedecube/velvet/commit/d7258811ae9b0b488ed054ffded1e7fa28322275))
 - **FEAT**: add core with base Config class. ([db98887a](https://github.com/dedecube/velvet/commit/db98887a448c5e4a4d0b50d8214d7cbb4e3a0241))

## 0.0.1-dev.12

 - **REFACTOR**: rewrite exports using generate-index. ([8f829d83](https://github.com/dedecube/velvet/commit/8f829d83cca40e18b52e34b75ed5cf3d747b864c))
 - **REFACTOR**: remove dead import and regenerate router_provider. ([e6434ec4](https://github.com/dedecube/velvet/commit/e6434ec4b2e09aa2cffbd09094bbbbe0d457419e))
 - **REFACTOR**: now flutter_i18n load files from translation folder. ([965bc9a8](https://github.com/dedecube/velvet/commit/965bc9a8a30dd49ef047cb4c80e60c35221ae859))
 - **FIX**(translation): now use default from config. ([164c9870](https://github.com/dedecube/velvet/commit/164c98709ce26a57baa4880c2821749ad92a5732))
 - **FEAT**(translation): add boostrap function to load locale from store. ([63f4c527](https://github.com/dedecube/velvet/commit/63f4c527a3d08306d9a8cb74ccf8f29b75b751e8))
 - **FEAT**(translation): add LocaleStorable. ([c0198a17](https://github.com/dedecube/velvet/commit/c0198a17c0b9980092081fe22259b6584a7483ab))
 - **FEAT**(translation): load locale from os (optionally, defined by config). ([92c4d768](https://github.com/dedecube/velvet/commit/92c4d768fb4eac5a520c1a62e603269afdc5f27d))

## 0.0.1-dev.11

 - **FEAT**: add useInputState and useFormState. ([1e30f25b](https://github.com/dedecube/velvet/commit/1e30f25bee5e3aecf2580ed2abadf758d3e5994e))
 - **FEAT**: add remove in Storable class. ([2808d678](https://github.com/dedecube/velvet/commit/2808d6786166434785b2555fabbfdab05d13df3a))

## 0.0.1-dev.10

 - **FIX**: fallback dioException message on HttpRequestException. ([b5479317](https://github.com/dedecube/velvet/commit/b5479317e93edca764192067fff13dde3baac81b))
 - **FEAT**: add dioInstance getter on Http. ([7c33bdaa](https://github.com/dedecube/velvet/commit/7c33bdaa95b8253ad143c537af79a7dd8ca9f7ad))

## 0.0.1-dev.9

 - **FIX**(http): HttpRequestBadResponseHandlerContract method accept as args dioException and httpRequest. ([1671afd6](https://github.com/dedecube/velvet/commit/1671afd64f1ad0fa85699ad41fef8d24aeef4e21))
 - **FEAT**: add vendor exports in entrypoint. ([f2b0edc1](https://github.com/dedecube/velvet/commit/f2b0edc1a4438ccb87f2a82cad112a3c340d2953))

## 0.0.1-dev.8

 - **FEAT**: rename client to http and wrap each exception. ([9abbf421](https://github.com/dedecube/velvet/commit/9abbf421fc0c6b708e2cbe131912553a4f5fbf02))

## 0.0.1-dev.7

 - **REVERT**: remove unuseful ClientResponseListMapper mixin. ([3cf3361b](https://github.com/dedecube/velvet/commit/3cf3361bdc3a346957b3ad686798994a8df10760))
 - **FEAT**: add export of client. ([62969d17](https://github.com/dedecube/velvet/commit/62969d17df174be56f9f9ec494ac7f18d38b18c7))

## 0.0.1-dev.6

 - **FEAT**: add client wrap around dio. ([a0963daf](https://github.com/dedecube/velvet/commit/a0963daf4c4d51989e9b961ca7904b10ea5c3e4d))

## 0.0.1-dev.5

 - **REVERT**: remove vendor exports. ([976cfea9](https://github.com/dedecube/velvet/commit/976cfea93f3ad08251b72b839f3881cad557befd))

## 0.0.1-dev.4

 - **FIX**: hide store, export flutter_hooks and remove exports of envied. ([0aa978c8](https://github.com/dedecube/velvet/commit/0aa978c868607cc777be1f07fa5c02adf944851f))
 - **FIX**: add missing store exports. ([7bade1d1](https://github.com/dedecube/velvet/commit/7bade1d19f7831cc638d488461ce119bd94b6654))
 - **FIX**: add keepAlive in dev_inspector_config_provider and translation_config_provider. ([17460426](https://github.com/dedecube/velvet/commit/17460426b8d445ce03186e7b64219342fed7393a))
 - **FIX**: export flutter_riverpod instead of riverpod. ([2d457d1d](https://github.com/dedecube/velvet/commit/2d457d1d9ea6d566494c68c339df59b753db29c5))

## 0.0.1-dev.3

 - **REFACTOR**: remove unused secondary var from WireframeDark. ([ddbb3a4c](https://github.com/dedecube/velvet/commit/ddbb3a4ce83f5ce2a5d2301be6f0324d2f5fe4a2))
 - **FIX**: remove envied config. ([0f82630f](https://github.com/dedecube/velvet/commit/0f82630fd42a784cd20d406c923d4c03592b9dde))
 - **FIX**: rename usePostBuildCallback dir. ([728d2b5d](https://github.com/dedecube/velvet/commit/728d2b5da6da5e6260882435a168b3cf578f78ec))
 - **FEAT**: update entrypoint with each export. ([70f0246b](https://github.com/dedecube/velvet/commit/70f0246bd0132794b165810f84f052eacca82c21))
 - **FEAT**: update bind and add bindAsync on Kernel. ([da32275f](https://github.com/dedecube/velvet/commit/da32275fe0616fc3b54ed58be01e356590e5ed2b))

## 0.0.1-dev.2

 - **REVERT**: remove color_shade deps. ([bb75ebb3](https://github.com/dedecube/velvet/commit/bb75ebb35396620ee70bc1a8f37131365db5ad34))
 - **FIX**: remove .flutter-plugins files. ([d055060c](https://github.com/dedecube/velvet/commit/d055060cfc802268e8bb005b2085d3eb78cdf336))
 - **FIX**: routerProvider returns Future. ([6761069c](https://github.com/dedecube/velvet/commit/6761069c2f32ae58ad50491356be4ddb611b2ce5))
 - **DOCS**: clean README.md and add Contributing and License. ([e1bb86b9](https://github.com/dedecube/velvet/commit/e1bb86b97abc8723af091b479e991709e4c3240c))
 - **DOCS**: add example. ([94fce6fe](https://github.com/dedecube/velvet/commit/94fce6feaf29edc67fcc3330bc2fba7c6e9ba9b4))
 - **DOCS**: update description. ([a07f129c](https://github.com/dedecube/velvet/commit/a07f129c5b8b6186d60a287083a326594d2c40e6))

## 0.0.1-dev.1

 - **DOCS**: clean CHANGELOG.md on each package.
 - **DOCS**: add LICENSE file on each package.

## 0.0.1-dev.0

 - **FEAT**: import and init packages development.

