#pragma once

#include "il2cpp-config.h"

#ifndef _MSC_VER
# include <alloca.h>
#else
# include <malloc.h>
#endif

#include <stdint.h>
#include <assert.h>
#include <exception>

// System.OrdinalComparer
struct OrdinalComparer_t1058464051;
// System.String
struct String_t;

#include "codegen/il2cpp-codegen.h"
#include "mscorlib_System_String968488902.h"

// System.Void System.OrdinalComparer::.ctor(System.Boolean)
extern "C"  void OrdinalComparer__ctor_m98757386 (OrdinalComparer_t1058464051 * __this, bool ___ignoreCase, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.Int32 System.OrdinalComparer::Compare(System.String,System.String)
extern "C"  int32_t OrdinalComparer_Compare_m2663568516 (OrdinalComparer_t1058464051 * __this, String_t* ___x, String_t* ___y, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.Boolean System.OrdinalComparer::Equals(System.String,System.String)
extern "C"  bool OrdinalComparer_Equals_m4124753260 (OrdinalComparer_t1058464051 * __this, String_t* ___x, String_t* ___y, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.Int32 System.OrdinalComparer::GetHashCode(System.String)
extern "C"  int32_t OrdinalComparer_GetHashCode_m545733148 (OrdinalComparer_t1058464051 * __this, String_t* ___s, const MethodInfo* method) IL2CPP_METHOD_ATTR;
