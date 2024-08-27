## 0.0.1-dev.47

 - **FIX**: remove warning log from FlutterI18nTranslatorAdapter. ([15b87052](https://github.com/dedecube/velvet/commit/15b8705214b537ebc4196ba35aa259589508a27c))
 - **FEAT**: must_be_true and must_be_false rules. ([b7efd7e1](https://github.com/dedecube/velvet/commit/b7efd7e135c222a9d8cff2e6aea53467e9621c96))
 - **FEAT**(form): add flag to enable/disable precompiled values from env. ([01208a33](https://github.com/dedecube/velvet/commit/01208a333c4d203981d22157ab06db57c4026b88))

## 0.0.1-dev.46

 - **FEAT**: add useBool input and change exception matcher stuff to more verbose and intuitive names. ([054ad918](https://github.com/dedecube/velvet/commit/054ad9184ecdbe6daaef4a5c0d1dd9ead8c3aa08))

## 0.0.1-dev.45

 - **FIX**: restore allowReassignment in VelvetContainer. ([090dbc1e](https://github.com/dedecube/velvet/commit/090dbc1e781f33516b3dfcc2d53975b70902eab9))

## 0.0.1-dev.44

 - **REFACTOR**: convert data_loader stuff to plugin and container ready and allow less strict types. ([7e355abb](https://github.com/dedecube/velvet/commit/7e355abb5dce4528af2ec74c6684c8f5caaa640b))
 - **FIX**: remove onRetry from KernelErrorDebugWidget. ([6942cbc5](https://github.com/dedecube/velvet/commit/6942cbc57366df440b0b20b04abf4badfbbe15e4))
 - **FIX**: remove navigatorKey assignment in KernelErrorDebugWidget. ([57876e52](https://github.com/dedecube/velvet/commit/57876e52216756c79cf6e825231faff57d22070b))
 - **FIX**: move allowReassignment to contract and make protected. ([0c8df559](https://github.com/dedecube/velvet/commit/0c8df559464c6edbc1cd1dfd6f2a600f75178747))
 - **FIX**: the kernel_error_debug_widget now do not use any service from container and remove dead widget. ([16c1c192](https://github.com/dedecube/velvet/commit/16c1c192ccf516b345a1aae78cfcb30e33dfc554))
 - **FEAT**: update plugins loader. ([91814428](https://github.com/dedecube/velvet/commit/91814428cefafdf205cfa75e27ff259d711604f5))
 - **FEAT**(data_loader): add helper interface. ([6c59622b](https://github.com/dedecube/velvet/commit/6c59622b5be43a2a0a5eb1bfbc37ccd3479289b6))
 - **FEAT**: add store extension on container. ([e48ff9d0](https://github.com/dedecube/velvet/commit/e48ff9d00c679235486f3e3649121533b5a35f2b))
 - **FEAT**(data_loader): add extension on container and kernel. ([cff60679](https://github.com/dedecube/velvet/commit/cff60679bb3e69e2581a939c2bd1930963b02ac5))
 - **FEAT**: add FactoryWrapper for better resolution of factory inside container. ([2d2ce95f](https://github.com/dedecube/velvet/commit/2d2ce95f042e6dc5317b415f409c3346bcc10ef9))

## 0.0.1-dev.43

 - **REVERT**: remove EnvPlugin from pluginLoader. ([59aa2319](https://github.com/dedecube/velvet/commit/59aa231946ee65170f6e2974eccd03f47babcd2d))
 - **REFACTOR**: now Storable use Store from container instead of riverpod. ([507735f6](https://github.com/dedecube/velvet/commit/507735f6d112c53e119287470aadae21a3473f18))
 - **REFACTOR**: logger names and params. ([a07e187e](https://github.com/dedecube/velvet/commit/a07e187e5b6060b81a8951b815a698f6c1ab12a9))
 - **REFACTOR**: remove usage of registerConfig. ([c0b583e4](https://github.com/dedecube/velvet/commit/c0b583e42c9c34385c33f8743caa1f304cdb2266))
 - **REFACTOR**: KernelAppWidget now get services from container. ([c52a01d4](https://github.com/dedecube/velvet/commit/c52a01d4bfc44ff86727a097da17a25caae86ed1))
 - **REFACTOR**: adding autoloader for addCorePlugins. ([107481a3](https://github.com/dedecube/velvet/commit/107481a37c881392cf0b8d1380a95121476255fe))
 - **REFACTOR**: convert router to plugin. ([bd93502c](https://github.com/dedecube/velvet/commit/bd93502caa108ffcc9a4d16e6988d16a0d4ed63a))
 - **REFACTOR**: remove unused values in VelvetLogSeverityEnum. ([bf7c3b48](https://github.com/dedecube/velvet/commit/bf7c3b48ce6e35de492ea4bd59ba201a82efe6fb))
 - **REFACTOR**: remove registerConfig helper. ([3c927463](https://github.com/dedecube/velvet/commit/3c9274633f0ec5a87ff02d5a40ee1cdd44a32545))
 - **REFACTOR**: convert translation to plugin. ([b03c7cf0](https://github.com/dedecube/velvet/commit/b03c7cf0ba9f2baf1cc1337cbee8a6124ada05c7))
 - **REFACTOR**: remove kernel_provider and its generated file. ([2afdfff3](https://github.com/dedecube/velvet/commit/2afdfff39e55fd55091bd4c77eefa007a6d2b02e))
 - **FIX**: registration order of core services (event bus and logger) and refactor widgets assignment. ([790f14b0](https://github.com/dedecube/velvet/commit/790f14b094a905e8c4f289fd973b6fc05033c060))
 - **FIX**: container is now a VelvetContainer instance. ([ba967d5d](https://github.com/dedecube/velvet/commit/ba967d5d82b9353bd8f4060c512123cd8f43ce74))
 - **FIX**: type of dispatch in event_bus. ([1fc47325](https://github.com/dedecube/velvet/commit/1fc473256e238d4b390ea5c2c3c48c9dc0bd1e96))
 - **FEAT**: add a developer friendly error page. ([3b9893ce](https://github.com/dedecube/velvet/commit/3b9893ce0c010b7a3a822cdd0a5b51d374f37537))
 - **FEAT**: add StackTraceParser. ([6ae9e4dc](https://github.com/dedecube/velvet/commit/6ae9e4dcf07763235b51e6952411facb3a9aef1d))
 - **FEAT**: convert store to plugin. ([5010a8e4](https://github.com/dedecube/velvet/commit/5010a8e4da1349863d428291a096c72fbaf147ff))
 - **FEAT**: add configManager util. ([51ab625a](https://github.com/dedecube/velvet/commit/51ab625ad25fe53d21b174e0faa0d12a1699e2c4))
 - **FEAT**: add _appStartupProvider to Kernel and update riverpod composition method. ([5fa1711d](https://github.com/dedecube/velvet/commit/5fa1711de816ae575a23281b4bb45f54712af77d))
 - **FEAT**: add env core feature. ([513e18aa](https://github.com/dedecube/velvet/commit/513e18aaee017dfc75ab8a94c2cdd1af58fa6493))
 - **FEAT**: add LoggingVelvetLoggerChannel. ([bd348d83](https://github.com/dedecube/velvet/commit/bd348d83399ced4c7deb61345ced395827baebc4))
 - **FEAT**: add VelvetSubject, VelvetObserver and a contract that works as bridge between event-pattern and observer-pattern. ([b468630d](https://github.com/dedecube/velvet/commit/b468630dd3016ebf5bac6638827a1c3a8f3688fd))
 - **FEAT**: showing stack error page instead of error widget when in debug mode. ([eb1b528e](https://github.com/dedecube/velvet/commit/eb1b528ed5a936e3af2a9fb69b8e71109f0ce9fc))
 - **FEAT**: create VelvetContainer class that implements GetIt. ([cec9e087](https://github.com/dedecube/velvet/commit/cec9e087100644621f9f316aa7b22a4fe69f3058))
 - **FEAT**: enable sync on event bus and update useEventListener to call listener callback on postBuild. ([f5fbf415](https://github.com/dedecube/velvet/commit/f5fbf415ff6a65ab9b58aa5f29815da222c9f36b))
 - **FEAT**: add refresh and all in VelvetConfigManager. ([8807d9c1](https://github.com/dedecube/velvet/commit/8807d9c11d2d16703033db9a5bfc24b84b264400))
 - **FEAT**: add CallbackManager helper. ([d05d3fc6](https://github.com/dedecube/velvet/commit/d05d3fc6b24c5da56e25f4ca926228ee3808ee54))
 - **FEAT**: update plugin loader. ([e929f90b](https://github.com/dedecube/velvet/commit/e929f90b61f821b46d558932c96d7ec57977fa50))
 - **FEAT**: add event-pattern and observer-pattern to plugin manager. ([cdfd7192](https://github.com/dedecube/velvet/commit/cdfd7192eb78870f3d6d6b2be8729354caf5b63e))
 - **FEAT**: support opt-out from env loading feat. ([d38932a4](https://github.com/dedecube/velvet/commit/d38932a414233022320e79258086858799ff8040))
 - **FEAT**(logger): support config customization. ([f6ed67f0](https://github.com/dedecube/velvet/commit/f6ed67f00fa5b7d354c9d18c77a5ba782c27c9e1))
 - **FEAT**: convert logger message to dynamic to allow to handle anything. ([455d006b](https://github.com/dedecube/velvet/commit/455d006b0ea8f316e31c2e85b9d00d146c3b8d9e))
 - **FEAT**: add env utils. ([744fe6d3](https://github.com/dedecube/velvet/commit/744fe6d3fe8a3699aaeff043f7991654c6c2b15e))
 - **DOCS**: update some docs and add FIXME comments. ([e658990d](https://github.com/dedecube/velvet/commit/e658990d648647f31f3c098c27dafcd1bff98ba5))

## 0.0.1-dev.42

 - **FIX**: add runPluginCallbacks in Kernel. ([a43ff187](https://github.com/dedecube/velvet/commit/a43ff18721f9a4efeed68e03b1c2bcedb01c2773))
 - **FIX**: now boot and register return FutureOr. ([9e77300f](https://github.com/dedecube/velvet/commit/9e77300f9259832611e868ed777b6b444efd6d97))

## 0.0.1-dev.41

> Note: This release has breaking changes.

 - **REFACTOR**: restructuring utils and update imports. ([6300facb](https://github.com/dedecube/velvet/commit/6300facb4543777827184302b6e24b8a174a927f))
 - **REFACTOR**: kernel logic is now splitted in multiple mixins that make it more easy to understand and mantain. ([baefe935](https://github.com/dedecube/velvet/commit/baefe9352f8b5a1ec902f61adb80049536786638))
 - **REFACTOR**: move event into core, as it is not a plugin but a sdk core piece. ([65ad8891](https://github.com/dedecube/velvet/commit/65ad88916f540fa8842ef84bf8097702054e0672))
 - **REFACTOR**: error_handling. ([60531d54](https://github.com/dedecube/velvet/commit/60531d5412f56d4a89a06b628837ef5d7f563655))
 - **FEAT**: add logger. ([a4afc8ad](https://github.com/dedecube/velvet/commit/a4afc8ad594b6ab48e245c25adb69f1e877d8072))
 - **BREAKING** **REFACTOR**: change nomenclature of routing stuff. ([3767a704](https://github.com/dedecube/velvet/commit/3767a704e44a55d4a42c3d68b0dfcc63ff6a28e0))

## 0.0.1-dev.40

 - **FIX**: use_input and use_form validation. ([bcec8caa](https://github.com/dedecube/velvet/commit/bcec8caa1745090019915ed66be17a021e509928))

## 0.0.1-dev.39

 - **REFACTOR**: rename renderable_exception file. ([ab09bc7c](https://github.com/dedecube/velvet/commit/ab09bc7c2f23d9dc936ede0364fe48e59496c4c0))
 - **REFACTOR**: now all core plugins configs are VelvetConfig and use container. ([0cbb2522](https://github.com/dedecube/velvet/commit/0cbb2522ea5011e36177b00c5cff09088d78259b))
 - **REFACTOR**: move dev_inspector to plugins. ([6333ca9a](https://github.com/dedecube/velvet/commit/6333ca9ae65d1607adfa508263bf9c0100850cfb))
 - **FIX**: runRegister from Kernel.run and add a helper method to register/override configurations. ([9eac4c6f](https://github.com/dedecube/velvet/commit/9eac4c6f27c4c77266250640fa77cd0f887f60f8))
 - **FEAT**: add the createVelvetApp function. ([8ef35f58](https://github.com/dedecube/velvet/commit/8ef35f58718b2a36d9618af67ebd3ea7e2f7a13b))
 - **FEAT**: add config base class and config manager. ([49469d08](https://github.com/dedecube/velvet/commit/49469d088784de5898bf832e04570d4b9bb981d6))

## 0.0.1-dev.38

 - **REFACTOR**: rename EventContract with VelvetEvent. ([035a57d0](https://github.com/dedecube/velvet/commit/035a57d02abe499f445c2015adea37844d53a017))
 - **REFACTOR**: confirmation_rule now uses UseInputReturn. ([8093b0c8](https://github.com/dedecube/velvet/commit/8093b0c8ef07a86e5d7d2146d50d5bcdf473bafe))
 - **REFACTOR**: old container is now riverpodContainer. ([6416fc0a](https://github.com/dedecube/velvet/commit/6416fc0a8023708d8d1c7e818e1fe6c98d9926ab))
 - **REFACTOR**: make use_input generic and provide a more specific useTextInput hook. ([47305176](https://github.com/dedecube/velvet/commit/473051769695822a6e2038378843d9c86fd9615c))
 - **REFACTOR**: move velvet_plugin_contract to contracts folder. ([0f4a120d](https://github.com/dedecube/velvet/commit/0f4a120dce33743ab61a1dc0b7490aa3f2f39990))
 - **FIX**: dispatch HideLoadingWidgetEvent in KernelErrorWidget to avoid loading to persist. ([c3639fd0](https://github.com/dedecube/velvet/commit/c3639fd0e87a1d11e6d67907ce7fbbabb709ad6c))
 - **FEAT**: add plugin manager in Kernel class and init provider. ([d8869def](https://github.com/dedecube/velvet/commit/d8869def749d3302eb2d0fa1d4e093699e18f0e0))
 - **FEAT**: add VelvetPluginManager. ([36cdf796](https://github.com/dedecube/velvet/commit/36cdf79617bcbf7ef5308f615463f2d372820cd7))
 - **FEAT**: add a new http request base class, HttpRequestNoContentContract. ([1f278d0d](https://github.com/dedecube/velvet/commit/1f278d0dcd4b82e2a90a4339d0760ff44456cde5))
 - **FEAT**: convert form feature to get_it container and providing plugin. ([1b123214](https://github.com/dedecube/velvet/commit/1b123214612ee0787695b75235d7bde20333aad1))
 - **FEAT**: convert error_handling feature to get_it container and providing plugin. ([c8f4ea10](https://github.com/dedecube/velvet/commit/c8f4ea10b7db2457d5faf7af8bd6c3198202537d))
 - **FEAT**: convert event feature to get_it container and providing plugin. ([e80c670b](https://github.com/dedecube/velvet/commit/e80c670b872708fdecad3bb0b6cd2b6bf7ef98ec))
 - **FEAT**: VelvetPlugin (s) now have register and boot methods. ([6f171319](https://github.com/dedecube/velvet/commit/6f1713198b7ca0ab5d55e51b0ffcb864293e77ff))
 - **FEAT**: add container using get_it. ([d827919d](https://github.com/dedecube/velvet/commit/d827919d9e21da22d8142ff482c0767cc2ec5801))
 - **FEAT**: useEffectOnce in useEventListener. ([682ac795](https://github.com/dedecube/velvet/commit/682ac795a722c1ca2e8f653f94442aa8b2ef8c55))
 - **FEAT**: add useEffectOnce hook. ([5540dcb9](https://github.com/dedecube/velvet/commit/5540dcb9b97e380d6726071ff85a8ae521dfbe39))
 - **DOCS**: add doc to some http contracts. ([c34f6110](https://github.com/dedecube/velvet/commit/c34f61109a0b986f3213cc436c3d09c5318c53d6))
 - **DOCS**: update docs of some contract, config provider and validation rules. ([be056e66](https://github.com/dedecube/velvet/commit/be056e66f17f73d10458a5c71f05ee1c47b4abe3))

## 0.0.1-dev.37

 - **FEAT**: add middlewares field in BaseRoute. ([d03d2088](https://github.com/dedecube/velvet/commit/d03d20883158750edf170deaaeb39b3af6727169))
 - **FEAT**: add confirmation and fixed_length rule. ([aa682126](https://github.com/dedecube/velvet/commit/aa6821263bb19496f1b2fe1f25cc50ec0c7dd5fd))

## 0.0.1-dev.36

 - **FEAT**: add VelvetPluginContract. ([a327e1df](https://github.com/dedecube/velvet/commit/a327e1df1d85f82159d15d28df408719c507c8f3))
 - **FEAT**: improve debugging of HttpResponseParseException. ([2be76aa2](https://github.com/dedecube/velvet/commit/2be76aa275b042013759ad5a3e8224e822ee594b))
 - **FEAT**: add ConnectionErrorHttpRequestException. ([19062795](https://github.com/dedecube/velvet/commit/19062795b13b23fc508a5d5c99bbeabb2b378bee))
 - **FEAT**: removed params in useCaseContract. ([1d262cf0](https://github.com/dedecube/velvet/commit/1d262cf0e19465965cc00ecd585a60049e75f066))
 - **FEAT**: added use_case_contract. ([d4ef3c12](https://github.com/dedecube/velvet/commit/d4ef3c12e9c3c4df6f04b5b2b515f9dfb99a7818))
 - **FEAT**: improve debug of http_request response when unable to parse. ([6aa3fcc1](https://github.com/dedecube/velvet/commit/6aa3fcc19407cf5381b3653b0f255cbc02eb9b1d))

## 0.0.1-dev.35

 - **FEAT**: improve useInput and useForm providing some default options from config and returing a useMemoized to avoid new instance on each rebuild. ([18f27f94](https://github.com/dedecube/velvet/commit/18f27f944801d05e373b27777b8338cb25c7bc72))
 - **FEAT**: now input_options has copyWith method. ([e86179ea](https://github.com/dedecube/velvet/commit/e86179eae12babceab0b3b5570fa530336722e45))

## 0.0.1-dev.34

 - **FEAT**: redefine loading in Kernel and add HideLoadingWidgetEvent. ([e587fa03](https://github.com/dedecube/velvet/commit/e587fa03e51ca07236dda018ee862c6528dec115))

## 0.0.1-dev.33

 - **FIX**: update email rule regex. ([1ee9c144](https://github.com/dedecube/velvet/commit/1ee9c14478e27d0fc07e05fd621f26e74d81f9e9))
 - **FEAT**: add rawOverride in Kernel. ([2ff911ff](https://github.com/dedecube/velvet/commit/2ff911ff7c29be55c465b8aacdc00621377b53da))

## 0.0.1-dev.32

 - **FIX**: add await for execution of each bootstrap. ([5c7c6077](https://github.com/dedecube/velvet/commit/5c7c6077ec854c36de4a8d8ecf7c9708acebf828))
 - **FEAT**: add TalkerRouteObserver in router. ([337e3f27](https://github.com/dedecube/velvet/commit/337e3f275e37471e0788ed036d49903d31037f46))

## 0.0.1-dev.31

 - **FIX**: BagException now accepts generic and change exceptions from getter to final in HttpRequestBagException to prevent no adding items. ([fe13561c](https://github.com/dedecube/velvet/commit/fe13561cb73d1c32f36581d0636d2bb53bbbacdc))

## 0.0.1-dev.30

 - **FIX**: add temp workaround to prevent black screen on go_router. ([ed94ec7f](https://github.com/dedecube/velvet/commit/ed94ec7f96e5cf6258bd12240b4f8ea071cd2765))
 - **FEAT**: add httpRequest inside extra param of dio requestOptions so that interceptor can use httpRequest. ([71f2b025](https://github.com/dedecube/velvet/commit/71f2b0256af9d16a5a10b47fb3f378d15bc18dec))

## 0.0.1-dev.29

 - **FIX**: useInput now support a more future proof solution for exceptionMatcher. ([baf72b2e](https://github.com/dedecube/velvet/commit/baf72b2e5a9bead45fdff8f72ddb6b30854d5a41))
 - **FEAT**: useForm intercepts BagException. ([12caa911](https://github.com/dedecube/velvet/commit/12caa91121e6f298bf2e6cbfd13cb702fdf7c422))
 - **FEAT**: add bag_exception. ([a5adfb1d](https://github.com/dedecube/velvet/commit/a5adfb1d673e4f6579c386b179386d9c0f1364d2))

## 0.0.1-dev.28

 - **FIX**: prevent imports from library entrypoint and add themeMode also in KernelErrorWidget. ([6c2341d7](https://github.com/dedecube/velvet/commit/6c2341d788d3bea9cfef1bd110dd5c5be3fb8db5))
 - **FEAT**: update exports. ([6ac5bb41](https://github.com/dedecube/velvet/commit/6ac5bb414a1a8edc4579f87646c2e2fa61242116))
 - **FEAT**: add PlatformDispatcher.instance.onError to handle async errors. ([d4e3bf2b](https://github.com/dedecube/velvet/commit/d4e3bf2bcbd93f5af61be6a665240c45cd27e16f))

## 0.0.1-dev.27

 - **FEAT**: add themeConfig.

## 0.0.1-dev.26

 - **FIX**: move up `isSubmitting.value = false;` before call onSuccess.

## 0.0.1-dev.25

 - **FIX**: kernel_error_widget now can use translator using kernel resolutionKey. ([931959a7](https://github.com/dedecube/velvet/commit/931959a7c66efdeb79880a7ef123de6cfad0a22e))

## 0.0.1-dev.24

 - **FIX**: avoid errors to be caught by error handling. ([11188ac0](https://github.com/dedecube/velvet/commit/11188ac0b71e309d69238607f1758c1cecd390a4))
 - **FEAT**: add use_event_listener in exports. ([50f4b19a](https://github.com/dedecube/velvet/commit/50f4b19adc830349e3274eb733b206f8e256bbe7))
 - **DOCS**: add description and examples in event_bus_provider. ([6bd5757f](https://github.com/dedecube/velvet/commit/6bd5757fe8df0cd76f20b23eed72e322877bd3ca))
 - **DOCS**: add docs in RenderableExceptionContract. ([aa4214a2](https://github.com/dedecube/velvet/commit/aa4214a2537f6259c2612a6bd24347d59245ba87))

## 0.0.1-dev.23

 - **FIX**: set on submitting on form error before match exceptions. ([71c49fd9](https://github.com/dedecube/velvet/commit/71c49fd9c3f88292fcb8676932b6a81e713ed5f9))
 - **FIX**: add missing return type in Http for dioInstance getter. ([f6a993fd](https://github.com/dedecube/velvet/commit/f6a993fd3b62acb66930d18b2cc5a92fc4746648))

## 0.0.1-dev.22

 - **FEAT**: add useEventListener hook. ([b6c68b5b](https://github.com/dedecube/velvet/commit/b6c68b5ba0d95673f0938d4a0894872d878c713a))

## 0.0.1-dev.21

 - **REFACTOR**: remove all exports.dart and re-implement centrally in main lib entrypoint. ([c1fbd634](https://github.com/dedecube/velvet/commit/c1fbd6348daeb078225b96b1e1588f4808c3c4be))
 - **REFACTOR**: rename kernel_app_widget file. ([164c6e67](https://github.com/dedecube/velvet/commit/164c6e6787222e31638fd63ee4e4187cbbcbb00e))
 - **REFACTOR**: router now has its own default implementation to reduce boilerplate code in applications. ([99327ee4](https://github.com/dedecube/velvet/commit/99327ee44ad30a93d8b204bdfa16ab998c38abb5))
 - **FIX**: use container() util in Storable base class. ([9db5d2dc](https://github.com/dedecube/velvet/commit/9db5d2dc528d8bd5d93b31585753e1c70c03f34b))
 - **FEAT**: add events in translation load from os and from store. ([d04538ef](https://github.com/dedecube/velvet/commit/d04538ef0153a71710a189d4afe91db80f9795eb))
 - **FEAT**: re-work of create and retrive of container. ([e12b59a6](https://github.com/dedecube/velvet/commit/e12b59a6b745974c1c8172172ed3898d34ca32c1))
 - **FEAT**: add error_handling config and renderable contract. ([892c7c81](https://github.com/dedecube/velvet/commit/892c7c8180a22381b18f0537004e429c59c3b27f))
 - **FEAT**: check for navigatorKey in router in kernel_provider and add event_bus initialization. ([a78734c7](https://github.com/dedecube/velvet/commit/a78734c757cf3bda7a1d76e56a5da8f0c151a525))
 - **FEAT**: add event_bus. ([f99ef57f](https://github.com/dedecube/velvet/commit/f99ef57ffead00c5f6e01394620f3dc1ffb0a8ac))

## 0.0.1-dev.20

 - **REFACTOR**: update exports. ([7582556f](https://github.com/dedecube/velvet/commit/7582556fff7053063f62372c810055ff24369823))
 - **REFACTOR**: wrap theme creation inside hooks. ([d9cec3b1](https://github.com/dedecube/velvet/commit/d9cec3b1b49486251950b5dd459dac93dfcace96))
 - **REFACTOR**: rename exceptions import. ([3dff9e65](https://github.com/dedecube/velvet/commit/3dff9e65661866a7b73ecc7f8cf43aa8b215be52))
 - **REFACTOR**: :pencil2: stackTrack to stackTrace. ([3ebe69a2](https://github.com/dedecube/velvet/commit/3ebe69a2d1844feda47e842d197b994b51e68e3b))
 - **FIX**: prevent type error in translationLocaleFromStoreBootstrap. ([9d4f6469](https://github.com/dedecube/velvet/commit/9d4f64694e1103ab5c846a0f51902fe1f54855bd))
 - **FIX**: remove usage of deprecated `WidgetsBinding.instance.window.locale`. ([770a1e14](https://github.com/dedecube/velvet/commit/770a1e14fb7301d903e18a39c59fbd019c6a707f))
 - **FEAT**: add form_config_provider. ([fd24eccc](https://github.com/dedecube/velvet/commit/fd24eccc453b6004a3d64bff3b37c0e731f36112))
 - **FEAT**: :sparkles: add ExceptionToMessageResolver and ExceptionToMessageResolverFactory. ([538d6c66](https://github.com/dedecube/velvet/commit/538d6c66418aaf5b52bfb971128950dd079091bd))
 - **DOCS**: :memo: add some docs using copilot. ([843b1974](https://github.com/dedecube/velvet/commit/843b1974104b4edb4cff76e0ec110db77ca4c80d))

## 0.0.1-dev.19

 - **FIX**: add translate and kernel_context to exports. ([e16fd5a3](https://github.com/dedecube/velvet/commit/e16fd5a36da42b65b81f1384377aaa2bb3c0badf))

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

