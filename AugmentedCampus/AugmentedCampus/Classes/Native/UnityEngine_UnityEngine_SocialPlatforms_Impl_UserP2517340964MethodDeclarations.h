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

// UnityEngine.SocialPlatforms.Impl.UserProfile
struct UserProfile_t2517340964;
// System.String
struct String_t;
// UnityEngine.Texture2D
struct Texture2D_t2509538522;

#include "codegen/il2cpp-codegen.h"
#include "mscorlib_System_String968488902.h"
#include "UnityEngine_UnityEngine_SocialPlatforms_UserState3192499994.h"
#include "UnityEngine_UnityEngine_Texture2D2509538522.h"

// System.Void UnityEngine.SocialPlatforms.Impl.UserProfile::.ctor()
extern "C"  void UserProfile__ctor_m1280449570 (UserProfile_t2517340964 * __this, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.Void UnityEngine.SocialPlatforms.Impl.UserProfile::.ctor(System.String,System.String,System.Boolean,UnityEngine.SocialPlatforms.UserState,UnityEngine.Texture2D)
extern "C"  void UserProfile__ctor_m2682768015 (UserProfile_t2517340964 * __this, String_t* ___name, String_t* ___id, bool ___friend, int32_t ___state, Texture2D_t2509538522 * ___image, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.String UnityEngine.SocialPlatforms.Impl.UserProfile::ToString()
extern "C"  String_t* UserProfile_ToString_m2563774257 (UserProfile_t2517340964 * __this, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.Void UnityEngine.SocialPlatforms.Impl.UserProfile::SetUserName(System.String)
extern "C"  void UserProfile_SetUserName_m914181770 (UserProfile_t2517340964 * __this, String_t* ___name, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.Void UnityEngine.SocialPlatforms.Impl.UserProfile::SetUserID(System.String)
extern "C"  void UserProfile_SetUserID_m1515238170 (UserProfile_t2517340964 * __this, String_t* ___id, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.Void UnityEngine.SocialPlatforms.Impl.UserProfile::SetImage(UnityEngine.Texture2D)
extern "C"  void UserProfile_SetImage_m1928130753 (UserProfile_t2517340964 * __this, Texture2D_t2509538522 * ___image, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.String UnityEngine.SocialPlatforms.Impl.UserProfile::get_userName()
extern "C"  String_t* UserProfile_get_userName_m3149753764 (UserProfile_t2517340964 * __this, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.String UnityEngine.SocialPlatforms.Impl.UserProfile::get_id()
extern "C"  String_t* UserProfile_get_id_m2095754825 (UserProfile_t2517340964 * __this, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.Boolean UnityEngine.SocialPlatforms.Impl.UserProfile::get_isFriend()
extern "C"  bool UserProfile_get_isFriend_m1712941209 (UserProfile_t2517340964 * __this, const MethodInfo* method) IL2CPP_METHOD_ATTR;
// UnityEngine.SocialPlatforms.UserState UnityEngine.SocialPlatforms.Impl.UserProfile::get_state()
extern "C"  int32_t UserProfile_get_state_m1340538601 (UserProfile_t2517340964 * __this, const MethodInfo* method) IL2CPP_METHOD_ATTR;
