# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECR
  module Types

    # An object representing authorization data for an Amazon ECR registry.
    #
    # @!attribute [rw] authorization_token
    #   A base64-encoded string that contains authorization data for the
    #   specified Amazon ECR registry. When the string is decoded, it is
    #   presented in the format `user:password` for private registry
    #   authentication using `docker login`.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The Unix time in seconds and milliseconds when the authorization
    #   token expires. Authorization tokens are valid for 12 hours.
    #   @return [Time]
    #
    # @!attribute [rw] proxy_endpoint
    #   The registry URL to use for this authorization token in a `docker
    #   login` command. The Amazon ECR registry URL format is
    #   `https://aws_account_id.dkr.ecr.region.amazonaws.com`. For example,
    #   `https://012345678910.dkr.ecr.us-east-1.amazonaws.com`..
    #   @return [String]
    #
    class AuthorizationData < Struct.new(
      :authorization_token,
      :expires_at,
      :proxy_endpoint)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchCheckLayerAvailabilityRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         layer_digests: ["BatchedOperationLayerDigest"], # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   image layers to check. If you do not specify a registry, the default
    #   registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that is associated with the image layers
    #   to check.
    #   @return [String]
    #
    # @!attribute [rw] layer_digests
    #   The digests of the image layers to check.
    #   @return [Array<String>]
    #
    class BatchCheckLayerAvailabilityRequest < Struct.new(
      :registry_id,
      :repository_name,
      :layer_digests)
      include Aws::Structure
    end

    # @!attribute [rw] layers
    #   A list of image layer objects corresponding to the image layer
    #   references in the request.
    #   @return [Array<Types::Layer>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::LayerFailure>]
    #
    class BatchCheckLayerAvailabilityResponse < Struct.new(
      :layers,
      :failures)
      include Aws::Structure
    end

    # Deletes specified images within a specified repository. Images are
    # specified with either the `imageTag` or `imageDigest`.
    #
    # @note When making an API call, you may pass BatchDeleteImageRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         image_ids: [ # required
    #           {
    #             image_digest: "ImageDigest",
    #             image_tag: "ImageTag",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   image to delete. If you do not specify a registry, the default
    #   registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository that contains the image to delete.
    #   @return [String]
    #
    # @!attribute [rw] image_ids
    #   A list of image ID references that correspond to images to delete.
    #   The format of the `imageIds` reference is `imageTag=tag` or
    #   `imageDigest=digest`.
    #   @return [Array<Types::ImageIdentifier>]
    #
    class BatchDeleteImageRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_ids)
      include Aws::Structure
    end

    # @!attribute [rw] image_ids
    #   The image IDs of the deleted images.
    #   @return [Array<Types::ImageIdentifier>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::ImageFailure>]
    #
    class BatchDeleteImageResponse < Struct.new(
      :image_ids,
      :failures)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetImageRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         image_ids: [ # required
    #           {
    #             image_digest: "ImageDigest",
    #             image_tag: "ImageTag",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   images to describe. If you do not specify a registry, the default
    #   registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository that contains the images to describe.
    #   @return [String]
    #
    # @!attribute [rw] image_ids
    #   A list of image ID references that correspond to images to describe.
    #   The format of the `imageIds` reference is `imageTag=tag` or
    #   `imageDigest=digest`.
    #   @return [Array<Types::ImageIdentifier>]
    #
    class BatchGetImageRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_ids)
      include Aws::Structure
    end

    # @!attribute [rw] images
    #   A list of image objects corresponding to the image references in the
    #   request.
    #   @return [Array<Types::Image>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::ImageFailure>]
    #
    class BatchGetImageResponse < Struct.new(
      :images,
      :failures)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CompleteLayerUploadRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         upload_id: "UploadId", # required
    #         layer_digests: ["LayerDigest"], # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry to which to upload
    #   layers. If you do not specify a registry, the default registry is
    #   assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to associate with the image layer.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID from a previous InitiateLayerUpload operation to
    #   associate with the image layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_digests
    #   The `sha256` digest of the image layer.
    #   @return [Array<String>]
    #
    class CompleteLayerUploadRequest < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :layer_digests)
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID associated with the layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_digest
    #   The `sha256` digest of the image layer.
    #   @return [String]
    #
    class CompleteLayerUploadResponse < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :layer_digest)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name to use for the repository. The repository name may be
    #   specified on its own (such as `nginx-web-app`) or it can be
    #   prepended with a namespace to group the repository into a category
    #   (such as `project-a/nginx-web-app`).
    #   @return [String]
    #
    class CreateRepositoryRequest < Struct.new(
      :repository_name)
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   The repository that was created.
    #   @return [Types::Repository]
    #
    class CreateRepositoryResponse < Struct.new(
      :repository)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRepositoryPolicyRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository policy to delete. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that is associated with the repository
    #   policy to delete.
    #   @return [String]
    #
    class DeleteRepositoryPolicyRequest < Struct.new(
      :registry_id,
      :repository_name)
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The JSON repository policy that was deleted from the repository.
    #   @return [String]
    #
    class DeleteRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository to delete. If you do not specify a registry, the default
    #   registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to delete.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Force the deletion of the repository if it contains images.
    #   @return [Boolean]
    #
    class DeleteRepositoryRequest < Struct.new(
      :registry_id,
      :repository_name,
      :force)
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   The repository that was deleted.
    #   @return [Types::Repository]
    #
    class DeleteRepositoryResponse < Struct.new(
      :repository)
      include Aws::Structure
    end

    # An object representing a filter on a DescribeImages operation.
    #
    # @note When making an API call, you may pass DescribeImagesFilter
    #   data as a hash:
    #
    #       {
    #         tag_status: "TAGGED", # accepts TAGGED, UNTAGGED
    #       }
    #
    # @!attribute [rw] tag_status
    #   The tag status with which to filter your DescribeImages results. You
    #   can filter results based on whether they are `TAGGED` or `UNTAGGED`.
    #   @return [String]
    #
    class DescribeImagesFilter < Struct.new(
      :tag_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeImagesRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         image_ids: [
    #           {
    #             image_digest: "ImageDigest",
    #             image_tag: "ImageTag",
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filter: {
    #           tag_status: "TAGGED", # accepts TAGGED, UNTAGGED
    #         },
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository in which to list images. If you do not specify a
    #   registry, the default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   A list of repositories to describe. If this parameter is omitted,
    #   then all repositories in a registry are described.
    #   @return [String]
    #
    # @!attribute [rw] image_ids
    #   The list of image IDs for the requested repository.
    #   @return [Array<Types::ImageIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeImages` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   This value is `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of repository results returned by
    #   `DescribeImages` in paginated output. When this parameter is used,
    #   `DescribeImages` only returns `maxResults` results in a single page
    #   along with a `nextToken` response element. The remaining results of
    #   the initial request can be seen by sending another `DescribeImages`
    #   request with the returned `nextToken` value. This value can be
    #   between 1 and 100. If this parameter is not used, then
    #   `DescribeImages` returns up to 100 results and a `nextToken` value,
    #   if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   The filter key and value with which to filter your `DescribeImages`
    #   results.
    #   @return [Types::DescribeImagesFilter]
    #
    class DescribeImagesRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      :next_token,
      :max_results,
      :filter)
      include Aws::Structure
    end

    # @!attribute [rw] image_details
    #   A list of ImageDetail objects that contain data about the image.
    #   @return [Array<Types::ImageDetail>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `DescribeImages`
    #   request. When the results of a `DescribeImages` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    class DescribeImagesResponse < Struct.new(
      :image_details,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRepositoriesRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_names: ["RepositoryName"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repositories to be described. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_names
    #   A list of repositories to describe. If this parameter is omitted,
    #   then all repositories in a registry are described.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeRepositories` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to
    #   return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of repository results returned by
    #   `DescribeRepositories` in paginated output. When this parameter is
    #   used, `DescribeRepositories` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `DescribeRepositories` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `DescribeRepositories` returns up to 100 results and a
    #   `nextToken` value, if applicable.
    #   @return [Integer]
    #
    class DescribeRepositoriesRequest < Struct.new(
      :registry_id,
      :repository_names,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] repositories
    #   A list of repository objects corresponding to valid repositories.
    #   @return [Array<Types::Repository>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `DescribeRepositories`
    #   request. When the results of a `DescribeRepositories` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    class DescribeRepositoriesResponse < Struct.new(
      :repositories,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAuthorizationTokenRequest
    #   data as a hash:
    #
    #       {
    #         registry_ids: ["RegistryId"],
    #       }
    #
    # @!attribute [rw] registry_ids
    #   A list of AWS account IDs that are associated with the registries
    #   for which to get authorization tokens. If you do not specify a
    #   registry, the default registry is assumed.
    #   @return [Array<String>]
    #
    class GetAuthorizationTokenRequest < Struct.new(
      :registry_ids)
      include Aws::Structure
    end

    # @!attribute [rw] authorization_data
    #   A list of authorization token data objects that correspond to the
    #   `registryIds` values in the request.
    #   @return [Array<Types::AuthorizationData>]
    #
    class GetAuthorizationTokenResponse < Struct.new(
      :authorization_data)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDownloadUrlForLayerRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         layer_digest: "LayerDigest", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   image layer to download. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that is associated with the image layer
    #   to download.
    #   @return [String]
    #
    # @!attribute [rw] layer_digest
    #   The digest of the image layer to download.
    #   @return [String]
    #
    class GetDownloadUrlForLayerRequest < Struct.new(
      :registry_id,
      :repository_name,
      :layer_digest)
      include Aws::Structure
    end

    # @!attribute [rw] download_url
    #   The pre-signed Amazon S3 download URL for the requested layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_digest
    #   The digest of the image layer to download.
    #   @return [String]
    #
    class GetDownloadUrlForLayerResponse < Struct.new(
      :download_url,
      :layer_digest)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRepositoryPolicyRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository. If you do not specify a registry, the default registry
    #   is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository whose policy you want to retrieve.
    #   @return [String]
    #
    class GetRepositoryPolicyRequest < Struct.new(
      :registry_id,
      :repository_name)
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The JSON repository policy text associated with the repository.
    #   @return [String]
    #
    class GetRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text)
      include Aws::Structure
    end

    # An object representing an Amazon ECR image.
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry containing the
    #   image.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository associated with the image.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   An object containing the image tag and image digest associated with
    #   an image.
    #   @return [Types::ImageIdentifier]
    #
    # @!attribute [rw] image_manifest
    #   The image manifest associated with the image.
    #   @return [String]
    #
    class Image < Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      :image_manifest)
      include Aws::Structure
    end

    # An object that describes an image returned by a DescribeImages
    # operation.
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry to which this image
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to which this image belongs.
    #   @return [String]
    #
    # @!attribute [rw] image_digest
    #   The `sha256` digest of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] image_tags
    #   The list of tags associated with this image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_size_in_bytes
    #   The size, in bytes, of the image in the repository.
    #
    #   <note markdown="1"> Beginning with Docker version 1.9, the Docker client compresses
    #   image layers before pushing them to a V2 Docker registry. The output
    #   of the `docker images` command shows the uncompressed image size, so
    #   it may return a larger image size than the image sizes returned by
    #   DescribeImages.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] image_pushed_at
    #   The date and time, expressed in standard JavaScript date format, at
    #   which the current image was pushed to the repository.
    #   @return [Time]
    #
    class ImageDetail < Struct.new(
      :registry_id,
      :repository_name,
      :image_digest,
      :image_tags,
      :image_size_in_bytes,
      :image_pushed_at)
      include Aws::Structure
    end

    # An object representing an Amazon ECR image failure.
    #
    # @!attribute [rw] image_id
    #   The image ID associated with the failure.
    #   @return [Types::ImageIdentifier]
    #
    # @!attribute [rw] failure_code
    #   The code associated with the failure.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for the failure.
    #   @return [String]
    #
    class ImageFailure < Struct.new(
      :image_id,
      :failure_code,
      :failure_reason)
      include Aws::Structure
    end

    # An object with identifying information for an Amazon ECR image.
    #
    # @note When making an API call, you may pass ImageIdentifier
    #   data as a hash:
    #
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag",
    #       }
    #
    # @!attribute [rw] image_digest
    #   The `sha256` digest of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] image_tag
    #   The tag used for the image.
    #   @return [String]
    #
    class ImageIdentifier < Struct.new(
      :image_digest,
      :image_tag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass InitiateLayerUploadRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that you intend to
    #   upload layers to. If you do not specify a registry, the default
    #   registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that you intend to upload layers to.
    #   @return [String]
    #
    class InitiateLayerUploadRequest < Struct.new(
      :registry_id,
      :repository_name)
      include Aws::Structure
    end

    # @!attribute [rw] upload_id
    #   The upload ID for the layer upload. This parameter is passed to
    #   further UploadLayerPart and CompleteLayerUpload operations.
    #   @return [String]
    #
    # @!attribute [rw] part_size
    #   The size, in bytes, that Amazon ECR expects future layer part
    #   uploads to be.
    #   @return [Integer]
    #
    class InitiateLayerUploadResponse < Struct.new(
      :upload_id,
      :part_size)
      include Aws::Structure
    end

    # An object representing an Amazon ECR image layer.
    #
    # @!attribute [rw] layer_digest
    #   The `sha256` digest of the image layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_availability
    #   The availability status of the image layer. Valid values are
    #   `AVAILABLE` and `UNAVAILABLE`.
    #   @return [String]
    #
    # @!attribute [rw] layer_size
    #   The size, in bytes, of the image layer.
    #   @return [Integer]
    #
    class Layer < Struct.new(
      :layer_digest,
      :layer_availability,
      :layer_size)
      include Aws::Structure
    end

    # An object representing an Amazon ECR image layer failure.
    #
    # @!attribute [rw] layer_digest
    #   The layer digest associated with the failure.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code associated with the failure.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for the failure.
    #   @return [String]
    #
    class LayerFailure < Struct.new(
      :layer_digest,
      :failure_code,
      :failure_reason)
      include Aws::Structure
    end

    # An object representing a filter on a ListImages operation.
    #
    # @note When making an API call, you may pass ListImagesFilter
    #   data as a hash:
    #
    #       {
    #         tag_status: "TAGGED", # accepts TAGGED, UNTAGGED
    #       }
    #
    # @!attribute [rw] tag_status
    #   The tag status with which to filter your ListImages results. You can
    #   filter results based on whether they are `TAGGED` or `UNTAGGED`.
    #   @return [String]
    #
    class ListImagesFilter < Struct.new(
      :tag_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImagesRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filter: {
    #           tag_status: "TAGGED", # accepts TAGGED, UNTAGGED
    #         },
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository to list images in. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository whose image IDs are to be listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListImages` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   This value is `null` when there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of image results returned by `ListImages` in
    #   paginated output. When this parameter is used, `ListImages` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListImages` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListImages` returns up to 100
    #   results and a `nextToken` value, if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   The filter key and value with which to filter your `ListImages`
    #   results.
    #   @return [Types::ListImagesFilter]
    #
    class ListImagesRequest < Struct.new(
      :registry_id,
      :repository_name,
      :next_token,
      :max_results,
      :filter)
      include Aws::Structure
    end

    # @!attribute [rw] image_ids
    #   The list of image IDs for the requested repository.
    #   @return [Array<Types::ImageIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListImages` request.
    #   When the results of a `ListImages` request exceed `maxResults`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    class ListImagesResponse < Struct.new(
      :image_ids,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutImageRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         image_manifest: "ImageManifest", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository in which to put the image. If you do not specify a
    #   registry, the default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository in which to put the image.
    #   @return [String]
    #
    # @!attribute [rw] image_manifest
    #   The image manifest corresponding to the image to be uploaded.
    #   @return [String]
    #
    class PutImageRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_manifest)
      include Aws::Structure
    end

    # @!attribute [rw] image
    #   Details of the image uploaded.
    #   @return [Types::Image]
    #
    class PutImageResponse < Struct.new(
      :image)
      include Aws::Structure
    end

    # An object representing a repository.
    #
    # @!attribute [rw] repository_arn
    #   The Amazon Resource Name (ARN) that identifies the repository. The
    #   ARN contains the `arn:aws:ecr` namespace, followed by the region of
    #   the repository, the AWS account ID of the repository owner, the
    #   repository namespace, and then the repository name. For example,
    #   `arn:aws:ecr:region:012345678910:repository/test`.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_uri
    #   The URI for the repository. You can use this URI for Docker `push`
    #   and `pull` operations.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time, in JavaScript date/time format, when the
    #   repository was created.
    #   @return [Time]
    #
    class Repository < Struct.new(
      :repository_arn,
      :registry_id,
      :repository_name,
      :repository_uri,
      :created_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetRepositoryPolicyRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         policy_text: "RepositoryPolicyText", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository. If you do not specify a registry, the default registry
    #   is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to receive the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The JSON repository policy text to apply to the repository.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   If the policy you are attempting to set on a repository policy would
    #   prevent you from setting another policy in the future, you must
    #   force the SetRepositoryPolicy operation. This is intended to prevent
    #   accidental repository lock outs.
    #   @return [Boolean]
    #
    class SetRepositoryPolicyRequest < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text,
      :force)
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The JSON repository policy text applied to the repository.
    #   @return [String]
    #
    class SetRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UploadLayerPartRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         upload_id: "UploadId", # required
    #         part_first_byte: 1, # required
    #         part_last_byte: 1, # required
    #         layer_part_blob: "data", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that you are
    #   uploading layer parts to. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that you are uploading layer parts to.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID from a previous InitiateLayerUpload operation to
    #   associate with the layer part upload.
    #   @return [String]
    #
    # @!attribute [rw] part_first_byte
    #   The integer value of the first byte of the layer part.
    #   @return [Integer]
    #
    # @!attribute [rw] part_last_byte
    #   The integer value of the last byte of the layer part.
    #   @return [Integer]
    #
    # @!attribute [rw] layer_part_blob
    #   The base64-encoded layer part payload.
    #   @return [String]
    #
    class UploadLayerPartRequest < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :part_first_byte,
      :part_last_byte,
      :layer_part_blob)
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] last_byte_received
    #   The integer value of the last byte received in the request.
    #   @return [Integer]
    #
    class UploadLayerPartResponse < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :last_byte_received)
      include Aws::Structure
    end

  end
end