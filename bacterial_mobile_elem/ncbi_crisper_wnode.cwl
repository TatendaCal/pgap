cwlVersion: v1.2
label: "Execute CRISPR, execution"
class: CommandLineTool

#ncbi_crisper_wnode -asn-cache sequence_cache -ncbi-crisper-path /opt/crispr/1.0/bin/ -input-jobs jobs.xml
baseCommand: ncbi_crisper_wnode
arguments: [ -nogenbank ]
inputs:
  asn_cache:
    type: Directory
    inputBinding:
      prefix: -asn-cache
  input_jobs:
    type: File
    inputBinding:
      prefix: -input-jobs
  crisper_path:
    type: string?
    default: /opt/crispr/1.03/bin/
    inputBinding:
      prefix: -ncbi-crisper-path
  output_dir:
    type: string?
    default: output
    inputBinding:
      prefix: -O
outputs:
  outdir:
    type: Directory
    outputBinding:
      glob: $(inputs.output_dir)
  
  
