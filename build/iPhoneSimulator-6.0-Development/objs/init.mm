extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_4328746138CA442C88E37D78D82F5A2F(void *, void *);
void MREP_6560AA883DB843E98B8FD637FCDB1FC7(void *, void *);
void MREP_75864869A5384E2E956B755D25D509C5(void *, void *);
void MREP_41613F11807545A69A6991BADEB834EC(void *, void *);
void MREP_172CDB1FD01F41BF9B1E3BC541663830(void *, void *);
void MREP_5ABA30E315824DDFA36B178452CA865B(void *, void *);
void MREP_B3C9C8F18D364CF498ACFE2FE9F6A250(void *, void *);
void MREP_328DA01CD6EF4594A9B30702AC343B0E(void *, void *);
void MREP_C9B5D84ACF084C7FBF33E79D76606BD2(void *, void *);
void MREP_A35F8EC9F2BA475BA4E7ABA8F0164BA2(void *, void *);
void MREP_3D374B19026D4EFF9E6A5FAA1CBAA62F(void *, void *);
void MREP_18B296DA2C8D417BAF8D9DB98186578A(void *, void *);
void MREP_59B199BDA1144674BB3A1C7C66A0BC22(void *, void *);
void MREP_5FDECDB9BFCC419195CA6E7ED29F0CA7(void *, void *);
void MREP_61D220F50280445590FAD19FEE4699F3(void *, void *);
void MREP_D338DA02D1B941A0B887F8B185545F99(void *, void *);
void MREP_1D91790F071B4E1AB25F96CBA3773FBD(void *, void *);
void MREP_50A14084BF044E8A95B207510F82F201(void *, void *);
void MREP_908B56F2C6E44B228D53F241F78BDFE0(void *, void *);
void MREP_58E39B75328D49669EF853729BF2F3BE(void *, void *);
void MREP_2E36208EA7DB46298E54551FD380D955(void *, void *);
void MREP_A7BC4823C8EB4C4E9D8DE9FF9D26A03D(void *, void *);
void MREP_359167FF91D842ECA2997E58F551F957(void *, void *);
void MREP_7B577CCCC147482785DBC21D5EFBFAFE(void *, void *);
void MREP_E9C10E7FEE464FEDBC70DAB45550CB8B(void *, void *);
void MREP_7C6A8F03BEC94CF0BF162960370C3361(void *, void *);
void MREP_DA9660197B8A4A3688FA063976FF0ED9(void *, void *);
void MREP_C44F526EB8754B7C8241B2153E8ADAC2(void *, void *);
void MREP_38273727A4244E12942A96995D8C7996(void *, void *);
void MREP_CEE979FF21FC43C486521AF09E2B21C5(void *, void *);
void MREP_F75394BBCDB0416882F9C4E2283050FA(void *, void *);
void MREP_A8B4842194D840F6A9281A46670C569D(void *, void *);
void MREP_BFFAA2B69DE0423EACFBA89F9CEB2B8C(void *, void *);
void MREP_0E406203EA044C839D83B45F199BF95F(void *, void *);
void MREP_E809C9B86DE84D9C9C209A1C3EB1A63F(void *, void *);
void MREP_9DAEE5591A45499C92C8047D16C2D922(void *, void *);
void MREP_099742A858D5485B87E3413B7A26B96C(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
#if !__LP64__
	try {
#endif
	    void *self = rb_vm_top_self();
MREP_4328746138CA442C88E37D78D82F5A2F(self, 0);
MREP_6560AA883DB843E98B8FD637FCDB1FC7(self, 0);
MREP_75864869A5384E2E956B755D25D509C5(self, 0);
MREP_41613F11807545A69A6991BADEB834EC(self, 0);
MREP_172CDB1FD01F41BF9B1E3BC541663830(self, 0);
MREP_5ABA30E315824DDFA36B178452CA865B(self, 0);
MREP_B3C9C8F18D364CF498ACFE2FE9F6A250(self, 0);
MREP_328DA01CD6EF4594A9B30702AC343B0E(self, 0);
MREP_C9B5D84ACF084C7FBF33E79D76606BD2(self, 0);
MREP_A35F8EC9F2BA475BA4E7ABA8F0164BA2(self, 0);
MREP_3D374B19026D4EFF9E6A5FAA1CBAA62F(self, 0);
MREP_18B296DA2C8D417BAF8D9DB98186578A(self, 0);
MREP_59B199BDA1144674BB3A1C7C66A0BC22(self, 0);
MREP_5FDECDB9BFCC419195CA6E7ED29F0CA7(self, 0);
MREP_61D220F50280445590FAD19FEE4699F3(self, 0);
MREP_D338DA02D1B941A0B887F8B185545F99(self, 0);
MREP_1D91790F071B4E1AB25F96CBA3773FBD(self, 0);
MREP_50A14084BF044E8A95B207510F82F201(self, 0);
MREP_908B56F2C6E44B228D53F241F78BDFE0(self, 0);
MREP_58E39B75328D49669EF853729BF2F3BE(self, 0);
MREP_2E36208EA7DB46298E54551FD380D955(self, 0);
MREP_A7BC4823C8EB4C4E9D8DE9FF9D26A03D(self, 0);
MREP_359167FF91D842ECA2997E58F551F957(self, 0);
MREP_7B577CCCC147482785DBC21D5EFBFAFE(self, 0);
MREP_E9C10E7FEE464FEDBC70DAB45550CB8B(self, 0);
MREP_7C6A8F03BEC94CF0BF162960370C3361(self, 0);
MREP_DA9660197B8A4A3688FA063976FF0ED9(self, 0);
MREP_C44F526EB8754B7C8241B2153E8ADAC2(self, 0);
MREP_38273727A4244E12942A96995D8C7996(self, 0);
MREP_CEE979FF21FC43C486521AF09E2B21C5(self, 0);
MREP_F75394BBCDB0416882F9C4E2283050FA(self, 0);
MREP_A8B4842194D840F6A9281A46670C569D(self, 0);
MREP_BFFAA2B69DE0423EACFBA89F9CEB2B8C(self, 0);
MREP_0E406203EA044C839D83B45F199BF95F(self, 0);
MREP_E809C9B86DE84D9C9C209A1C3EB1A63F(self, 0);
MREP_9DAEE5591A45499C92C8047D16C2D922(self, 0);
MREP_099742A858D5485B87E3413B7A26B96C(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
