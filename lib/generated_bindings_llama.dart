// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void __va_start(
    ffi.Pointer<va_list> arg0,
  ) {
    return ___va_start(
      arg0,
    );
  }

  late final ___va_startPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<va_list>)>>(
          '__va_start');
  late final ___va_start =
      ___va_startPtr.asFunction<void Function(ffi.Pointer<va_list>)>();

  void __security_init_cookie() {
    return ___security_init_cookie();
  }

  late final ___security_init_cookiePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>(
          '__security_init_cookie');
  late final ___security_init_cookie =
      ___security_init_cookiePtr.asFunction<void Function()>();

  void __security_check_cookie(
    int _StackCookie,
  ) {
    return ___security_check_cookie(
      _StackCookie,
    );
  }

  late final ___security_check_cookiePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          '__security_check_cookie');
  late final ___security_check_cookie =
      ___security_check_cookiePtr.asFunction<void Function(int)>();

  void __report_gsfailure(
    int _StackCookie,
  ) {
    return ___report_gsfailure(
      _StackCookie,
    );
  }

  late final ___report_gsfailurePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          '__report_gsfailure');
  late final ___report_gsfailure =
      ___report_gsfailurePtr.asFunction<void Function(int)>();

  late final ffi.Pointer<ffi.UintPtr> ___security_cookie =
      _lookup<ffi.UintPtr>('__security_cookie');

  int get __security_cookie => ___security_cookie.value;

  set __security_cookie(int value) => ___security_cookie.value = value;

  void _invalid_parameter_noinfo() {
    return __invalid_parameter_noinfo();
  }

  late final __invalid_parameter_noinfoPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>(
          '_invalid_parameter_noinfo');
  late final __invalid_parameter_noinfo =
      __invalid_parameter_noinfoPtr.asFunction<void Function()>();

  void _invalid_parameter_noinfo_noreturn() {
    return __invalid_parameter_noinfo_noreturn();
  }

  late final __invalid_parameter_noinfo_noreturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>(
          '_invalid_parameter_noinfo_noreturn');
  late final __invalid_parameter_noinfo_noreturn =
      __invalid_parameter_noinfo_noreturnPtr.asFunction<void Function()>();

  void _invoke_watson(
    ffi.Pointer<ffi.WChar> _Expression,
    ffi.Pointer<ffi.WChar> _FunctionName,
    ffi.Pointer<ffi.WChar> _FileName,
    int _LineNo,
    int _Reserved,
  ) {
    return __invoke_watson(
      _Expression,
      _FunctionName,
      _FileName,
      _LineNo,
      _Reserved,
    );
  }

  late final __invoke_watsonPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.WChar>,
              ffi.Pointer<ffi.WChar>,
              ffi.Pointer<ffi.WChar>,
              ffi.UnsignedInt,
              ffi.UintPtr)>>('_invoke_watson');
  late final __invoke_watson = __invoke_watsonPtr.asFunction<
      void Function(ffi.Pointer<ffi.WChar>, ffi.Pointer<ffi.WChar>,
          ffi.Pointer<ffi.WChar>, int, int)>();

  ffi.Pointer<ffi.Int> _errno() {
    return __errno();
  }

  late final __errnoPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int> Function()>>('_errno');
  late final __errno = __errnoPtr.asFunction<ffi.Pointer<ffi.Int> Function()>();

  int _set_errno(
    int _Value,
  ) {
    return __set_errno(
      _Value,
    );
  }

  late final __set_errnoPtr =
      _lookup<ffi.NativeFunction<errno_t Function(ffi.Int)>>('_set_errno');
  late final __set_errno = __set_errnoPtr.asFunction<int Function(int)>();

  int _get_errno(
    ffi.Pointer<ffi.Int> _Value,
  ) {
    return __get_errno(
      _Value,
    );
  }

  late final __get_errnoPtr =
      _lookup<ffi.NativeFunction<errno_t Function(ffi.Pointer<ffi.Int>)>>(
          '_get_errno');
  late final __get_errno =
      __get_errnoPtr.asFunction<int Function(ffi.Pointer<ffi.Int>)>();

  int __threadid() {
    return ___threadid();
  }

  late final ___threadidPtr =
      _lookup<ffi.NativeFunction<ffi.UnsignedLong Function()>>('__threadid');
  late final ___threadid = ___threadidPtr.asFunction<int Function()>();

  int __threadhandle() {
    return ___threadhandle();
  }

  late final ___threadhandlePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function()>>('__threadhandle');
  late final ___threadhandle = ___threadhandlePtr.asFunction<int Function()>();

  llama_context_params llama_context_default_params() {
    return _llama_context_default_params();
  }

  late final _llama_context_default_paramsPtr =
      _lookup<ffi.NativeFunction<llama_context_params Function()>>(
          'llama_context_default_params');
  late final _llama_context_default_params = _llama_context_default_paramsPtr
      .asFunction<llama_context_params Function()>();

  bool llama_mmap_supported() {
    return _llama_mmap_supported();
  }

  late final _llama_mmap_supportedPtr =
      _lookup<ffi.NativeFunction<ffi.Bool Function()>>('llama_mmap_supported');
  late final _llama_mmap_supported =
      _llama_mmap_supportedPtr.asFunction<bool Function()>();

  bool llama_mlock_supported() {
    return _llama_mlock_supported();
  }

  late final _llama_mlock_supportedPtr =
      _lookup<ffi.NativeFunction<ffi.Bool Function()>>('llama_mlock_supported');
  late final _llama_mlock_supported =
      _llama_mlock_supportedPtr.asFunction<bool Function()>();

  ffi.Pointer<llama_context> llama_init_from_file(
    ffi.Pointer<ffi.Char> path_model,
    llama_context_params params,
  ) {
    return _llama_init_from_file(
      path_model,
      params,
    );
  }

  late final _llama_init_from_filePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<llama_context> Function(ffi.Pointer<ffi.Char>,
              llama_context_params)>>('llama_init_from_file');
  late final _llama_init_from_file = _llama_init_from_filePtr.asFunction<
      ffi.Pointer<llama_context> Function(
          ffi.Pointer<ffi.Char>, llama_context_params)>();

  void llama_free(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_free(
      ctx,
    );
  }

  late final _llama_freePtr = _lookup<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<llama_context>)>>(
      'llama_free');
  late final _llama_free =
      _llama_freePtr.asFunction<void Function(ffi.Pointer<llama_context>)>();

  int llama_model_quantize(
    ffi.Pointer<ffi.Char> fname_inp,
    ffi.Pointer<ffi.Char> fname_out,
    int ftype,
  ) {
    return _llama_model_quantize(
      fname_inp,
      fname_out,
      ftype,
    );
  }

  late final _llama_model_quantizePtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              ffi.Int32)>>('llama_model_quantize');
  late final _llama_model_quantize = _llama_model_quantizePtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>, int)>();

  ffi.Pointer<ffi.Uint8> llama_get_kv_cache(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_get_kv_cache(
      ctx,
    );
  }

  late final _llama_get_kv_cachePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Uint8> Function(
              ffi.Pointer<llama_context>)>>('llama_get_kv_cache');
  late final _llama_get_kv_cache = _llama_get_kv_cachePtr.asFunction<
      ffi.Pointer<ffi.Uint8> Function(ffi.Pointer<llama_context>)>();

  int llama_get_kv_cache_size(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_get_kv_cache_size(
      ctx,
    );
  }

  late final _llama_get_kv_cache_sizePtr = _lookup<
          ffi.NativeFunction<ffi.Size Function(ffi.Pointer<llama_context>)>>(
      'llama_get_kv_cache_size');
  late final _llama_get_kv_cache_size = _llama_get_kv_cache_sizePtr
      .asFunction<int Function(ffi.Pointer<llama_context>)>();

  int llama_get_kv_cache_token_count(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_get_kv_cache_token_count(
      ctx,
    );
  }

  late final _llama_get_kv_cache_token_countPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<llama_context>)>>(
          'llama_get_kv_cache_token_count');
  late final _llama_get_kv_cache_token_count =
      _llama_get_kv_cache_token_countPtr
          .asFunction<int Function(ffi.Pointer<llama_context>)>();

  void llama_set_kv_cache(
    ffi.Pointer<llama_context> ctx,
    ffi.Pointer<ffi.Uint8> kv_cache,
    int n_size,
    int n_token_count,
  ) {
    return _llama_set_kv_cache(
      ctx,
      kv_cache,
      n_size,
      n_token_count,
    );
  }

  late final _llama_set_kv_cachePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<llama_context>, ffi.Pointer<ffi.Uint8>,
              ffi.Size, ffi.Int)>>('llama_set_kv_cache');
  late final _llama_set_kv_cache = _llama_set_kv_cachePtr.asFunction<
      void Function(
          ffi.Pointer<llama_context>, ffi.Pointer<ffi.Uint8>, int, int)>();

  int llama_eval(
    ffi.Pointer<llama_context> ctx,
    ffi.Pointer<llama_token> tokens,
    int n_tokens,
    int n_past,
    int n_threads,
  ) {
    return _llama_eval(
      ctx,
      tokens,
      n_tokens,
      n_past,
      n_threads,
    );
  }

  late final _llama_evalPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<llama_context>, ffi.Pointer<llama_token>,
              ffi.Int, ffi.Int, ffi.Int)>>('llama_eval');
  late final _llama_eval = _llama_evalPtr.asFunction<
      int Function(ffi.Pointer<llama_context>, ffi.Pointer<llama_token>, int,
          int, int)>();

  int llama_tokenize(
    ffi.Pointer<llama_context> ctx,
    ffi.Pointer<ffi.Char> text,
    ffi.Pointer<llama_token> tokens,
    int n_max_tokens,
    bool add_bos,
  ) {
    return _llama_tokenize(
      ctx,
      text,
      tokens,
      n_max_tokens,
      add_bos,
    );
  }

  late final _llama_tokenizePtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<llama_context>, ffi.Pointer<ffi.Char>,
              ffi.Pointer<llama_token>, ffi.Int, ffi.Bool)>>('llama_tokenize');
  late final _llama_tokenize = _llama_tokenizePtr.asFunction<
      int Function(ffi.Pointer<llama_context>, ffi.Pointer<ffi.Char>,
          ffi.Pointer<llama_token>, int, bool)>();

  int llama_n_vocab(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_n_vocab(
      ctx,
    );
  }

  late final _llama_n_vocabPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<llama_context>)>>(
          'llama_n_vocab');
  late final _llama_n_vocab =
      _llama_n_vocabPtr.asFunction<int Function(ffi.Pointer<llama_context>)>();

  int llama_n_ctx(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_n_ctx(
      ctx,
    );
  }

  late final _llama_n_ctxPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<llama_context>)>>(
          'llama_n_ctx');
  late final _llama_n_ctx =
      _llama_n_ctxPtr.asFunction<int Function(ffi.Pointer<llama_context>)>();

  int llama_n_embd(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_n_embd(
      ctx,
    );
  }

  late final _llama_n_embdPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<llama_context>)>>(
          'llama_n_embd');
  late final _llama_n_embd =
      _llama_n_embdPtr.asFunction<int Function(ffi.Pointer<llama_context>)>();

  ffi.Pointer<ffi.Float> llama_get_logits(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_get_logits(
      ctx,
    );
  }

  late final _llama_get_logitsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Float> Function(
              ffi.Pointer<llama_context>)>>('llama_get_logits');
  late final _llama_get_logits = _llama_get_logitsPtr.asFunction<
      ffi.Pointer<ffi.Float> Function(ffi.Pointer<llama_context>)>();

  ffi.Pointer<ffi.Float> llama_get_embeddings(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_get_embeddings(
      ctx,
    );
  }

  late final _llama_get_embeddingsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Float> Function(
              ffi.Pointer<llama_context>)>>('llama_get_embeddings');
  late final _llama_get_embeddings = _llama_get_embeddingsPtr.asFunction<
      ffi.Pointer<ffi.Float> Function(ffi.Pointer<llama_context>)>();

  ffi.Pointer<ffi.Char> llama_token_to_str(
    ffi.Pointer<llama_context> ctx,
    int token,
  ) {
    return _llama_token_to_str(
      ctx,
      token,
    );
  }

  late final _llama_token_to_strPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<llama_context>, llama_token)>>('llama_token_to_str');
  late final _llama_token_to_str = _llama_token_to_strPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(ffi.Pointer<llama_context>, int)>();

  int llama_token_bos() {
    return _llama_token_bos();
  }

  late final _llama_token_bosPtr =
      _lookup<ffi.NativeFunction<llama_token Function()>>('llama_token_bos');
  late final _llama_token_bos =
      _llama_token_bosPtr.asFunction<int Function()>();

  int llama_token_eos() {
    return _llama_token_eos();
  }

  late final _llama_token_eosPtr =
      _lookup<ffi.NativeFunction<llama_token Function()>>('llama_token_eos');
  late final _llama_token_eos =
      _llama_token_eosPtr.asFunction<int Function()>();

  int llama_sample_top_p_top_k(
    ffi.Pointer<llama_context> ctx,
    ffi.Pointer<llama_token> last_n_tokens_data,
    int last_n_tokens_size,
    int top_k,
    double top_p,
    double temp,
    double repeat_penalty,
  ) {
    return _llama_sample_top_p_top_k(
      ctx,
      last_n_tokens_data,
      last_n_tokens_size,
      top_k,
      top_p,
      temp,
      repeat_penalty,
    );
  }

  late final _llama_sample_top_p_top_kPtr = _lookup<
      ffi.NativeFunction<
          llama_token Function(
              ffi.Pointer<llama_context>,
              ffi.Pointer<llama_token>,
              ffi.Int,
              ffi.Int,
              ffi.Float,
              ffi.Float,
              ffi.Float)>>('llama_sample_top_p_top_k');
  late final _llama_sample_top_p_top_k =
      _llama_sample_top_p_top_kPtr.asFunction<
          int Function(ffi.Pointer<llama_context>, ffi.Pointer<llama_token>,
              int, int, double, double, double)>();

  void llama_print_timings(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_print_timings(
      ctx,
    );
  }

  late final _llama_print_timingsPtr = _lookup<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<llama_context>)>>(
      'llama_print_timings');
  late final _llama_print_timings = _llama_print_timingsPtr
      .asFunction<void Function(ffi.Pointer<llama_context>)>();

  void llama_reset_timings(
    ffi.Pointer<llama_context> ctx,
  ) {
    return _llama_reset_timings(
      ctx,
    );
  }

  late final _llama_reset_timingsPtr = _lookup<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<llama_context>)>>(
      'llama_reset_timings');
  late final _llama_reset_timings = _llama_reset_timingsPtr
      .asFunction<void Function(ffi.Pointer<llama_context>)>();

  ffi.Pointer<ffi.Char> llama_print_system_info() {
    return _llama_print_system_info();
  }

  late final _llama_print_system_infoPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'llama_print_system_info');
  late final _llama_print_system_info = _llama_print_system_infoPtr
      .asFunction<ffi.Pointer<ffi.Char> Function()>();
}

