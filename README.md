
# PoshBot.Wolfram

A simple [PoshBot](https://github.com/devblackops/PoshBot) plugin for asking [WolframAlpha](https://www.wolframalpha.com/) a question.

## Install Module

To install the module from the [PowerShell Gallery](https://www.powershellgallery.com/):

```
PS C:\> Install-Module -Name PoshBot.Wolfram -Repository PSGallery
```

## Install Plugin

To install the plugin from within PoshBot:

```
!install-plugin --name poshbot.wolfram
```

## Commands

- askwolfram

## Configuration

WolframAlpha requires an API key in order to query against their API.
To get an API key, you need to register at [http://products.wolframalpha.com/api/](http://products.wolframalpha.com/api/).
Once you have the API key, edit your [PoshBot configuration file](http://poshbot.readthedocs.io/en/latest/guides/configuration/) and add a new hashtable entry under `PluginConfiguration` for `PoshBot.Wolfram` and restart PoshBot. The plugin will read this configuration item and use the API key when querying the WolframAlpha API.

#### MyPoshBotConfig.psd1

```powershell
@{
  # Other options ommitted for brevity

  PluginConfiguration = @{
    'PoshBot.Wolfram' = @{
      ApiKey = '<my-api-key>'
    }
  }
}
```

## Usage

```
!askwolfram '34th president of the united states'

Dwight D. Eisenhower (from January 20, 1953 to January 20, 1961)
