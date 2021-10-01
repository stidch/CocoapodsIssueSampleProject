# Readme

Sample project for reproducing the potential Cocoapods issue [#10978](https://github.com/CocoaPods/CocoaPods/issues/10978).

## Repositories

The whole project consists of 4 repositories:

- [CocoapodsIssueSampleProject](https://github.com/stidch/CocoapodsIssueSampleProject)
  - contains a `Dummy.podspec` which has the `BinaryPod` and `SourcePod` listed as dependencies.
- [CocoapodsIssueSourcePod](https://github.com/stidch/CocoapodsIssueSourcePod)
  - contains a source pod, resp. is an empty repo with one tag (0.0.1)
- [CocoapodsIssueBinaryPod](https://github.com/stidch/CocoapodsIssueBinaryPod)
  - contains simple (xcframework) binary pod (0.0.1)
- [CocoapodsIssueSpecsRepo](https://github.com/stidch/CocoapodsIssueSpecsRepo)
  contains the pod specs for `CocoapodsIssueSourcePod` (0.0.1) and `CocoapodsIssueBinaryPod` (0.0.1)

## Run

To reproduce the issue run

    pod lib lint --sources=https://github.com/stidch/CocoapodsIssueSpecsRepo.git,https://github.com/CocoaPods/Specs.git --no-clean

If you open the temporary workspace you can successfully build for simulator in debug configuration (CMD+B), but not in release configuration (CMD+SHIFT+I).

More details about the issue are described in the Cocoapods issue ticket [#10978](https://github.com/CocoaPods/CocoaPods/issues/10978).