typedef va_list = ffi.Pointer<ffi.Char>;

class __crt_locale_data_public extends ffi.Struct {
  external ffi.Pointer<ffi.UnsignedShort> _locale_pctype;

  @ffi.Int()
  external int _locale_mb_cur_max;

  @ffi.UnsignedInt()
  external int _locale_lc_codepage;
}

class __crt_locale_pointers extends ffi.Struct {
  external ffi.Pointer<__crt_locale_data> locinfo;

  external ffi.Pointer<__crt_multibyte_data> mbcinfo;
}

class __crt_locale_data extends ffi.Opaque {}

class __crt_multibyte_data extends ffi.Opaque {}

class _Mbstatet extends ffi.Struct {
  @ffi.UnsignedLong()
  external int _Wchar;

  @ffi.UnsignedShort()
  external int _Byte;

  @ffi.UnsignedShort()
  external int _State;
}

typedef errno_t = ffi.Int;

class gpt_params extends ffi.Struct {
  @ffi.Int32()
  external int seed;

  @ffi.Int32()
  external int n_threads;

  @ffi.Int32()
  external int n_predict;

  @ffi.Int32()
  external int repeat_last_n;

  @ffi.Int32()
  external int n_parts;

  @ffi.Int32()
  external int n_ctx;

  @ffi.Int32()
  external int n_batch;

