
          echo "======================================="
          echo docker build -t capgeminidenmark/web-orgsorintegration:${GITHUB_SHA} -f Dockerfile.ext-test .
          echo docker tag capgeminidenmark/web-orgsorintegration:${GITHUB_SHA} capgeminidenmark/web-orgsorintegration:ci-run-${GITHUB_RUN_NUMBER}
          echo docker tag capgeminidenmark/web-orgsorintegration:${GITHUB_SHA} capgeminidenmark/web-orgsorintegration:ci-latest

          echo docker push capgeminidenmark/web-orgsorintegration:ci-latest
          echo docker push capgeminidenmark/web-orgsorintegration:${GITHUB_SHA}
          echo docker push capgeminidenmark/web-orgsorintegration:ci-run-${GITHUB_RUN_NUMBER}
          echo "======================================="
          echo Add other actions to build,
          echo test, and deploy your project.

