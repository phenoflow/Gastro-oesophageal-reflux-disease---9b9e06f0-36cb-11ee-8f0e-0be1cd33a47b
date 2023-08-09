cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  gastrooesophageal-reflux-disease---primary:
    run: gastrooesophageal-reflux-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  gastro-oesophageal-reflux-disease-operation---primary:
    run: gastro-oesophageal-reflux-disease-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: gastrooesophageal-reflux-disease---primary/output
  gastrooesophageal---primary:
    run: gastrooesophageal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: gastro-oesophageal-reflux-disease-operation---primary/output
  gastro-oesophageal-reflux-disease-fundoplication---primary:
    run: gastro-oesophageal-reflux-disease-fundoplication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: gastrooesophageal---primary/output
  thoracic-gastro-oesophageal-reflux-disease---primary:
    run: thoracic-gastro-oesophageal-reflux-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: gastro-oesophageal-reflux-disease-fundoplication---primary/output
  gastro-oesophageal-reflux-disease-procedure---primary:
    run: gastro-oesophageal-reflux-disease-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: thoracic-gastro-oesophageal-reflux-disease---primary/output
  gastroplasty-gastro-oesophageal-reflux-disease---primary:
    run: gastroplasty-gastro-oesophageal-reflux-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: gastro-oesophageal-reflux-disease-procedure---primary/output
  gastro-oesophageal-reflux-disease-revision---primary:
    run: gastro-oesophageal-reflux-disease-revision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: gastroplasty-gastro-oesophageal-reflux-disease---primary/output
  reflux---primary:
    run: reflux---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: gastro-oesophageal-reflux-disease-revision---primary/output
  reflux-gastro-oesophageal---secondary:
    run: reflux-gastro-oesophageal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: reflux---primary/output
  gastro-oesophageal-reflux-disease-operation---secondary:
    run: gastro-oesophageal-reflux-disease-operation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: reflux-gastro-oesophageal---secondary/output
  thoracic-gastro-oesophageal-reflux-disease---secondary:
    run: thoracic-gastro-oesophageal-reflux-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: gastro-oesophageal-reflux-disease-operation---secondary/output
  gastro-oesophageal-reflux-disease-approach---secondary:
    run: gastro-oesophageal-reflux-disease-approach---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: thoracic-gastro-oesophageal-reflux-disease---secondary/output
  gastrooesophageal-reflux-disease---secondary:
    run: gastrooesophageal-reflux-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: gastro-oesophageal-reflux-disease-approach---secondary/output
  gastro-oesophageal-reflux-disease-prosthesis---secondary:
    run: gastro-oesophageal-reflux-disease-prosthesis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: gastrooesophageal-reflux-disease---secondary/output
  gastro-oesophageal-reflux-disease-unspecified---secondary:
    run: gastro-oesophageal-reflux-disease-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: gastro-oesophageal-reflux-disease-prosthesis---secondary/output
  gastro-oesophageal-reflux-disease-revision---secondary:
    run: gastro-oesophageal-reflux-disease-revision---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: gastro-oesophageal-reflux-disease-unspecified---secondary/output
  gastro-oesophageal-reflux-disease-fundoplication---secondary:
    run: gastro-oesophageal-reflux-disease-fundoplication---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: gastro-oesophageal-reflux-disease-revision---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: gastro-oesophageal-reflux-disease-fundoplication---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
