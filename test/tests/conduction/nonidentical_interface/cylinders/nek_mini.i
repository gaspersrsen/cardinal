[Problem]
  type = NekRSProblem
  casename = 'cylinder'
  synchronization_interval = parent_app

  [FieldTransfers]
    [temp]
      type = NekFieldVariable
      field = temperature
      direction = from_nek
    []
  []
[]

[Mesh]
  type = NekRSMesh
  boundary = '2'
[]

[Executioner]
  type = Transient

  [TimeStepper]
    type = NekTimeStepper
  []
[]

[Postprocessors]
  [max_temp_nek]
    type = NekVolumeExtremeValue
    field = temperature
    value_type = max
  []
  [min_temp_nek]
    type = NekVolumeExtremeValue
    field = temperature
    value_type = min
  []
[]

[Outputs]
  exodus = true
  execute_on = 'final'
[]