  @ffi.Int32()
  external int n_keep;

  @ffi.Int32()
  external int top_k;

  @ffi.Float()
  external double top_p;

  @ffi.Float()
  external double temp;

  @ffi.Float()
  external double repeat_penalty;

  @ffi.Int()
  external int std;

  @ffi.Bool()
  external bool memory_f16;

  @ffi.Bool()
  external bool random_prompt;

  @ffi.Bool()
  external bool use_color;

  @ffi.Bool()
  external bool interactive;

  @ffi.Bool()
  external bool embedding;

  @ffi.Bool()
  external bool interactive_start;

  @ffi.Bool()
  external bool instruct;

  @ffi.Bool()
  external bool ignore_eos;

  @ffi.Bool()
  external bool perplexity;

  @ffi.Bool()
  external bool use_mmap;

  @ffi.Bool()
  external bool use_mlock;

  @ffi.Bool()
  external bool mem_test;

  @ffi.Bool()
  external bool verbose_prompt;
}

class llama_context extends ffi.Opaque {}

class llama_token_data extends ffi.Struct {
  @llama_token()
  external int id;

  @ffi.Float()
  external double p;

  @ffi.Float()
  external double plog;
}

typedef llama_token = ffi.Int;

class llama_context_params extends ffi.Struct {
  @ffi.Int()
  external int n_ctx;

