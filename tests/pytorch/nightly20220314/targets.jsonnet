// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

local cppOperations = import 'cpp-ops.libsonnet';
local fairseqTransformer = import 'fs-transformer.libsonnet';
local resnet50_mp = import 'resnet50-mp.libsonnet';
local resnet50_pod = import 'resnet50-pod.libsonnet';
local fairseqRobertaPretrain = import 'roberta-pre.libsonnet';

// Add new models here
std.flattenArrays([
  cppOperations.configs,
  fairseqRobertaPretrain.configs,
  fairseqTransformer.configs,
  resnet50_mp.configs,
  resnet50_pod.configs,
])