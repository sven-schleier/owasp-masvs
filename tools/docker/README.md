# MASVS PDFs Generation with Docker

The MASVS document generation is based on pandocker: [https://github.com/dalibo/pandocker/blob/latest/LICENSE](https://github.com/dalibo/pandocker/blob/latest/LICENSE).

## On your Machine

- Install Docker
- `cd` to the MASVS root folder `owasp-masvs/`
- Run the following and give a version number (**do not `cd` into `tools/docker` to run it**):

    ```sh
    $ ./tools/docker/pandoc_makedocs.sh Document 1.3
    ```

## On GitHub

Each time you push to GitHub the workflows in the [MASVS GitHub Actions](https://github.com/OWASP/owasp-masvs/actions "MASVS GitHub Actions") will be triggered. You can check what will be executed inside the folder `owasp-masvs/.github/workflows`, where `docgenerator.yml` takes care of building the Docker image and running the generation script once per language inside the container.

See the results in: <https://github.com/OWASP/owasp-masvs/actions>

## Generation Steps

### In case of a new Docker image

- Create a PR with the new changes on the Docker generation scripts.
- Once the PR is approved, create a tag:

  ```sh
    git tag -a docker-<docker-container-image-version> -m "Changeson docker image"
  ```

- Create a new image and push it to docker hub (requires being logged in to Docker hub and Docker hub membership of OWASP organization):

  ```sh
    docker build --tag owasp/masvs-docgenerator:<docker-container-image-version> tools/docker/
    docker images
    #check the output and find the tag of the masvs-generator container image you created
    docker tag <imageid> owasp/masvs-docgenerator:<docker-container-image-version>
    docker push owasp/masvs-docgenerator:<docker-container-image-version>
  ```

- Create a new PR with the new version in the `docgenerator.yml`, `release.yml`, and `run_docker_masvs_generation_on_local.sh`.

### In case of a new document

Given a new version:

- Pull the image from docker hub (`docker pull owasp/masvs-generator:latest`)
- Run Docker container which will run the generation script (`pandoc_makedocs.sh`).
- The script should be self explanatory, it basically:
  - Reads the LANGUAGE-METADATA for the given VERSION and language folder
  - Using that metadata creates the cover dynamically including language and version (no GIMP required anymore!)
  - For the CJK languages it configures the latex-header file using the right packages and fonts.
  - For more details, read the inline comments in `pandoc_makedocs.sh`.
- The PDFs will be generated in the MASVS root folder.

## Open Points (REMOVE from here when DONE!)

Finish items for [https://github.com/OWASP/owasp-masvs/issues/361](https://github.com/OWASP/owasp-masvs/issues/361):