  @ffi.Int()
  external int n_parts;

  @ffi.Int()
  external int seed;

  @ffi.Bool()
  external bool f16_kv;

  @ffi.Bool()
  external bool logits_all;

  @ffi.Bool()
  external bool vocab_only;

  @ffi.Bool()
  external bool use_mmap;

  @ffi.Bool()
  external bool use_mlock;

  @ffi.Bool()
  external bool embedding;

  external llama_progress_callback progress_callback;

  external ffi.Pointer<ffi.Void> progress_callback_user_data;
}

typedef llama_progress_callback = ffi.Pointer<
    ffi.NativeFunction<ffi.Void Function(ffi.Float, ffi.Pointer<ffi.Void>)>>;

abstract class llama_ftype {
  static const int LLAMA_FTYPE_ALL_F32 = 0;
  static const int LLAMA_FTYPE_MOSTLY_F16 = 1;
  static const int LLAMA_FTYPE_MOSTLY_Q4_0 = 2;
  static const int LLAMA_FTYPE_MOSTLY_Q4_1 = 3;
}

const int _VCRT_COMPILER_PREPROCESSOR = 1;

const int _SAL_VERSION = 20;

const int __SAL_H_VERSION = 180000000;

const int _USE_DECLSPECS_FOR_SAL = 0;

