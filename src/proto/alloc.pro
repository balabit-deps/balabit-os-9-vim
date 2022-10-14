/* alloc.c */
void vim_mem_profile_dump(void);
int alloc_does_fail(size_t size);
void *alloc(size_t size);
void *alloc_id(size_t size, alloc_id_T id);
void *alloc_clear(size_t size);
void *alloc_clear_id(size_t size, alloc_id_T id);
void *lalloc_clear(size_t size, int message);
void *lalloc(size_t size, int message);
void *lalloc_id(size_t size, int message, alloc_id_T id);
void *mem_realloc(void *ptr, size_t size);
void do_outofmem_msg(size_t size);
void free_all_mem(void);
char_u *vim_memsave(char_u *p, size_t len);
void vim_free(void *x);
void ga_clear(garray_T *gap);
void ga_clear_strings(garray_T *gap);
int ga_copy_strings(garray_T *from, garray_T *to);
void ga_init(garray_T *gap);
void ga_init2(garray_T *gap, int itemsize, int growsize);
int ga_grow(garray_T *gap, int n);
int ga_grow_inner(garray_T *gap, int n);
char_u *ga_concat_strings(garray_T *gap, char *sep);
int ga_add_string(garray_T *gap, char_u *p);
void ga_concat(garray_T *gap, char_u *s);
void ga_concat_len(garray_T *gap, char_u *s, size_t len);
void ga_append(garray_T *gap, int c);
void append_ga_line(garray_T *gap);
/* vim: set ft=c : */
