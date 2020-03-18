# IBM AppConnect Enterprise (ACE) Stack

The ACE stack  provides a
powerful solution to build micro integrations based solutions. It is based on IBM ACE product
[ACE](https://www.ibm.com/support/knowledgecenter/SSTTDS_11.0.0/com.ibm.ace.home.doc/help_home.htm).

## Image

The image is based on ACE 11.0.0.6.1 and contains the main code that loads the user integration application and configures
the environment with admin ports, metrics endpoint and http/https services. The project as well create the workspace structure and BARfiles directory based on template application. 

The stack layout is structured as follows:

```
/project/ (main)
  initial-config/ (ACE configuration files)
  workspace/
    BARfiles/ (Bar under stack watching when running this application)
    IntegrationApp/ (IntegrationApp or RestApp - depending of the template)
    ```

## Templates

- `simple`: this template is based on a ACE Application.
  See https://www.ibm.com/support/knowledgecenter/SSTTDS_11.0.0/com.ibm.etools.mft.doc/bc23080_.html for more information.

- `rest`: this template is based on a ACE Rest API project.
  See https://www.ibm.com/support/knowledgecenter/SSTTDS_11.0.0/com.ibm.etools.mft.doc/bz91510_.html for more information.

## Getting Started

1. Create a new folder in your local directory and initialize it using the
   Appsody CLI, e.g.:

   ```bash
   mkdir my-project
   cd my-project
   appsody init ace-stack
   ```

   This will initialize a ACE Project project using the simple template.

2. After your project has been initialized you can then run your application
   using the following command:

   ```bash
   appsody run
   ```

   This launches a Docker container that continuously re-builds and re-runs your
   project as long as you have created new BARs files or change new old ones on BARfiles folder. The container created by `run` will expose ports 7600, 7800, 7843 and 9999 (debug).

   You should now be able to access the following endpoints, as they are exposed by your application by default:

   - Web Admin: http://localhost:7600/
   - Metrics endpoint: http://localhost:9483/metrics


   You can continue to edit the application in your ACE Toolkit changing the exposing ports and paths.


## License

This stack is licensed under the [Apache 2.0](./image/LICENSE) license