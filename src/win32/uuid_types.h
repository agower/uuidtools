/* src/uuid_types.h.  Generated from uuid_types.h.in by configure.  */
/* 
 * If linux/types.h is already been included, assume it has defined
 * everything we need.  (cross fingers)  Other header files may have 
 * also defined the types that we need.
 */
#if (!defined(_STDINT_H) && !defined(_UUID_STDINT_H))
#define _UUID_STDINT_H

typedef unsigned char uint8_t;
typedef signed char int8_t;

#if (@SIZEOF_INT@ == 8)
typedef int		int64_t;
typedef unsigned int	uint64_t;
#elif (@SIZEOF_LONG@ == 8)
typedef long		int64_t;
typedef unsigned long	uint64_t;
#elif (@SIZEOF_LONG_LONG@ == 8)
#if defined(__GNUC__)
typedef __signed__ long long 	int64_t;
#else
typedef signed long long 	int64_t;
#endif
typedef unsigned long long	uint64_t;
#endif

#if (@SIZEOF_INT@ == 2)
typedef	int		int16_t;
typedef	unsigned int	uint16_t;
#elif (@SIZEOF_SHORT@ == 2)
typedef	short		int16_t;
typedef	unsigned short	uint16_t;
#else
  ?==error: undefined 16 bit type
#endif

#if (@SIZEOF_INT@ == 4)
typedef	int		int32_t;
typedef	unsigned int	uint32_t;
#elif (@SIZEOF_LONG@ == 4)
typedef	long		int32_t;
typedef	unsigned long	uint32_t;
#elif (@SIZEOF_SHORT@ == 4)
typedef	short		int32_t;
typedef	unsigned short	uint32_t;
#else
 ?== error: undefined 32 bit type
#endif

#endif
