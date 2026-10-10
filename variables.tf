variable "bedrockagentcore_harnesses" {
  description = <<EOT
Map of bedrockagentcore_harnesses, attributes below
Required:
    - execution_role_arn
    - harness_name
Optional:
    - allowed_tools
    - environment_variables
    - max_iterations
    - max_tokens
    - region
    - tags
    - timeout_seconds
    - authorizer_configuration (block):
        - custom_jwt_authorizer (optional, block):
            - allowed_audience (optional)
            - allowed_clients (optional)
            - allowed_scopes (optional)
            - allowed_workload_configuration (optional, block):
                - hosting_environment (optional, block):
                    - arn (required)
                - workload_identities (optional)
            - custom_claim (optional, block):
                - authorizing_claim_match_value (optional, block):
                    - claim_match_operator (required)
                    - claim_match_value (optional, block):
                        - match_value_string (optional)
                        - match_value_string_list (optional)
                - inbound_token_claim_name (required)
                - inbound_token_claim_value_type (required)
            - discovery_url (required)
            - private_endpoint (optional, block):
                - managed_vpc_resource (optional, block):
                    - endpoint_ip_address_type (required)
                    - routing_domain (optional)
                    - security_group_ids (optional)
                    - subnet_ids (required)
                    - tags (optional)
                    - vpc_identifier (required)
                - self_managed_lattice_resource (optional, block):
                    - resource_configuration_identifier (required)
            - private_endpoint_overrides (optional, block):
                - domain (required)
                - private_endpoint (optional, block):
                    - managed_vpc_resource (optional, block):
                        - endpoint_ip_address_type (required)
                        - routing_domain (optional)
                        - security_group_ids (optional)
                        - subnet_ids (required)
                        - tags (optional)
                        - vpc_identifier (required)
                    - self_managed_lattice_resource (optional, block):
                        - resource_configuration_identifier (required)
    - environment (block):
        - agentcore_runtime_environment (optional, block):
            - agent_runtime_arn (optional)
            - agent_runtime_id (optional)
            - agent_runtime_name (optional)
            - filesystem_configuration (optional, block):
                - efs_access_point (optional, block):
                    - access_point_arn (optional)
                    - mount_path (optional)
                - s3_files_access_point (optional, block):
                    - access_point_arn (optional)
                    - mount_path (optional)
                - session_storage (optional, block):
                    - mount_path (optional)
            - lifecycle_configuration (optional, block):
                - idle_runtime_session_timeout (optional)
                - max_lifetime (optional)
            - network_configuration (optional, block):
                - network_mode (optional)
                - network_mode_config (optional, block):
                    - require_service_s3_endpoint (optional)
                    - security_groups (optional)
                    - subnets (optional)
    - environment_artifact (block):
        - container_configuration (optional, block):
            - container_uri (required)
    - memory (block):
        - agentcore_memory_configuration (optional, block):
            - actor_id (optional)
            - arn (required)
            - messages_count (optional)
            - retrieval_config (optional, block):
                - map_block_key (required)
                - relevance_score (optional)
                - strategy_id (optional)
                - top_k (optional)
    - model (block):
        - bedrock_model_config (optional, block):
            - max_tokens (optional)
            - model_id (required)
            - temperature (optional)
            - top_p (optional)
        - gemini_model_config (optional, block):
            - api_key_arn (required)
            - max_tokens (optional)
            - model_id (required)
            - temperature (optional)
            - top_k (optional)
            - top_p (optional)
        - openai_model_config (optional, block):
            - api_key_arn (required)
            - max_tokens (optional)
            - model_id (required)
            - temperature (optional)
            - top_p (optional)
    - skill (block):
        - path (required)
    - system_prompt (block):
        - text (required)
    - tool (block):
        - config (optional, block):
            - agentcore_browser (optional, block):
                - browser_arn (optional)
            - agentcore_code_interpreter (optional, block):
                - code_interpreter_arn (optional)
            - agentcore_gateway (optional, block):
                - gateway_arn (required)
                - outbound_auth (optional, block):
                    - aws_iam (optional)
                    - none (optional)
                    - oauth (optional, block):
                        - custom_parameters (optional)
                        - default_return_url (optional)
                        - grant_type (optional)
                        - provider_arn (required)
                        - scopes (required)
            - inline_function (optional, block):
                - description (required)
                - input_schema (required)
            - remote_mcp (optional, block):
                - headers (optional)
                - url (required)
        - name (optional)
        - type (required)
    - truncation (block):
        - config (optional, block):
            - sliding_window (optional, block):
                - messages_count (optional)
            - summarization (optional, block):
                - preserve_recent_messages (optional)
                - summarization_system_prompt (optional)
                - summary_ratio (optional)
        - strategy (optional)
EOT

  type = map(object({
    execution_role_arn    = string
    harness_name          = string
    allowed_tools         = optional(list(string))
    environment_variables = optional(map(string))
    max_iterations        = optional(number)
    max_tokens            = optional(number)
    region                = optional(string)
    tags                  = optional(map(string))
    timeout_seconds       = optional(number)
    authorizer_configuration = optional(list(object({
      custom_jwt_authorizer = optional(list(object({
        allowed_audience = optional(set(string))
        allowed_clients  = optional(set(string))
        allowed_scopes   = optional(set(string))
        allowed_workload_configuration = optional(list(object({
          hosting_environment = optional(list(object({
            arn = string
          })))
          workload_identities = optional(list(string))
        })))
        custom_claim = optional(list(object({
          authorizing_claim_match_value = optional(list(object({
            claim_match_operator = string
            claim_match_value = optional(list(object({
              match_value_string      = optional(string)
              match_value_string_list = optional(set(string))
            })))
          })))
          inbound_token_claim_name       = string
          inbound_token_claim_value_type = string
        })))
        discovery_url = string
        private_endpoint = optional(list(object({
          managed_vpc_resource = optional(list(object({
            endpoint_ip_address_type = string
            routing_domain           = optional(string)
            security_group_ids       = optional(set(string))
            subnet_ids               = set(string)
            tags                     = optional(map(string))
            vpc_identifier           = string
          })))
          self_managed_lattice_resource = optional(list(object({
            resource_configuration_identifier = string
          })))
        })))
        private_endpoint_overrides = optional(list(object({
          domain = string
          private_endpoint = optional(list(object({
            managed_vpc_resource = optional(list(object({
              endpoint_ip_address_type = string
              routing_domain           = optional(string)
              security_group_ids       = optional(set(string))
              subnet_ids               = set(string)
              tags                     = optional(map(string))
              vpc_identifier           = string
            })))
            self_managed_lattice_resource = optional(list(object({
              resource_configuration_identifier = string
            })))
          })))
        })))
      })))
    })))
    environment = optional(list(object({
      agentcore_runtime_environment = optional(list(object({
        agent_runtime_arn  = optional(string)
        agent_runtime_id   = optional(string)
        agent_runtime_name = optional(string)
        filesystem_configuration = optional(list(object({
          efs_access_point = optional(list(object({
            access_point_arn = optional(string)
            mount_path       = optional(string)
          })))
          s3_files_access_point = optional(list(object({
            access_point_arn = optional(string)
            mount_path       = optional(string)
          })))
          session_storage = optional(list(object({
            mount_path = optional(string)
          })))
        })))
        lifecycle_configuration = optional(list(object({
          idle_runtime_session_timeout = optional(number)
          max_lifetime                 = optional(number)
        })))
        network_configuration = optional(list(object({
          network_mode = optional(string)
          network_mode_config = optional(list(object({
            require_service_s3_endpoint = optional(bool)
            security_groups             = optional(set(string))
            subnets                     = optional(set(string))
          })))
        })))
      })))
    })))
    environment_artifact = optional(list(object({
      container_configuration = optional(list(object({
        container_uri = string
      })))
    })))
    memory = optional(list(object({
      agentcore_memory_configuration = optional(list(object({
        actor_id       = optional(string)
        arn            = string
        messages_count = optional(number)
        retrieval_config = optional(list(object({
          map_block_key   = string
          relevance_score = optional(number)
          strategy_id     = optional(string)
          top_k           = optional(number)
        })))
      })))
    })))
    model = optional(list(object({
      bedrock_model_config = optional(list(object({
        max_tokens  = optional(number)
        model_id    = string
        temperature = optional(number)
        top_p       = optional(number)
      })))
      gemini_model_config = optional(list(object({
        api_key_arn = string
        max_tokens  = optional(number)
        model_id    = string
        temperature = optional(number)
        top_k       = optional(number)
        top_p       = optional(number)
      })))
      openai_model_config = optional(list(object({
        api_key_arn = string
        max_tokens  = optional(number)
        model_id    = string
        temperature = optional(number)
        top_p       = optional(number)
      })))
    })))
    skill = optional(list(object({
      path = string
    })))
    system_prompt = optional(list(object({
      text = string
    })))
    tool = optional(list(object({
      config = optional(list(object({
        agentcore_browser = optional(list(object({
          browser_arn = optional(string)
        })))
        agentcore_code_interpreter = optional(list(object({
          code_interpreter_arn = optional(string)
        })))
        agentcore_gateway = optional(list(object({
          gateway_arn = string
          outbound_auth = optional(list(object({
            aws_iam = optional(bool)
            none    = optional(bool)
            oauth = optional(list(object({
              custom_parameters  = optional(map(string))
              default_return_url = optional(string)
              grant_type         = optional(string)
              provider_arn       = string
              scopes             = list(string)
            })))
          })))
        })))
        inline_function = optional(list(object({
          description  = string
          input_schema = string
        })))
        remote_mcp = optional(list(object({
          headers = optional(map(string))
          url     = string
        })))
      })))
      name = optional(string)
      type = string
    })))
    truncation = optional(list(object({
      config = optional(list(object({
        sliding_window = optional(list(object({
          messages_count = optional(number)
        })))
        summarization = optional(list(object({
          preserve_recent_messages    = optional(number)
          summarization_system_prompt = optional(string)
          summary_ratio               = optional(number)
        })))
      })))
      strategy = optional(string)
    })))
  }))
}