const int _USE_ATTRIBUTES_FOR_SAL = 0;

const int _CRT_PACKING = 8;

const int _VCRUNTIME_DISABLED_WARNINGS = 4514;

const int _HAS_EXCEPTIONS = 1;

const int _WCHAR_T_DEFINED = 1;

const int NULL = 0;

const int _HAS_CXX17 = 0;

const int _HAS_CXX20 = 0;

const int _HAS_CXX23 = 0;

const int _HAS_NODISCARD = 1;

const int _ARM_WINAPI_PARTITION_DESKTOP_SDK_AVAILABLE = 1;

const int _CRT_BUILD_DESKTOP_APP = 1;

const int _UCRT_DISABLED_WARNINGS = 4324;

const int _ARGMAX = 100;

const int _TRUNCATE = -1;

const int _CRT_INT_MAX = 2147483647;

const int _CRT_SIZE_MAX = -1;

const String __FILEW__ = 'C';

const int _CRT_FUNCTIONS_REQUIRED = 1;

const int _CRT_HAS_CXX17 = 0;

const int _CRT_HAS_C11 = 0;

const int _CRT_INTERNAL_NONSTDC_NAMES = 1;

const int __STDC_SECURE_LIB__ = 200411;

const int __GOT_SECURE_LIB__ = 200411;

