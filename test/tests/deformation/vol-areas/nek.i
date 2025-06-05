[Mesh]
  type = NekRSMesh
  order = SECOND
  volume = true
  parallel_type = replicated
  displacements = 'disp_x disp_y disp_z'
[]

[Problem]
  type = NekRSProblem
  casename = 'nekbox'

  [FieldTransfers]
    [temp]
      type = NekFieldVariable
      field = temperature
      direction = from_nek
    []
  []
[]

[Executioner]
  type = Transient
  [TimeStepper]
    type = NekTimeStepper
  []
  [Quadrature]
    type = GAUSS_LOBATTO
    order = SECOND
  []
[]

[Postprocessors]
  [nekbdry_icar1]
    type = AreaPostprocessor
    boundary = '1'
    use_displaced_mesh = true
    execute_on = INITIAL
  []
  [nekbdry_ar1]
    type = AreaPostprocessor
    boundary = '1'
    use_displaced_mesh = true
  []
  [nekbdry_ar2]
    type = AreaPostprocessor
    boundary = '2'
    use_displaced_mesh = true
  []
  [nekbdry_ar3]
    type = AreaPostprocessor
    boundary = '3'
    use_displaced_mesh = true
  []
  [nekbdry_ar4]
    type = AreaPostprocessor
    boundary = '4'
    use_displaced_mesh = true
  []
  [nekbdry_ar5]
    type = AreaPostprocessor
    boundary = '5'
    use_displaced_mesh = true
  []
  [nekbdry_ar6]
    type = AreaPostprocessor
    boundary = '6'
    use_displaced_mesh = true
  []
[]

[Outputs]
  csv = true
  execute_on = 'final'

  # uncomment the temp_ansol to see that the solution matches very well
  hide = 'source_integral heat_source'
[]

