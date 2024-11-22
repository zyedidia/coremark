project('coremark', 'c')

srcs = files(
  'core_list_join.c',
  'core_main.c',
  'core_matrix.c',
  'core_state.c',
  'core_util.c',
  'posix/core_portme.c',
)

executable(
  'coremark',
  srcs,
  c_args: ['-DPERFORMANCE_RUN=1', '-DITERATIONS=0', '-DFLAGS_STR=""', '-static-pie'],
  include_directories: include_directories('linux', 'posix', '.'),
)
