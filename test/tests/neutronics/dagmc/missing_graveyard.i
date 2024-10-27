[Mesh]
  [file]
    type = FileMeshGenerator
    file = ../meshes/tet_cube.e
  []

  allow_renumbering = false
  parallel_type = replicated
[]

[Problem]
  type = OpenMCCellAverageProblem
  cell_level = 0
  temperature_blocks = '1'
  power = 1000.0
  skinner = moab

  ignore_dag_mapping_warning = true

  [Tallies]
    [Mesh]
      type = MeshTally
    []
  []
[]

[UserObjects]
  [moab]
    type = MoabSkinner
    temperature = temp
    temperature_min = 0.0
    temperature_max = 900.0
    n_temperature_bins = 1
  []
[]

[Executioner]
  type = Steady
[]
