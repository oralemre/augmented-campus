#pragma once

#include "il2cpp-config.h"

#ifndef _MSC_VER
# include <alloca.h>
#else
# include <malloc.h>
#endif

#include <stdint.h>

// System.Security.Cryptography.HashAlgorithm
struct HashAlgorithm_t24372250;

#include "mscorlib_System_Security_Cryptography_HashAlgorithm24372250.h"

#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// Mono.Security.Cryptography.MD5SHA1
struct  MD5SHA1_t1066953176  : public HashAlgorithm_t24372250
{
public:
	// System.Security.Cryptography.HashAlgorithm Mono.Security.Cryptography.MD5SHA1::md5
	HashAlgorithm_t24372250 * ___md5_4;
	// System.Security.Cryptography.HashAlgorithm Mono.Security.Cryptography.MD5SHA1::sha
	HashAlgorithm_t24372250 * ___sha_5;
	// System.Boolean Mono.Security.Cryptography.MD5SHA1::hashing
	bool ___hashing_6;

public:
	inline static int32_t get_offset_of_md5_4() { return static_cast<int32_t>(offsetof(MD5SHA1_t1066953176, ___md5_4)); }
	inline HashAlgorithm_t24372250 * get_md5_4() const { return ___md5_4; }
	inline HashAlgorithm_t24372250 ** get_address_of_md5_4() { return &___md5_4; }
	inline void set_md5_4(HashAlgorithm_t24372250 * value)
	{
		___md5_4 = value;
		Il2CppCodeGenWriteBarrier(&___md5_4, value);
	}

	inline static int32_t get_offset_of_sha_5() { return static_cast<int32_t>(offsetof(MD5SHA1_t1066953176, ___sha_5)); }
	inline HashAlgorithm_t24372250 * get_sha_5() const { return ___sha_5; }
	inline HashAlgorithm_t24372250 ** get_address_of_sha_5() { return &___sha_5; }
	inline void set_sha_5(HashAlgorithm_t24372250 * value)
	{
		___sha_5 = value;
		Il2CppCodeGenWriteBarrier(&___sha_5, value);
	}

	inline static int32_t get_offset_of_hashing_6() { return static_cast<int32_t>(offsetof(MD5SHA1_t1066953176, ___hashing_6)); }
	inline bool get_hashing_6() const { return ___hashing_6; }
	inline bool* get_address_of_hashing_6() { return &___hashing_6; }
	inline void set_hashing_6(bool value)
	{
		___hashing_6 = value;
	}
};

#ifdef __clang__
#pragma clang diagnostic pop
#endif