const int __STDC_WANT_SECURE_LIB__ = 1;

const int _SECURECRT_FILL_BUFFER_PATTERN = 254;

const int _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = 0;

const int _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = 0;

const int _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = 1;

const int _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = 0;

const int _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = 0;

const int INT8_MIN = -128;

const int INT16_MIN = -32768;

const int INT32_MIN = -2147483648;

const int INT64_MIN = -9223372036854775808;

const int INT8_MAX = 127;

const int INT16_MAX = 32767;

const int INT32_MAX = 2147483647;

const int INT64_MAX = 9223372036854775807;

const int UINT8_MAX = 255;

const int UINT16_MAX = 65535;

const int UINT32_MAX = 4294967295;

const int UINT64_MAX = -1;

const int INT_LEAST8_MIN = -128;

const int INT_LEAST16_MIN = -32768;

const int INT_LEAST32_MIN = -2147483648;

const int INT_LEAST64_MIN = -9223372036854775808;

const int INT_LEAST8_MAX = 127;

const int INT_LEAST16_MAX = 32767;

const int INT_LEAST32_MAX = 2147483647;

const int INT_LEAST64_MAX = 9223372036854775807;

const int UINT_LEAST8_MAX = 255;

const int UINT_LEAST16_MAX = 65535;

const int UINT_LEAST32_MAX = 4294967295;

const int UINT_LEAST64_MAX = -1;

const int INT_FAST8_MIN = -128;

const int INT_FAST16_MIN = -2147483648;

const int INT_FAST32_MIN = -2147483648;

const int INT_FAST64_MIN = -9223372036854775808;

const int INT_FAST8_MAX = 127;

const int INT_FAST16_MAX = 2147483647;

const int INT_FAST32_MAX = 2147483647;

const int INT_FAST64_MAX = 9223372036854775807;

const int UINT_FAST8_MAX = 255;

const int UINT_FAST16_MAX = 4294967295;

const int UINT_FAST32_MAX = 4294967295;

const int UINT_FAST64_MAX = -1;

const int INTPTR_MIN = -9223372036854775808;

const int INTPTR_MAX = 9223372036854775807;

const int UINTPTR_MAX = -1;

const int INTMAX_MIN = -9223372036854775808;

const int INTMAX_MAX = 9223372036854775807;

const int UINTMAX_MAX = -1;

const int PTRDIFF_MIN = -9223372036854775808;

const int PTRDIFF_MAX = 9223372036854775807;

const int SIZE_MAX = -1;

const int SIG_ATOMIC_MIN = -2147483648;

const int SIG_ATOMIC_MAX = 2147483647;

const int WCHAR_MIN = 0;

const int WCHAR_MAX = 65535;

const int WINT_MIN = 0;

const int WINT_MAX = 65535;

const int __bool_true_false_are_defined = 1;

const int false1 = 0;

const int true1 = 1;

const int LLAMA_FILE_VERSION = 1;

const int LLAMA_FILE_MAGIC = 1734830708;

const int LLAMA_FILE_MAGIC_UNVERSIONED = 1734831468;
